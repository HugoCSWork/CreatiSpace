part of 'payment_details_form_bloc.dart';

@freezed
abstract class PaymentDetailsFormState with _$PaymentDetailsFormState {
  const factory PaymentDetailsFormState.initial() = _Initial;
  const factory PaymentDetailsFormState.updateInProgress() = _UpdateInProgress;
  const factory PaymentDetailsFormState.updateSuccess() = _UpdateSuccess;
  const factory PaymentDetailsFormState.updateFailed() = _UpdateFailed;
}
