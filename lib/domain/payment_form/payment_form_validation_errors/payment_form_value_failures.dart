import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_form_value_failures.freezed.dart';

@freezed
abstract class PaymentFormValueFailure<T> with _$PaymentFormValueFailure<T> {
  const factory PaymentFormValueFailure.invalidCardNumber({@required String failedValue}) =
  InvalidCardNumber<T>;

  const factory PaymentFormValueFailure.invalidCardCVC({@required String failedValue}) =
  InvalidCardCVC<T>;

  const factory PaymentFormValueFailure.invalidCardDate({@required String failedValue}) =
  InvalidCardDate<T>;
}
