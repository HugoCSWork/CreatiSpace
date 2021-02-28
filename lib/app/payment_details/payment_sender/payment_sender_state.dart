part of 'payment_sender_bloc.dart';

@freezed
abstract class PaymentSenderState with _$PaymentSenderState {
  const factory PaymentSenderState.initial() = _Initial;
  const factory PaymentSenderState.loadInProgress() = _LoadInProgress;
  const factory PaymentSenderState.loadSuccess(KtList<PaymentDetails> paymentDetails) = _LoadSuccess;
  const factory PaymentSenderState.loadFailure(PaymentDetailsErrorFailure paymentDetailsErrorFailure) = _LoadFailure;
}
