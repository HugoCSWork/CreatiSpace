import 'package:creatispace/app/payment_setup/payment_setup_bloc.dart';
import 'package:creatispace/pages/auth/shared/input_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PersonalEmailField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    context
        .watch<PaymentSetupBloc>()
        .add(PaymentSetupEvent.emailChanged(context.watch<PaymentSetupBloc>().state.paymentSetup.email.value.getOrElse(() => '')));
    return TextFieldContainer(
      child: TextFormField(
        decoration: const InputDecoration(
            labelText: 'Email',
            errorMaxLines: 5),
        initialValue: context.watch<PaymentSetupBloc>().state.paymentSetup.email.value.getOrElse(() => ''),
        autocorrect: false,
        onChanged: (value) => context
            .read<PaymentSetupBloc>()
            .add(PaymentSetupEvent.emailChanged(value)),
        validator: (_) =>
            context.read<PaymentSetupBloc>().state.paymentSetup.email.value.fold(
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
            .read<PaymentSetupBloc>()
            .add(PaymentSetupEvent.firstNameChanged(value)),
        initialValue: context.watch<PaymentSetupBloc>().state.paymentSetup.firstName.value.getOrElse(() => ''),
        validator: (_) =>
            context.read<PaymentSetupBloc>().state.paymentSetup.firstName.value.fold(
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
        initialValue: context.watch<PaymentSetupBloc>().state.paymentSetup.lastName.value.getOrElse(() => ''),
        onChanged: (value) => context
            .read<PaymentSetupBloc>()
            .add(PaymentSetupEvent.lastNameChanged(value)),
        validator: (_) =>
            context.read<PaymentSetupBloc>().state.paymentSetup.lastName.value.fold(
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

class PersonalGenderField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   TextFieldContainer(
      child: DropdownButtonFormField(
        decoration: const InputDecoration(
            labelText: 'Gender',
            errorMaxLines: 5),
        hint: Text("Gender"),
        items: <String>['Male', 'Female', 'Prefer to not say',].map((String value) {
          return new DropdownMenuItem<String>(
            value: value,
            child: new Text(value),
          );
        }).toList(),
        value: context.watch<PaymentSetupBloc>().state.paymentSetup.gender.value.getOrElse(() => 'Male'),
        onChanged: (value) {
          FocusScope.of(context).requestFocus(new FocusNode());
          context
              .read<PaymentSetupBloc>()
              .add(PaymentSetupEvent.genderChanged(value.toString()));
        },
        validator: (_) =>
            context.read<PaymentSetupBloc>().state.paymentSetup.gender.value.fold(
                  (failure) => failure.maybeMap(
                paymentSetup: (value) => value.f.maybeMap(
                  invalidGender: (_) => 'Please select a gender',
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
            .read<PaymentSetupBloc>()
            .add(PaymentSetupEvent.phoneNumberChanged(value.toString())),
        autoValidateMode: mode,
        keyboardType: TextInputType.numberWithOptions(signed: true, decimal: true),
        selectorConfig: SelectorConfig(
          selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
        ),
        countries: ['GB'],
        spaceBetweenSelectorAndTextField: 0,
        inputBorder: OutlineInputBorder(),
        selectorTextStyle: TextStyle(color: Colors.black),
        initialValue: PhoneNumber(isoCode: 'GB', phoneNumber: context.watch<PaymentSetupBloc>().state.paymentSetup.phoneNumber.value.getOrElse(() => '')),
        ignoreBlank: false,
        validator: (_) =>
            context.read<PaymentSetupBloc>().state.paymentSetup.phoneNumber.value.fold(
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


class PersonalDateOfBirth extends StatefulWidget {

  final String initialValue;

  const PersonalDateOfBirth({Key key, @required this.initialValue})
      : super(key: key);

  @override
  _PersonalDateOfBirthState createState() => _PersonalDateOfBirthState(initialValue);
}

class _PersonalDateOfBirthState extends State<PersonalDateOfBirth> {
  final String initialValue;
  DateTime currentTime = DateTime.now();
  TextEditingController _date = TextEditingController();
  _PersonalDateOfBirthState(this.initialValue){
    _date.text = this.initialValue;
  }



  Future<String> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: currentTime,
        firstDate: DateTime(1901, 1),
        lastDate: DateTime(2100));
    if (picked != null && picked != currentTime) {
      setState(() {
        currentTime = picked;
        _date.value = TextEditingValue(text: picked.toLocal().toString().split(' ')[0]);
      });
      return _date.value.text;
    }
    return currentTime.toString();
  }


  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: () async {
        String date = await _selectDate(context);
        context
            .read<PaymentSetupBloc>()
            .add(PaymentSetupEvent.dobChanged(date));
        FocusManager.instance.primaryFocus.unfocus();
      },
      child: AbsorbPointer(
        child: TextFieldContainer(
          child: TextFormField(
            controller: _date,
            keyboardType: TextInputType.datetime,
            decoration: InputDecoration(
              hintText: 'Date of Birth',
              prefixIcon: Icon(
                Icons.dialpad,
              ),
            ),
            validator: (_) =>
                context.read<PaymentSetupBloc>().state.paymentSetup.dob.value.fold(
                      (failure) => failure.maybeMap(
                    paymentSetup: (value) => value.f.maybeMap(
                      invalidDob: (_) => 'Invalid Date of birth',
                      orElse: () => null,
                    ),
                    orElse: () => null,
                  ),
                      (_) => null,
                ),
          ),
        ),
      ),
    );
  }
}
