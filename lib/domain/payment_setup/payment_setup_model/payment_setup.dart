import 'package:creatispace/domain/core/value_failures.dart';
import 'package:creatispace/domain/payment_setup/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_setup.freezed.dart';

@freezed
abstract class PaymentItemSetup implements _$PaymentItemSetup {
  const factory PaymentItemSetup({
    @required FirstName firstName,
    @required LastName lastName,
    @required PaymentEmailAddress email,
    @required Dob dob,
    @required PhoneNumber phoneNumber,
    @required Gender gender,
    @required HouseNumber houseNumber,
    @required LineOne line1,
    @required LineTwo line2,
    @required Postcode postcode,
    @required City city,
    @required Country country,
    @required County county,
    @required CardName cardName,
    @required CardNumber cardNumber,
    @required SortCode sortCode,
    @required PassportUrl passportUrlImage,
    @required PassportName passportNameImage,
    @required DocumentUrl documentUrlImage,
    @required DocumentName documentNameImage,
    @required TermsAndService termsAndService,
  }) = _PaymentSetup;

  const PaymentItemSetup._();


  factory PaymentItemSetup.empty() => PaymentItemSetup(
    firstName: FirstName(""),
    lastName: LastName(""),
    email: PaymentEmailAddress(""),
    dob: Dob(""),
    phoneNumber: PhoneNumber(""),
    gender: Gender("Male"),
    houseNumber: HouseNumber(""),
    line1: LineOne(""),
    line2: LineTwo(""),
    city: City(""),
    county: County(""),
    country: Country("GB"),
    postcode: Postcode(""),
    cardName: CardName(""),
    cardNumber: CardNumber("00012345"),
    sortCode: SortCode("10-88-00"),
    termsAndService: TermsAndService(false),
    passportUrlImage: PassportUrl(""),
    passportNameImage: PassportName(""),
    documentUrlImage: DocumentUrl(""),
    documentNameImage: DocumentName(""),
  );

  Option<ValueFailure<dynamic>> get failureOption {
    return firstName.failureOrUnit
        .andThen(lastName.failureOrUnit)
        .andThen(email.failureOrUnit)
        .andThen(dob.failureOrUnit)
        .andThen(phoneNumber.failureOrUnit)
        .andThen(gender.failureOrUnit)
        .andThen(houseNumber.failureOrUnit)
        .andThen(line1.failureOrUnit)
        .andThen(line2.failureOrUnit)
        .andThen(city.failureOrUnit)
        .andThen(county.failureOrUnit)
        .andThen(country.failureOrUnit)
        .andThen(postcode.failureOrUnit)
        .andThen(cardName.failureOrUnit)
        .andThen(cardNumber.failureOrUnit)
        .andThen(sortCode.failureOrUnit)
        .andThen(termsAndService.failureOrUnit)
        .andThen(passportUrlImage.failureOrUnit)
        .andThen(passportNameImage.failureOrUnit)
        .andThen(documentUrlImage.failureOrUnit)
        .andThen(documentNameImage.failureOrUnit)
        .fold((l) => some(l), (_) => none());
  }

}
