import 'package:auto_route/auto_route.dart';
import 'package:creatispace/app/payment_form/payment_form_bloc.dart';
import 'package:creatispace/injection.dart';
import 'package:creatispace/pages/items/items_form/item_form_page.dart';
import 'package:creatispace/pages/payment_setup/payment_stepper.dart';
import 'package:creatispace/pages/purchase/payment_form/steps/address_steps.dart';
import 'package:creatispace/pages/purchase/payment_form/steps/card_payment_steps.dart';
import 'package:creatispace/pages/purchase/payment_form/steps/personal_steps.dart';
import 'package:creatispace/pages/routes/router.gr.dart';
import 'package:fa_stepper/fa_stepper.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentFormScaffold extends StatefulWidget {


  // amount: "2", totalCost:23.43, itemId: "1e8ce140-776a-11eb-a446-8770d751280d", peerId: "yFEuYmwD5ZNTeym5piMwKuXzqB52"

  final int amount;
  final double cost;
  final String itemId;
  final String peerId;

  const PaymentFormScaffold({Key key, this.amount, this.cost, this.itemId, this.peerId}) : super(key: key);

  @override
  _PaymentFormScaffoldState createState() => _PaymentFormScaffoldState();
}

class _PaymentFormScaffoldState extends State<PaymentFormScaffold> {

