part of 'payment_receiver_bloc.dart';

@freezed
abstract class PaymentReceiverState with _$PaymentReceiverState {
  const factory PaymentReceiverState.initial() = _Initial;
  const factory PaymentReceiverState.loadInProgress() = _LoadInProgress;
  const factory PaymentReceiverState.loadSuccess(KtList<PaymentDetails> paymentDetails) = _LoadSuccess;
  const factory PaymentReceiverState.loadFailure(PaymentDetailsErrorFailure paymentDetailsErrorFailure) = _LoadFailure;
}
