part of 'payment_verified_bloc.dart';

@freezed
abstract class PaymentVerifiedState with _$PaymentVerifiedState {
  const factory PaymentVerifiedState.initial() = Initial;
  const factory PaymentVerifiedState.authenticated() = Authenticated;
  const factory PaymentVerifiedState.unauthenticated() = Unauthenticated;
}
