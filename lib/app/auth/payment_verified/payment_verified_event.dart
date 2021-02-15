part of 'payment_verified_bloc.dart';

@freezed
abstract class PaymentVerifiedEvent with _$PaymentVerifiedEvent {
  const factory PaymentVerifiedEvent.paymentVerifiedCheckRequested() = PaymentVerifiedCheckRequested;
}