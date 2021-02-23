
import 'package:creatispace/domain/core/value_failures.dart';
import 'package:creatispace/domain/payment_form/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_form.freezed.dart';

@freezed
abstract class PaymentForm implements _$PaymentForm {
  const factory PaymentForm({
    @required PaymentNumber paymentNumber,
    @required PaymentCVC paymentCVC,
    @required PaymentDate paymentDate,
  }) = _PaymentForm;

  const PaymentForm._();

  factory PaymentForm.empty() => PaymentForm(
    paymentNumber: PaymentNumber(''),
    paymentCVC: PaymentCVC(''),
    paymentDate: PaymentDate(''),
  );

  Option<ValueFailure<dynamic>> get failureOption {
    // return name.value.fold((f) => some(f), (_) => none());
    return paymentNumber.failureOrUnit
        .andThen(paymentCVC.failureOrUnit)
        .andThen(paymentDate.failureOrUnit)
        .fold((l) => some(l), (_) => none());
  }
}
