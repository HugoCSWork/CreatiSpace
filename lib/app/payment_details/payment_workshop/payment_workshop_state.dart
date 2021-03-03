part of 'payment_workshop_bloc.dart';

@freezed
abstract class PaymentWorkshopState with _$PaymentWorkshopState {
  const factory PaymentWorkshopState.initial() = _Initial;
  const factory PaymentWorkshopState.loadInProgress() = _LoadInProgress;
  const factory PaymentWorkshopState.loadSuccess(KtList<WorkshopPayment> workshopPayment) = _LoadSuccess;
  const factory PaymentWorkshopState.loadFailure(PaymentDetailsErrorFailure paymentDetailsErrorFailure) = _LoadFailure;
}
