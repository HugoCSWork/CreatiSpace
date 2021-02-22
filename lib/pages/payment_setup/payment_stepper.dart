import 'package:creatispace/app/payment_setup/payment_setup_bloc.dart';
import 'package:creatispace/injection.dart';
import 'package:creatispace/pages/payment_setup/steps/address_step/address_step.dart';
import 'package:creatispace/pages/payment_setup/steps/passport_step/passport_step.dart';
import 'package:creatispace/pages/payment_setup/steps/payment_step/payment_step.dart';
import 'package:creatispace/pages/payment_setup/steps/personal_step/personal_step.dart';
import 'package:fa_stepper/fa_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentStepper extends StatelessWidget {
  final List<Step> steps;

  const PaymentStepper({Key key, this.steps}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<PaymentSetupBloc>(),
      child: Scaffold(
        appBar: AppBar(title: Text('Stepper test')),
        body: TestWidget(steps: steps)
      ),
    );
  }
}

class TestWidget extends StatefulWidget {
  final List<Step> steps;

  const TestWidget({Key key, this.steps}) : super(key: key);

  @override
  _TestWidgetState createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {

  TextEditingController _line1 = TextEditingController();
  TextEditingController _line2 = TextEditingController();
  TextEditingController _city = TextEditingController();
  TextEditingController _country = TextEditingController();
  TextEditingController _county = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MultiBlocListener(
        listeners: [
          BlocListener<PaymentSetupBloc, PaymentSetupState>(
            listenWhen: (prev, current) =>
            prev.personalFailureOrSuccess != current.personalFailureOrSuccess,
            listener: (context, state) {
              state.personalFailureOrSuccess.fold(
                      () {},
                      (either) => either.fold(
                          (err) => null,
                          (valid) => context.read<PaymentSetupBloc>()
                          .add(PaymentSetupEvent.stepContinue()))
              );
            },
          ),
          BlocListener<PaymentSetupBloc, PaymentSetupState>(
            listenWhen: (prev, current) =>
            prev.addressFailureOrSuccess != current.addressFailureOrSuccess,
            listener: (context, state) {
              state.addressFailureOrSuccess.fold(
                      () {},
                      (either) => either.fold(
                          (err) => null,
                          (valid) => context.read<PaymentSetupBloc>()
                          .add(PaymentSetupEvent.stepContinue()))
              );
            },
          ),
          BlocListener<PaymentSetupBloc, PaymentSetupState>(
            listenWhen: (prev, current) =>
            prev.paymentFailureOrSuccess != current.paymentFailureOrSuccess,
            listener: (context, state) {
              state.paymentFailureOrSuccess.fold(
                      () {},
                      (either) => either.fold(
                          (err) => null,
                          (valid) => context.read<PaymentSetupBloc>()
                              .add(PaymentSetupEvent.stepContinue()))
              );
            },
          ),
          BlocListener<PaymentSetupBloc, PaymentSetupState>(
            listenWhen: (prev, current) =>
            prev.documentFailureOrSuccess != current.documentFailureOrSuccess,
            listener: (context, state) {
              state.documentFailureOrSuccess.fold(
                      () {},
                      (either) => either.fold(
                          (err) => context.read<PaymentSetupBloc>()
                              .add(PaymentSetupEvent.stepContinue()),
                              (valid) => context.read<PaymentSetupBloc>()
                              .add(PaymentSetupEvent.stepContinue()))
              );
            },
          )
        ],
        child: BlocConsumer<PaymentSetupBloc, PaymentSetupState>(
          listenWhen: (prev, current) =>
           prev.addressFindingFailureOrSuccess != current.addressFindingFailureOrSuccess,
          listener: (context, state) {
            state.addressFindingFailureOrSuccess.fold(
              () {},
              (either) => either.fold(
                      (l) => null,
                      (address) {
                          setState(() {
                            _line1.text = state.paymentSetup.houseNumber.value.getOrElse(() => '') + address[0].thoroughfare;
                            context
                                .read<PaymentSetupBloc>()
                                .add(PaymentSetupEvent.line1Changed(address[0].thoroughfare));
                            _line2.text = address[0].locality;
                            context
                                .read<PaymentSetupBloc>()
                                .add(PaymentSetupEvent.line2Changed(address[0].locality));
                            _country.text = address[0].countryName;
                            context
                                .read<PaymentSetupBloc>()
                                .add(PaymentSetupEvent.countryChanged(address[0].countryName));
                            _county.text = address[0].subAdminArea;
                            context
                                .read<PaymentSetupBloc>()
                                .add(PaymentSetupEvent.countyChanged(address[0].subAdminArea));
                          });
                      }
              ),
          );
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.only(right: 2.0),
              child: Container(
                child: FAStepper(
                  currentStep: state.step,
                  titleHeight: 70,
                  stepNumberColor: Colors.blue[200],
                  steps: [
                    FAStep(
                      title: Text("Personal"),
                      content: Form(
                        autovalidateMode: state.showErrorMessagesPersonal,
                        child: Column(
                          children: [
                            PersonalEmailField(),
                            PersonalFirstNameField(),
                            PersonalLastNameField(),
                            PersonalGenderField(),
                            PersonalPhoneNumber(mode: state.showErrorMessagesPersonal),
                            PersonalDateOfBirth(initialValue: context.watch<PaymentSetupBloc>().state.paymentSetup.dob.value.getOrElse(() => DateTime.now().toLocal().toString().split(' ')[0])),
                          ],
                        ),
                      ),
                      isActive: state.step == 0 ? true : false,
                      state:  state.step > 0 ? FAStepstate.complete : FAStepstate.editing
                    ),
                    FAStep(
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
                      state:  state.step > 1 ? FAStepstate.complete : FAStepstate.editing ,
                    ),
                    FAStep(
                      title: Text("Payment"),
                      content: Form(
                        autovalidateMode: state.showErrorMessagesPayment,
                        child: Column(
                          children: [
                            PaymentCardNameField(),
                            PaymentCardNumberField(),
                            PaymentSortCodeField(),
                          ],
                        ),
                      ),
                      isActive:  state.step == 2 ? true : false,
                      state:  state.step > 2 ? FAStepstate.complete : FAStepstate.editing ,
                    ),
                    FAStep(
                      title: Text("Documents"),
                      content: Form(
                        autovalidateMode: state.showErrorMessagesDocument,
                        child: Column(
                          children: [
                            PassportImageField(),
                            DocumentImageField(),
                            PassportVerifyTermsAndService()
                          ],
                        ),
                      ),
                      isActive:  state.step == 3 ? true : false,
                      state:  state.step > 3 ? FAStepstate.complete : FAStepstate.editing ,

                    ),
                    FAStep(
                      title: Text("Confirm"),
                      content: Form(
                        autovalidateMode: state.showErrorMessagesDocument,
                        child: Column(
                          children: [
                            Text("I Confirm all data supplied is accurate and my own. Providing invalid data will lead to the termination of your account!"),
                            FlatButton(
                              onPressed: () => context.read<PaymentSetupBloc>()
                                .add(PaymentSetupEvent.createAccount()), 
                              child: Text("Click me"))
                          ],
                        ),
                      ),
                      isActive:  state.step == 3 ? true : false,
                      state:  state.step > 3 ? FAStepstate.complete : FAStepstate.editing ,

                    ),
                  ],
                  type: FAStepperType.horizontal,
                  titleIconArrange: FAStepperTitleIconArrange.column,
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
                    } else if(state.step == state.maxSteps) {
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
                    context.read<PaymentSetupBloc>()
                        .add(PaymentSetupEvent.stepCancelled());
                  },
                  onStepContinue: () async {
                    if(state.step == 0) {
                      context.read<PaymentSetupBloc>()
                          .add(PaymentSetupEvent.validatePersonalSection());
                    } else if (state.step == 1) {
                      context.read<PaymentSetupBloc>()
                          .add(PaymentSetupEvent.validateAddressSection());
                    } else if (state.step == 2){
                      context.read<PaymentSetupBloc>()
                          .add(PaymentSetupEvent.validatePaymentSection());
                    } else if (state.step == 3) {
                      context.read<PaymentSetupBloc>()
                          .add(PaymentSetupEvent.validateDocumentSection());
                    }
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

