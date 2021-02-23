part of 'payment_form_bloc.dart';

@freezed
abstract class PaymentFormState with _$PaymentFormState {
  const factory PaymentFormState({
    @required bool isSaving,
    @required Option<Either<PaymentFormErrors, Unit>> saveFailureOrSuccessOption,
  }) = _PaymentFormState;

  factory PaymentFormState.initial() => PaymentFormState(
    isSaving: false,
    saveFailureOrSuccessOption: none(),
  );
}
