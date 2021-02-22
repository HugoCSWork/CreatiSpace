import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_setup_error.freezed.dart';

@freezed
abstract class PaymentSetupErrorFailure with _$PaymentSetupErrorFailure {
  const factory PaymentSetupErrorFailure.cancelledByUser() = CancelledByUser;
  const factory PaymentSetupErrorFailure.invalidPersonalInformation() = InvalidPersonalInformation;
  const factory PaymentSetupErrorFailure.invalidAddressInformation() = InvalidAddressInformation;
  const factory PaymentSetupErrorFailure.invalidPaymentInformation() = InvalidPaymentInformation;
  const factory PaymentSetupErrorFailure.invalidDocumentInformation() = InvalidDocumentInformation;
  const factory PaymentSetupErrorFailure.errorFindingAddress() = ErrorFindingAddress;
}
