part of 'payment_form_bloc.dart';

@freezed
abstract class PaymentFormState with _$PaymentFormState {
  const factory PaymentFormState({
    @required int step,
    @required int maxSteps,
    @required PaymentFormSetup paymentForm,
    @required bool isSaving,
    @required Option<Either<PaymentFormErrors, Map<String, dynamic>>> saveFailureOrSuccessOption,
    @required Option<Either<PaymentFormErrors, Unit>> personalFailureOrSuccess,
    @required AutovalidateMode showErrorMessagesPersonal,
    @required AutovalidateMode showErrorMessagesAddress,
    @required Option<Either<PaymentFormErrors, List<Address>>> addressFindingFailureOrSuccess,
    @required Option<Either<PaymentFormErrors, Unit>> addressFailureOrSuccess,
  }) = _PaymentFormState;

  factory PaymentFormState.initial() => PaymentFormState(
      step: 0,
      maxSteps: 3,
      paymentForm: PaymentFormSetup.empty(),
      isSaving: false,
      saveFailureOrSuccessOption: none(),
      personalFailureOrSuccess: none(),
      addressFailureOrSuccess: none(),
      addressFindingFailureOrSuccess: none(),
      showErrorMessagesAddress: AutovalidateMode.disabled,
      showErrorMessagesPersonal: AutovalidateMode.disabled
  );
}
