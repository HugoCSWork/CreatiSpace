part of 'payment_form_bloc.dart';

@freezed
abstract class PaymentFormEvent with _$PaymentFormEvent {
  const factory PaymentFormEvent.stepTapped(int step) = _stepTapped;
  const factory PaymentFormEvent.stepCancelled() = _stepCancelled;
  const factory PaymentFormEvent.stepContinue() = _stepContinue;

  const factory PaymentFormEvent.started() = _Started;
  const factory PaymentFormEvent.firstNameChanged(String firstName) = FirstNameChanged;
  const factory PaymentFormEvent.lastNameChanged(String lastName) = LastNameChanged;
  const factory PaymentFormEvent.emailChanged(String email) = EmailChanged;
  const factory PaymentFormEvent.phoneNumberChanged(String phoneNumber) = PhoneNumberChanged;
  const factory PaymentFormEvent.validatePersonalSection() =
  ValidatePersonalSection;

  const factory PaymentFormEvent.countyChanged(String county) = CountyChanged;
  const factory PaymentFormEvent.houseNumberChanged(String houseNumber) = HouseNumberChanged;
  const factory PaymentFormEvent.line1Changed(String line1) = Line1Changed;
  const factory PaymentFormEvent.line2Changed(String line2) = Line2hanged;
  const factory PaymentFormEvent.postcodeChanged(String postcode) = PostcodeChanged;
  const factory PaymentFormEvent.cityChanged(String city) = CityChanged;
  const factory PaymentFormEvent.countryChanged(String country) = CountryChanged;
  const factory PaymentFormEvent.findAddress() =
  FindAddress;
  const factory PaymentFormEvent.validateAddressSection() =
  ValidateAddressSection;


  const factory PaymentFormEvent.saved(StripeCard card, String peerId, String amount, String itemId) = _Saved;
  const factory PaymentFormEvent.savedWorkshop(StripeCard card, String peerId, String workshopId) = _SavedWorkshop;

}