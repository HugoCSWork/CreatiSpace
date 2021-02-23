import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_form_errors.freezed.dart';

@freezed
abstract class PaymentFormErrors with _$PaymentFormErrors {
  const factory PaymentFormErrors.unexpected() = Unexpected;
  const factory PaymentFormErrors.errorMakingPayment() = ErrorMakingPayment;
  const factory PaymentFormErrors.cancelled() = Cancelled;
}