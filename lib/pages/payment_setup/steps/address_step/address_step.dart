import 'package:creatispace/app/payment_setup/payment_setup_bloc.dart';
import 'package:creatispace/pages/auth/shared/input_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddressHouseNumberField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  TextFieldContainer(
      child: TextFormField(
        key: Key('address_home_number'),
        decoration: const InputDecoration(
            labelText: 'Home Number',
            errorMaxLines: 5),
        autocorrect: false,
        initialValue: context.watch<PaymentSetupBloc>().state.paymentSetup.houseNumber.value.getOrElse(() => ''),
        onChanged: (value) => context
            .read<PaymentSetupBloc>()
            .add(PaymentSetupEvent.houseNumberChanged(value)),
        validator: (_) =>
            context.read<PaymentSetupBloc>().state.paymentSetup.houseNumber.value.fold(
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
        key: Key('address_postcode'),
        decoration: const InputDecoration(
            labelText: 'Postcode',
            errorMaxLines: 5),
        autocorrect: false,
        initialValue: context.watch<PaymentSetupBloc>().state.paymentSetup.postcode.value.getOrElse(() => ''),
        onChanged: (value) => context
            .read<PaymentSetupBloc>()
            .add(PaymentSetupEvent.postcodeChanged(value)),
        validator: (_) =>
            context.read<PaymentSetupBloc>().state.paymentSetup.postcode.value.fold(
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
        context.read<PaymentSetupBloc>().add(
          const PaymentSetupEvent.findAddress(),
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
      key: Key("address_line_one"),
      child: TextFormField(
        decoration: const InputDecoration(
            labelText: 'Line 1',
            errorMaxLines: 5),
        controller: lineOne,
        autocorrect: false,
        onChanged: (value) => context
            .read<PaymentSetupBloc>()
            .add(PaymentSetupEvent.line1Changed(value)),
        validator: (_) =>
            context.read<PaymentSetupBloc>().state.paymentSetup.line1.value.fold(
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
      key: Key("address_line_two"),
      child: TextFormField(
        decoration: const InputDecoration(
            labelText: 'Line 2',
            errorMaxLines: 5),
        controller: lineTwo,
        autocorrect: false,
        onChanged: (value) => context
            .read<PaymentSetupBloc>()
            .add(PaymentSetupEvent.line2Changed(value)),
        validator: (_) =>
            context.read<PaymentSetupBloc>().state.paymentSetup.line2.value.fold(
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
      key: Key('address_city'),
      child: TextFormField(
        decoration: const InputDecoration(
            labelText: 'City',
            errorMaxLines: 5),
        controller: city,
        autocorrect: false,
        onChanged: (value) => context
            .read<PaymentSetupBloc>()
            .add(PaymentSetupEvent.cityChanged(value)),
        validator: (_) =>
            context.read<PaymentSetupBloc>().state.paymentSetup.city.value.fold(
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
        key: Key('address_country'),
        decoration: const InputDecoration(
            labelText: 'Country',
            filled: true,
            errorMaxLines: 5),
        autocorrect: false,
        initialValue: 'GB',
        readOnly: true,
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
        key: Key('address_county'),
        decoration: const InputDecoration(
            labelText: 'County',
            errorMaxLines: 5),
        controller: county,
        autocorrect: false,
        onChanged: (value) => context
            .read<PaymentSetupBloc>()
            .add(PaymentSetupEvent.countyChanged(value)),
        validator: (_) =>
            context.read<PaymentSetupBloc>().state.paymentSetup.county.value.fold(
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

