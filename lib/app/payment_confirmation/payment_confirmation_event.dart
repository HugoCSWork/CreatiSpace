part of 'payment_confirmation_bloc.dart';

@freezed
abstract class PaymentConfirmationEvent with _$PaymentConfirmationEvent {
  const factory PaymentConfirmationEvent.getPaymentItemStarted(String id, String peerId) = _WatchAllStarted;
  const factory PaymentConfirmationEvent.paymentItemReceived(
      Either<ItemErrorFailure, ItemDto> failureOrItem,
      ) = _ItemsReceived;
}