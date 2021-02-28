part of 'payment_item_details_bloc.dart';

@freezed
abstract class PaymentItemDetailsState with _$PaymentItemDetailsState {
  const factory PaymentItemDetailsState.initial() = _Initial;
  const factory PaymentItemDetailsState.loadInProgress() = _LoadInProgress;
  const factory PaymentItemDetailsState.loadSuccess(ItemDto item) = _LoadSuccess;
  const factory PaymentItemDetailsState.loadFailure(ItemErrorFailure itemFailure) = _LoadFailure;
}
