part of 'payment_item_details_bloc.dart';

@freezed
abstract class PaymentItemDetailsEvent with _$PaymentItemDetailsEvent {
  const factory PaymentItemDetailsEvent.getPaymentItemStarted(String userId, String itemId) = _GetPaymentItemStarted;
  const factory PaymentItemDetailsEvent.paymentItemReceived(
      Either<ItemErrorFailure, ItemDto> failureOrItem,
      ) = _PaymentItemReceived;
}