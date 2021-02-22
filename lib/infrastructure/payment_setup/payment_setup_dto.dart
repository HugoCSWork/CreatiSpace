import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:creatispace/domain/payment_setup/payment_setup_model/payment_setup.dart';
import 'package:creatispace/domain/payment_setup/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_setup_dto.freezed.dart';
part 'payment_setup_dto.g.dart';

@freezed
abstract class PaymentSetupDto implements _$PaymentSetupDto {
  const PaymentSetupDto._();

  const factory PaymentSetupDto({
    @required String firstName,
    @required String lastName,
    @required String email,
    @required String dob,
    @required String phoneNumber,
    @required String gender,
    @required String houseNumber,
    @required String line1,
    @required String line2,
    @required String postcode,
    @required String city,
    @required String country,
    @required String county,
    @required String cardName,
    @required String cardNumber,
    @required String sortCode,
    @required String passportUrlImage,
    @required String passportNameImage,
    @required String documentUrlImage,
    @required String documentNameImage,
    @required bool termsAndService,
  }) = _PaymentSetupDto;

  factory PaymentSetupDto.fromDomain(PaymentItemSetup paymentItemSetup,
      String passportUrl, String documentUrl) {
    return PaymentSetupDto(
        firstName: paymentItemSetup.firstName.getOrCrash(),
        lastName: paymentItemSetup.lastName.getOrCrash(),
        email: paymentItemSetup.email.getOrCrash(),
        dob: paymentItemSetup.dob.getOrCrash(),
        phoneNumber: paymentItemSetup.phoneNumber.getOrCrash(),
        gender: paymentItemSetup.gender.getOrCrash(),
        houseNumber: paymentItemSetup.houseNumber.getOrCrash(),
        line1: paymentItemSetup.line1.getOrCrash(),
        line2: paymentItemSetup.line2.getOrCrash(),
        city: paymentItemSetup.city.getOrCrash(),
        county: paymentItemSetup.county.getOrCrash(),
        country: paymentItemSetup.country.getOrCrash(),
        postcode: paymentItemSetup.postcode.getOrCrash(),
        cardName: paymentItemSetup.cardName.getOrCrash(),
        cardNumber: paymentItemSetup.cardNumber.getOrCrash(),
        sortCode: paymentItemSetup.sortCode.getOrCrash(),
        termsAndService: paymentItemSetup.termsAndService.getOrCrash(),
        passportNameImage: paymentItemSetup.passportNameImage.getOrCrash(),
        passportUrlImage: passportUrl,
        documentNameImage: paymentItemSetup.documentNameImage.getOrCrash(),
        documentUrlImage: documentUrl);
  }

  PaymentItemSetup toDomain() {
    return PaymentItemSetup(
        firstName: FirstName(firstName),
        lastName: LastName(lastName),
        email: PaymentEmailAddress(email),
        dob: Dob(dob),
        phoneNumber: PhoneNumber(phoneNumber),
        gender: Gender(gender),
        houseNumber: HouseNumber(houseNumber),
        line1: LineOne(line1),
        line2: LineTwo(line2),
        city: City(city),
        county: County(county),
        country: Country(country),
        postcode: Postcode(postcode),
        cardName: CardName(cardName),
        cardNumber: CardNumber(cardNumber),
        sortCode: SortCode(sortCode),
        termsAndService: TermsAndService(termsAndService),
        passportNameImage: PassportName(passportNameImage),
        passportUrlImage: PassportUrl(passportUrlImage),
        documentNameImage: DocumentName(documentNameImage),
        documentUrlImage: DocumentUrl(documentUrlImage));
  }

  factory PaymentSetupDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentSetupDtoFromJson(json);

  factory PaymentSetupDto.fromFirestore(DocumentSnapshot doc) {
    return PaymentSetupDto.fromJson(doc.data());
  }
}
