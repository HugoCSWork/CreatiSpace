import 'package:creatispace/domain/core/value_failures.dart';
import 'package:creatispace/domain/core/value_objects.dart';
import 'package:creatispace/domain/payment_setup/payment_setup_validators.dart';
import 'package:dartz/dartz.dart';

class PaymentNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PaymentNumber(String input) {
    assert(input != null);
    return PaymentNumber._(isEmpty(input));
  }

  const PaymentNumber._(this.value);
}

class PaymentCVC extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PaymentCVC(String input) {
    assert(input != null);
    return PaymentCVC._(isEmpty(input));
  }

  const PaymentCVC._(this.value);
}

class PaymentDate extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PaymentDate(String input) {
    assert(input != null);
    return PaymentDate._(isEmpty(input));
  }

  const PaymentDate._(this.value);
}