part of 'payment_form_bloc.dart';

@freezed
abstract class PaymentFormEvent with _$PaymentFormEvent {
  const factory PaymentFormEvent.started() = _Started;
  // const factory PaymentFormEvent.cardNumberChanged(String cardNumber) = _CardNumberChanged;
  // const factory PaymentFormEvent.cardCVCChanged(String cardCVC) = _CardCVCChanged;
  // const factory PaymentFormEvent.cardDateChanged(String cardDate) = _CardDateChanged;
  const factory PaymentFormEvent.saved(StripeCard card) = _Saved;

}