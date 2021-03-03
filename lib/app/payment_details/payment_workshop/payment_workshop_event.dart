part of 'payment_workshop_bloc.dart';

@freezed
abstract class PaymentWorkshopEvent with _$PaymentWorkshopEvent {
  const factory PaymentWorkshopEvent.watchAlWorkshopList() = _WatchAlWorkshopList;
  const factory PaymentWorkshopEvent.workshopListReceived(
      Either<PaymentDetailsErrorFailure, KtList<WorkshopPayment>> failureOrMessages,
      ) = _WorkshopListReceived;
}