  TextEditingController _line1 = TextEditingController();
  TextEditingController _line2 = TextEditingController();
  TextEditingController _city = TextEditingController();
  TextEditingController _country = TextEditingController();
  TextEditingController _county = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PaymentFormBloc>()
        ..add(PaymentFormEvent.started()),
      child: MultiBlocListener(
          listeners: <BlocListener>[
            BlocListener<PaymentFormBloc, PaymentFormState>(
              listenWhen: (prev, current) =>
              prev.personalFailureOrSuccess != current.personalFailureOrSuccess,
              listener: (context, state) {
                state.personalFailureOrSuccess.fold(
                        () {},
                        (either) => either.fold(
                            (err) => null,
                            (valid) => context.read<PaymentFormBloc>()
                            .add(PaymentFormEvent.stepContinue()))
                );
              },
            ),
            BlocListener<PaymentFormBloc, PaymentFormState>(
              listenWhen: (prev, current) =>
              prev.addressFailureOrSuccess != current.addressFailureOrSuccess,
              listener: (context, state) {
                state.addressFailureOrSuccess.fold(
                        () {},
                        (either) => either.fold(
                            (err) => null,
                            (valid) => context.read<PaymentFormBloc>()
                            .add(PaymentFormEvent.stepContinue()))
                );
              },
            ),
            BlocListener<PaymentFormBloc, PaymentFormState>(
              listenWhen: (prev, current) =>
              prev.addressFindingFailureOrSuccess != current.addressFindingFailureOrSuccess,
              listener: (context, state) {
                state.addressFindingFailureOrSuccess.fold(
                      () {},
                      (either) => either.fold(
                          (l) => null,
                          (address) {
                        setState(() {
                          _line1.text = state.paymentForm.houseNumber.value.getOrElse(() => '') + address[0].thoroughfare;
                          context
                              .read<PaymentFormBloc>()
                              .add(PaymentFormEvent.line1Changed(address[0].thoroughfare));
                          _line2.text = address[0].locality;
                          context
                              .read<PaymentFormBloc>()
                              .add(PaymentFormEvent.line2Changed(address[0].locality));
                          _country.text = address[0].countryName;
                          context
                              .read<PaymentFormBloc>()
                              .add(PaymentFormEvent.countryChanged(address[0].countryName));
                          _county.text = address[0].subAdminArea;
                          context
                              .read<PaymentFormBloc>()
                              .add(PaymentFormEvent.countyChanged(address[0].subAdminArea));
                        });
                      }
                  ),
                );
              },
            ),
          ],
          child:BlocConsumer<PaymentFormBloc, PaymentFormState>(
            listenWhen: (prev, curr) =>
            prev.saveFailureOrSuccessOption != curr.saveFailureOrSuccessOption,
            listener:  (context, state) {
              state.saveFailureOrSuccessOption.fold(
                      () {},
                      (either) => either.fold((failure) {
                    FlushbarHelper.createError(
                        message: failure.maybeMap(
                          unexpected: (_) =>
                          'Unexpected Error occurred, contact support.',
                          errorMakingPayment: (_) => 'Error making payment '
                              'try again later or double check your details',
                          cancelled: (_) => 'Cancelled',
                          orElse: () => null,
                        )
                    ).show(context);
                  }, (Map<String, dynamic> results) =>
                       ExtendedNavigator.of(context).pushAndRemoveUntilPath(Routes.paymentSuccessful, Routes.navigationBar, arguments: PaymentSuccessfulArguments(
                         itemId: results["item_id"].toString(),
                         amount: results["amount"].toString(),
                         address: results["shipping"] as Map<String, dynamic>,
                         quantity: results["quantity"].toString(),
                         peerId: "yFEuYmwD5ZNTeym5piMwKuXzqB52"
                       ))
                  )
              );
            },
            builder: (context, state) {
              return WillPopScope(
                onWillPop: () async {
                  return await confirmationDialog(context, "Cancel Payment", "If you leave this page all data will be lost!");
                },
                child: Stack(
                  children: <Widget>[
                    Scaffold(
                        appBar: AppBar(
                            title: Text("Make Payment"),
                            leading: new IconButton(
                              icon: new Icon(Icons.arrow_back),
                              onPressed: () async {
                                return await confirmationDialog(context, "Cancel Payment Form", "If you leave this page all data will be lost!");
                              },
                            ),
                        ),
                        body: Stepper(
                          currentStep: state.step,
                          type: StepperType.horizontal,
                          steps: [
                            Step(
                              title: Text("Personal"),
                                content: Form(
                                  autovalidateMode: state.showErrorMessagesPersonal,
                                  child: Column(
                                    children: [
                                      PersonalEmailField(),
                                      PersonalFirstNameField(),
                                      PersonalLastNameField(),
                                      PersonalPhoneNumber(mode: state.showErrorMessagesPersonal),
                                    ],
                                  ),
                                ),
                                isActive: state.step == 0 ? true : false,
                                state:  state.step > 0 ? StepState.complete : StepState.indexed,

                            ),
                            Step(
                                title: Text("Address"),
                                content: Form(
                                  autovalidateMode: state.showErrorMessagesAddress,
                                  child: Column(
                                    children: [
                                      AddressHouseNumberField(),
                                      AddressPostcodeField(),
                                      AddressFindAddressButton(),
                                      AddressLineOneField(lineOne: _line1),
                                      AddressLineTwoField(lineTwo: _line2),
                                      AddressCityField(city: _city),
                                      AddressCountryField(country: _country),
                                      AddressCountyField(county: _county,)
                                    ],
                                  ),
                                ),
                              isActive:  state.step == 1 ? true : false,
                              state:  state.step > 1 ? StepState.complete : StepState.indexed,
                            ),
                            Step(
                              title: Text("Payment"),
                              content: CardPaymentStep(amount: widget.amount, totalCost: widget.cost, itemId: widget.itemId, peerId: widget.peerId),
                              isActive:  state.step == 2 ? true : false,
                              state:  state.step > 2 ? StepState.complete : StepState.indexed,
                            ),
                          ],
                          controlsBuilder: (context, {onStepCancel, onStepContinue}) {
                            if(state.step == 0) {
                              return Row(
                                children: <Widget>[
                                  TextButton(
                                    onPressed: onStepContinue,
                                    child: const Text('NEXT'),
                                  ),
                                ],
                              );
                            } else if(state.step == state.maxSteps - 1) {
                              return Row(
                                children: <Widget>[
                                  TextButton(
                                    onPressed: onStepCancel,
                                    child: const Text('Back'),
                                  ),
                                ],
                              );
                            }
                            else {
                              return Row(
                                children: <Widget>[
                                  TextButton(
                                    onPressed: onStepContinue,
                                    child: const Text('Next'),
                                  ),
                                  TextButton(
                                    onPressed: onStepCancel,
                                    child: const Text('Back'),
                                  ),
                                ],
                              );
                            }
                          },
                          onStepCancel: () {
                          context.read<PaymentFormBloc>()
                              .add(PaymentFormEvent.stepCancelled());
                          },
                          onStepContinue: () async {
                            if(state.step == 0) {
                              context.read<PaymentFormBloc>()
                                  .add(PaymentFormEvent.validatePersonalSection());
                            } else if (state.step == 1) {
                              context.read<PaymentFormBloc>()
                                  .add(PaymentFormEvent.validateAddressSection());
                            }
                          },

                        ),
                    ),
                    SavingInProgress(isSaving: state.isSaving, message: 'Processing')
                  ],
                ),
              );
            },
          ),
      ),
    );
  }
}