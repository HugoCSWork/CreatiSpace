part of 'payment_receiver_bloc.dart';

@freezed
abstract class PaymentReceiverEvent with _$PaymentReceiverEvent {
  const factory PaymentReceiverEvent.watchAllPaymentReceiverList() = _WatchAllPaymentReceiverList;
  const factory PaymentReceiverEvent.paymentReceiversListReceived(
      Either<PaymentDetailsErrorFailure, KtList<PaymentDetails>> failureOrMessages,
      ) = _PaymentReceiversListReceived;
}