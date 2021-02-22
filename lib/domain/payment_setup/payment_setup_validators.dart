import 'package:creatispace/domain/core/value_failures.dart';
import 'package:creatispace/domain/payment_setup/payment_setup_value_failures/payment_setup_value_failures.dart';
import 'package:dartz/dartz.dart';


Either<ValueFailure<String>, String> validatePaymentEmail(String input) {
  const emailRegex =
  r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(
        ValueFailure.paymentSetup(
            PaymentSetupValueFailures.invalidEmail(failedValue: input)));
  }
}

Either<ValueFailure<String>, String> isEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.paymentSetup(
        PaymentSetupValueFailures.emptyField(failedValue: input)));
  }
}


Either<ValueFailure<String>, String> validateFirstName(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.paymentSetup(
        PaymentSetupValueFailures.invalidFirstName(failedValue: input)));
  }
}

Either<ValueFailure<String>, String> validateLastName(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.paymentSetup(
        PaymentSetupValueFailures.invalidLastName(failedValue: input)));
  }
}

Either<ValueFailure<String>, String> validateDob(String input) {
  if(input == '' || input == null) {
    return left(ValueFailure.paymentSetup(
        PaymentSetupValueFailures.invalidDob(failedValue: input)));
  }

  DateTime now = new DateTime.now();
  var currentDate = DateTime.parse(input);

  if (currentDate.year > 1885 && now.year - currentDate.year >= 18) {
    return right(input);
  } else {
    return left(ValueFailure.paymentSetup(
        PaymentSetupValueFailures.invalidDob(failedValue: input)));
  }
}

Either<ValueFailure<String>, String> validatePhoneNumber(String input) {
  String phonePattern = r'((\+44(\s\(0\)\s|\s0\s|\s)?)|0)7\d{3}(\s)?\d{6}';
  RegExp regExp = new RegExp(phonePattern);

  if (regExp.hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.paymentSetup(
        PaymentSetupValueFailures.invalidPhoneNumber(failedValue: input)));
  }
}

Either<ValueFailure<String>, String> validateGender(String input) {
  var list = ["Male", "Female", "Prefer to not say"];

  if (list.contains(input)) {
    return right(input);
  } else {
    return left(ValueFailure.paymentSetup(
        PaymentSetupValueFailures.invalidGender(failedValue: input)));
  }
}

Either<ValueFailure<String>, String> validateSortCode(String input) {
  String sortCodePattern = r'^[0-9]{2}[-][0-9]{2}[-][0-9]{2}$';
  RegExp regExp = new RegExp(sortCodePattern);

  if (regExp.hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.paymentSetup(
        PaymentSetupValueFailures.invalidSortCode(failedValue: input)));
  }
}

Either<ValueFailure<String>, String> validateAccountName(String input) {

  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.paymentSetup(
        PaymentSetupValueFailures.invalidAccountName(failedValue: input)));
  }
}

Either<ValueFailure<String>, String> validateAccountNumber(String input) {
  String accountNumberPattern = r'^(\d){8}$';
  RegExp regExp = new RegExp(accountNumberPattern);

  if (regExp.hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.paymentSetup(
        PaymentSetupValueFailures.invalidAccountNumber(failedValue: input)));
  }
}

Either<ValueFailure<bool>, bool> validateTermsAndService(bool input) {

  if (input) {
    return right(input);
  } else {
    return left(ValueFailure.paymentSetup(
        PaymentSetupValueFailures.uncheckedTermsAndService(failedValue: input)));
  }
}