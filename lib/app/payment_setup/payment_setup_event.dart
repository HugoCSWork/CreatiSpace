part of 'payment_setup_bloc.dart';

@freezed
abstract class PaymentSetupEvent with _$PaymentSetupEvent {

  const factory PaymentSetupEvent.firstNameChanged(String firstName) = FirstNameChanged;
  const factory PaymentSetupEvent.lastNameChanged(String lastName) = LastNameChanged;
  const factory PaymentSetupEvent.emailChanged(String email) = EmailChanged;
  const factory PaymentSetupEvent.dobChanged(String dob) = DobChanged;
  const factory PaymentSetupEvent.phoneNumberChanged(String phoneNumber) = PhoneNumberChanged;
  const factory PaymentSetupEvent.genderChanged(String gender) = GenderChanged;
  const factory PaymentSetupEvent.validatePersonalSection() =
  ValidatePersonalSection;

  const factory PaymentSetupEvent.countyChanged(String county) = CountyChanged;
  const factory PaymentSetupEvent.houseNumberChanged(String houseNumber) = HouseNumberChanged;
  const factory PaymentSetupEvent.line1Changed(String line1) = Line1Changed;
  const factory PaymentSetupEvent.line2Changed(String line2) = Line2hanged;
  const factory PaymentSetupEvent.postcodeChanged(String postcode) = PostcodeChanged;
  const factory PaymentSetupEvent.cityChanged(String city) = CityChanged;
  const factory PaymentSetupEvent.countryChanged(String country) = CountryChanged;
  const factory PaymentSetupEvent.findAddress() =
  FindAddress;
  const factory PaymentSetupEvent.validateAddressSection() =
  ValidateAddressSection;

  const factory PaymentSetupEvent.cardNameChanged(String cardName) = CardNameChanged;
  const factory PaymentSetupEvent.cardNumberChanged(String cardNumber) = CardNumberChanged;
  const factory PaymentSetupEvent.sortCodeChanged(String sortCode) = SortCodeChanged;
  const factory PaymentSetupEvent.termsAndServiceChanged(bool termsAndService) = TermsAndServiceChanged;
  const factory PaymentSetupEvent.validatePaymentSection() =
  ValidatePaymentSection;

  const factory PaymentSetupEvent.passportUrlChanged(String passportUrl) =
  PassportUrlChanged;
  const factory PaymentSetupEvent.passportNameChanged(String passportName) =
  PassportNameChanged;

  const factory PaymentSetupEvent.documentUrlChanged(String documentUrl) =
  DocumentUrlChanged;
  const factory PaymentSetupEvent.documentNameChanged(String documentName) =
  DocumentNameChanged;

  const factory PaymentSetupEvent.validateDocumentSection() =
  ValidateDocumentSection;

  const factory PaymentSetupEvent.createAccount() = CreateAccount;

  const factory PaymentSetupEvent.stepTapped(int step) = _stepTapped;
  const factory PaymentSetupEvent.stepCancelled() = _stepCancelled;
  const factory PaymentSetupEvent.stepContinue() = _stepContinue;
}
