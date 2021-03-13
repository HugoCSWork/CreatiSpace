import 'package:creatispace/app/payment_setup/payment_setup_bloc.dart';
import 'package:creatispace/pages/auth/shared/input_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentCardNameField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        key: Key('payment_name'),
        decoration: const InputDecoration(
            labelText: 'Card Name',
            errorMaxLines: 5),
        initialValue: context.watch<PaymentSetupBloc>().state.paymentSetup.cardName.value.getOrElse(() => ''),
        autocorrect: false,
        onChanged: (value) => context
            .read<PaymentSetupBloc>()
            .add(PaymentSetupEvent.cardNameChanged(value)),
        validator: (_) =>
            context.read<PaymentSetupBloc>().state.paymentSetup.cardName.value.fold(
                  (failure) => failure.maybeMap(
                paymentSetup: (value) => value.f.maybeMap(
                  emptyField: (_) => 'Invalid Account Name',
                  orElse: () => null,
                ),
                orElse: () => null,
              ),
                  (_) => null,
            ),
      ),
    );
  }
}

class PaymentCardNumberField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        key: Key('payment_card'),
        decoration: const InputDecoration(
            labelText: 'Card Number',
            errorMaxLines: 5),
        initialValue: context.watch<PaymentSetupBloc>().state.paymentSetup.cardNumber.value.getOrElse(() => ''),
        autocorrect: false,
        onChanged: (value) => context
            .read<PaymentSetupBloc>()
            .add(PaymentSetupEvent.cardNumberChanged(value)),
        validator: (_) =>
            context.read<PaymentSetupBloc>().state.paymentSetup.cardNumber.value.fold(
                  (failure) => failure.maybeMap(
                paymentSetup: (value) => value.f.maybeMap(
                  invalidAccountNumber: (_) => 'Invalid Account Number',
                  orElse: () => null,
                ),
                orElse: () => null,
              ),
                  (_) => null,
            ),
      ),
    );
  }
}

class PaymentSortCodeField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        key: Key('payment_sort_code'),
        decoration: const InputDecoration(
            labelText: 'Sort Code',
            errorMaxLines: 5),
        initialValue: context.watch<PaymentSetupBloc>().state.paymentSetup.sortCode.value.getOrElse(() => ''),
        autocorrect: false,
        onChanged: (value) => context
            .read<PaymentSetupBloc>()
            .add(PaymentSetupEvent.sortCodeChanged(value)),
        validator: (_) =>
            context.read<PaymentSetupBloc>().state.paymentSetup.sortCode.value.fold(
                  (failure) => failure.maybeMap(
                paymentSetup: (value) => value.f.maybeMap(
                  invalidSortCode: (_) => 'Invalid Sort Code',
                  orElse: () => null,
                ),
                orElse: () => null,
              ),
                  (_) => null,
            ),
      ),
    );
  }
}

class PaymentVerifyTermsAndService extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: FormField<bool>(
        builder: (state) {
          return Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Checkbox(
                      value: context.read<PaymentSetupBloc>().state.paymentSetup.termsAndService.value.getOrElse(() => false),
                      onChanged: (value) {
                        context
                        .read<PaymentSetupBloc>()
                            .add(PaymentSetupEvent.termsAndServiceChanged(value));
                      }),
                  Text('Accept terms and conditions'),
                ],
              ),
//display error in matching theme
              Text(
                state.errorText ?? '',
                style: TextStyle(
                  color: Theme.of(context).errorColor,
                ),
              )
            ],
          );
        },
//output from validation will be displayed in state.errorText (above)
        validator: (_) =>
          context.read<PaymentSetupBloc>().state.paymentSetup.termsAndService.value.fold(
                (failure) => failure.maybeMap(
              paymentSetup: (value) => value.f.maybeMap(
                uncheckedTermsAndService: (_) => 'Please accept terms and conditions',
                orElse: () => null,
              ),
              orElse: () => null,
            ),
                (_) => null,
          ),
      ),
    );
  }
}
