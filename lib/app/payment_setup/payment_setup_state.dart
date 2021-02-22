part of 'payment_setup_bloc.dart';

@freezed
abstract class PaymentSetupState with _$PaymentSetupState {
  const factory PaymentSetupState({
    @required int step,
    @required int maxSteps,
    @required PaymentItemSetup paymentSetup,
    @required Option<Either<PaymentSetupErrorFailure, Unit>> personalFailureOrSuccess,
    @required AutovalidateMode showErrorMessagesPersonal,
    @required AutovalidateMode showErrorMessagesAddress,
    @required Option<Either<PaymentSetupErrorFailure, List<Address>>> addressFindingFailureOrSuccess,
    @required Option<Either<PaymentSetupErrorFailure, Unit>> addressFailureOrSuccess,
    @required AutovalidateMode showErrorMessagesPayment,
    @required Option<Either<PaymentSetupErrorFailure, Unit>> paymentFailureOrSuccess,
    @required AutovalidateMode showErrorMessagesDocument,
    @required Option<Either<PaymentSetupErrorFailure, Unit>> documentFailureOrSuccess,
    @required bool isSaving,
    @required Option<Either<PaymentSetupErrorFailure, Unit>> createPaymentAccountFailureOrSuccess,
    
  }) = _PaymentSetupState;

  factory PaymentSetupState.initial() =>
      PaymentSetupState(
        step: 0,
        maxSteps: 5,
        paymentSetup: PaymentItemSetup.empty(),
        isSaving: false, 
        createPaymentAccountFailureOrSuccess: none(),
        personalFailureOrSuccess: none(),
        addressFindingFailureOrSuccess: none(),
        addressFailureOrSuccess: none(),
        paymentFailureOrSuccess: none(),
        documentFailureOrSuccess: none(),
        showErrorMessagesPersonal: AutovalidateMode.disabled,
        showErrorMessagesAddress: AutovalidateMode.disabled,
        showErrorMessagesPayment: AutovalidateMode.disabled,
        showErrorMessagesDocument: AutovalidateMode.disabled,
      );
}
