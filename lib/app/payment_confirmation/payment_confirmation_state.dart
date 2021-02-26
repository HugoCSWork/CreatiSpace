part of 'payment_confirmation_bloc.dart';

@freezed
abstract class PaymentConfirmationState with _$PaymentConfirmationState {
  const factory PaymentConfirmationState.initial() = _Initial;
  const factory PaymentConfirmationState.loadInProgress() = _LoadInProgress;
  const factory PaymentConfirmationState.loadSuccess(ItemDto item) = _LoadSuccess;
  const factory PaymentConfirmationState.loadFailure(ItemErrorFailure itemFailure) = _LoadFailure;
}
