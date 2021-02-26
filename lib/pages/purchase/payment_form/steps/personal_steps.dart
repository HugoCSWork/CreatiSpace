import 'package:creatispace/app/payment_form/payment_form_bloc.dart';
import 'package:creatispace/pages/auth/shared/input_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PersonalEmailField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    context
        .watch<PaymentFormBloc>()
        .add(PaymentFormEvent.emailChanged(context.watch<PaymentFormBloc>().state.paymentForm.email.value.getOrElse(() => '')));
    return TextFieldContainer(
      child: TextFormField(
        decoration: const InputDecoration(
            labelText: 'Email',
            errorMaxLines: 5),
        initialValue: context.watch<PaymentFormBloc>().state.paymentForm.email.value.getOrElse(() => ''),
        autocorrect: false,
        onChanged: (value) => context
            .read<PaymentFormBloc>()
            .add(PaymentFormEvent.emailChanged(value)),
        validator: (_) =>
            context.read<PaymentFormBloc>().state.paymentForm.email.value.fold(
                  (failure) => failure.maybeMap(
                paymentSetup: (value) => value.f.maybeMap(
                  invalidEmail: (_) => 'Invalid Email Address',
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

class PersonalFirstNameField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  TextFieldContainer(
      child: TextFormField(
        decoration: const InputDecoration(
            labelText: 'First Name',
            errorMaxLines: 5),
        autocorrect: false,
        onChanged: (value) => context
            .read<PaymentFormBloc>()
            .add(PaymentFormEvent.firstNameChanged(value)),
        initialValue: context.watch<PaymentFormBloc>().state.paymentForm.firstName.value.getOrElse(() => ''),
        validator: (_) =>
            context.read<PaymentFormBloc>().state.paymentForm.firstName.value.fold(
                  (failure) => failure.maybeMap(
                paymentSetup: (value) => value.f.maybeMap(
                  invalidFirstName: (_) => 'Invalid first name',
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

class PersonalLastNameField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        decoration: const InputDecoration(
            labelText: 'Last Name',
            errorMaxLines: 5),
        autocorrect: false,
        initialValue: context.watch<PaymentFormBloc>().state.paymentForm.lastName.value.getOrElse(() => ''),
        onChanged: (value) => context
            .read<PaymentFormBloc>()
            .add(PaymentFormEvent.lastNameChanged(value)),
        validator: (_) =>
            context.read<PaymentFormBloc>().state.paymentForm.lastName.value.fold(
                  (failure) => failure.maybeMap(
                paymentSetup: (value) => value.f.maybeMap(
                  invalidLastName: (_) => 'Invalid Last Name',
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

class PersonalPhoneNumber extends StatelessWidget {
  final AutovalidateMode mode;

  const PersonalPhoneNumber({Key key, @required this.mode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    TextFieldContainer(
      child: InternationalPhoneNumberInput(
        onInputChanged: (value) => context
            .read<PaymentFormBloc>()
            .add(PaymentFormEvent.phoneNumberChanged(value.toString())),
        autoValidateMode: mode,
        keyboardType: TextInputType.numberWithOptions(signed: true, decimal: true),
        selectorConfig: SelectorConfig(
          selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
        ),
        countries: ['GB'],
        spaceBetweenSelectorAndTextField: 0,
        inputBorder: OutlineInputBorder(),
        selectorTextStyle: TextStyle(color: Colors.black),
        initialValue: PhoneNumber(isoCode: 'GB', phoneNumber: context.watch<PaymentFormBloc>().state.paymentForm.phoneNumber.value.getOrElse(() => '')),
        ignoreBlank: false,
        validator: (_) =>
            context.read<PaymentFormBloc>().state.paymentForm.phoneNumber.value.fold(
                  (failure) => failure.maybeMap(
                paymentSetup: (value) => value.f.maybeMap(
                  invalidPhoneNumber: (_) => 'Invalid Phone Number',
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


