import 'package:creatispace/app/payment_form/payment_form_bloc.dart';
import 'package:creatispace/pages/auth/shared/input_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddressHouseNumberField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  TextFieldContainer(
      child: TextFormField(
        decoration: const InputDecoration(
            labelText: 'Home Number',
            errorMaxLines: 5),
        autocorrect: false,
        initialValue: context.watch<PaymentFormBloc>().state.paymentForm.houseNumber.value.getOrElse(() => ''),
        onChanged: (value) => context
            .read<PaymentFormBloc>()
            .add(PaymentFormEvent.houseNumberChanged(value)),
        validator: (_) =>
            context.read<PaymentFormBloc>().state.paymentForm.houseNumber.value.fold(
                  (failure) => failure.maybeMap(
                paymentSetup: (value) => value.f.maybeMap(
                  emptyField: (_) => 'Enter Home Number',
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

class AddressPostcodeField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        decoration: const InputDecoration(
            labelText: 'Postcode',
            errorMaxLines: 5),
        autocorrect: false,
        initialValue: context.watch<PaymentFormBloc>().state.paymentForm.postcode.value.getOrElse(() => ''),
        onChanged: (value) => context
            .read<PaymentFormBloc>()
            .add(PaymentFormEvent.postcodeChanged(value)),
        validator: (_) =>
            context.read<PaymentFormBloc>().state.paymentForm.postcode.value.fold(
                  (failure) => failure.maybeMap(
                paymentSetup: (value) => value.f.maybeMap(
                  emptyField: (_) => 'Enter post code',
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

class AddressFindAddressButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(vertical: 20, horizontal: 40)
          ),
          backgroundColor: MaterialStateProperty.all(
             const Color(0xFF3E81B5)
          )
      ),
      onPressed: () {
        context.read<PaymentFormBloc>().add(
          const PaymentFormEvent.findAddress(),
        );
      },
      child: const Text(
        'Find Address',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class AddressLineOneField extends StatelessWidget {

  final TextEditingController lineOne;

  const AddressLineOneField({Key key, @required this.lineOne})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        decoration: const InputDecoration(
            labelText: 'Line 1',
            errorMaxLines: 5),
        controller: lineOne,
        autocorrect: false,
        onChanged: (value) => context
            .read<PaymentFormBloc>()
            .add(PaymentFormEvent.line1Changed(value)),
        validator: (_) =>
            context.read<PaymentFormBloc>().state.paymentForm.line1.value.fold(
                  (failure) => failure.maybeMap(
                paymentSetup: (value) => value.f.maybeMap(
                  emptyField: (_) => 'Enter Line 1',
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

class AddressLineTwoField extends StatelessWidget {

  final TextEditingController lineTwo;

  const AddressLineTwoField({Key key, @required this.lineTwo}) :
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        decoration: const InputDecoration(
            labelText: 'Line 2',
            errorMaxLines: 5),
        controller: lineTwo,
        autocorrect: false,
        onChanged: (value) => context
            .read<PaymentFormBloc>()
            .add(PaymentFormEvent.line2Changed(value)),
        validator: (_) =>
            context.read<PaymentFormBloc>().state.paymentForm.line2.value.fold(
                  (failure) => failure.maybeMap(
                paymentSetup: (value) => value.f.maybeMap(
                  emptyField: (_) => 'Enter Line 2',
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

class AddressCityField extends StatelessWidget {

  final TextEditingController city;

  const AddressCityField({Key key, @required this.city}) :
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        decoration: const InputDecoration(
            labelText: 'City',
            errorMaxLines: 5),
        controller: city,
        autocorrect: false,
        onChanged: (value) => context
            .read<PaymentFormBloc>()
            .add(PaymentFormEvent.cityChanged(value)),
        validator: (_) =>
            context.read<PaymentFormBloc>().state.paymentForm.city.value.fold(
                  (failure) => failure.maybeMap(
                paymentSetup: (value) => value.f.maybeMap(
                  emptyField: (_) => 'Enter City',
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

class AddressCountryField extends StatelessWidget {
  final TextEditingController country;

  const AddressCountryField({Key key, @required this.country}) :
        super(key: key);


  @override
  Widget build(BuildContext context) {
    return  TextFieldContainer(
      child: TextFormField(
        decoration: const InputDecoration(
            labelText: 'Country',
            errorMaxLines: 5),
        controller: country,
        autocorrect: false,
        onChanged: (value) => context
            .read<PaymentFormBloc>()
            .add(PaymentFormEvent.countryChanged(value)),
        validator: (_) =>
            context.read<PaymentFormBloc>().state.paymentForm.country.value.fold(
                  (failure) => failure.maybeMap(
                paymentSetup: (value) => value.f.maybeMap(
                  emptyField: (_) => 'Enter Country',
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

class AddressCountyField extends StatelessWidget {
  final TextEditingController county;

  const AddressCountyField({Key key, @required this.county}) :
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        decoration: const InputDecoration(
            labelText: 'County',
            errorMaxLines: 5),
        controller: county,
        autocorrect: false,
        onChanged: (value) => context
            .read<PaymentFormBloc>()
            .add(PaymentFormEvent.countyChanged(value)),
        validator: (_) =>
            context.read<PaymentFormBloc>().state.paymentForm.county.value.fold(
                  (failure) => failure.maybeMap(
                paymentSetup: (value) => value.f.maybeMap(
                  emptyField: (_) => 'Enter County',
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

