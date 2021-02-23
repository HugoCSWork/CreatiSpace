import 'package:creatispace/domain/core/value_failures.dart';
import 'package:creatispace/domain/payment_form/payment_form_validation_errors/payment_form_value_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:stripe_sdk/stripe_sdk_ui.dart';

Either<ValueFailure<String>, String> validatePaymentCardNumber(String input) {
  StripeCard stripeCard = new StripeCard(number: input);
  if (stripeCard.validateNumber()) {
    return right(input);
  } else {
    return left(
        ValueFailure.paymentForm(
            PaymentFormValueFailure.invalidCardNumber(failedValue: input)));
  }
}

Either<ValueFailure<String>, String> validatePaymentCardCVC(String input) {
  StripeCard stripeCard = new StripeCard(cvc: input);
  if (stripeCard.validateCVC()) {
    return right(input);
  } else {
    return left(
        ValueFailure.paymentForm(
            PaymentFormValueFailure.invalidCardCVC(failedValue: input)));
  }
}

Either<ValueFailure<String>, String> validatePaymentCardDate(String input) {
  if(input.length < 4) {
    return left(
        ValueFailure.paymentForm(
            PaymentFormValueFailure.invalidCardDate(failedValue: input)));
  }
  StripeCard stripeCard = new StripeCard(expMonth: int.parse(input.substring(0,2)), expYear: int.parse(input.substring(3,5)));
  if (stripeCard.validateDate()) {
    return right(input);
  } else {
    return left(
        ValueFailure.paymentForm(
            PaymentFormValueFailure.invalidCardDate(failedValue: input)));
  }
}