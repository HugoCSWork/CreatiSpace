part of 'payment_sender_bloc.dart';

@freezed
abstract class PaymentSenderEvent with _$PaymentSenderEvent {
  const factory PaymentSenderEvent.watchAllPaymentSenderList() = _WatchAllPaymentSenderList;
  const factory PaymentSenderEvent.paymentSendersListReceived(
      Either<PaymentDetailsErrorFailure, KtList<PaymentDetails>> failureOrMessages,
      ) = _PaymentSendersListReceived;
}