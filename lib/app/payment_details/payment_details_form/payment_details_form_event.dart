part of 'payment_details_form_bloc.dart';

@freezed
abstract class PaymentDetailsFormEvent with _$PaymentDetailsFormEvent {
  const factory PaymentDetailsFormEvent.updateOrderStatus(String status, String paymentId, String userId, bool isSeller) = _UpdateOrderStatus;
  const factory PaymentDetailsFormEvent.updateOrderResponse(
      Either<ItemErrorFailure, Unit> failureOrItem,
      ) = _UpdateOrderResponse;
}