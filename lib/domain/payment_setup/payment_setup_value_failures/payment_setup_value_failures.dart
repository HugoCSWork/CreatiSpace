import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_setup_value_failures.freezed.dart';

@freezed
abstract class PaymentSetupValueFailures<T> with _$PaymentSetupValueFailures<T> {

  const factory PaymentSetupValueFailures.emptyField({@required String failedValue}) =
  EmptyField<T>;

  const factory PaymentSetupValueFailures.invalidEmail({@required String failedValue}) =
  InvalidEmail<T>;

  const factory PaymentSetupValueFailures.invalidFirstName({@required String failedValue}) =
  InvalidFirstName<T>;

  const factory PaymentSetupValueFailures.invalidLastName({@required String failedValue}) =
  InvalidLastName<T>;

  const factory PaymentSetupValueFailures.invalidDob({@required String failedValue}) =
  InvalidDob<T>;

  const factory PaymentSetupValueFailures.invalidPhoneNumber({@required String failedValue}) =
  InvalidPhoneNumber<T>;

  const factory PaymentSetupValueFailures.invalidGender({@required String failedValue}) =
  InvalidGender<T>;

  const factory PaymentSetupValueFailures.invalidAccountName({@required String failedValue}) =
  InvalidAccountName<T>;

  const factory PaymentSetupValueFailures.invalidAccountNumber({@required String failedValue}) =
  InvalidAccountNumber<T>;

  const factory PaymentSetupValueFailures.invalidSortCode({@required String failedValue}) =
  InvalidSortCode<T>;

  const factory PaymentSetupValueFailures.uncheckedTermsAndService({@required bool failedValue}) =
  UncheckedTermsAndService<T>;
}