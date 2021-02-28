import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_details_error.freezed.dart';

@freezed
abstract class PaymentDetailsErrorFailure with _$PaymentDetailsErrorFailure {
  const factory PaymentDetailsErrorFailure.unexpected() = Unexpected;
  const factory PaymentDetailsErrorFailure.insufficientPermissions() = InsufficientPermissions;
  const factory PaymentDetailsErrorFailure.notFound() = NotFound;
}
