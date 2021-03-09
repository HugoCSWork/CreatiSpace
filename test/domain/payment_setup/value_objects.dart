import 'package:creatispace/domain/payment_setup/value_objects.dart';
import 'package:test/test.dart';

void main() {
  group('Email Address', () {
    test('Invalid email', () {
      final PaymentEmailAddress paymentEmailAddress = PaymentEmailAddress('invalid@email');
      var errorType = paymentEmailAddress.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<String>.paymentSetup(f: PaymentSetupValueFailures<String>.invalidEmail(failedValue: invalid@email))'));
      expect(paymentEmailAddress.isValid(), equals(false));
    });

    test('Valid Email Address', () {
      final PaymentEmailAddress itemName = PaymentEmailAddress('valid@email.com');
      var validType = itemName.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('valid@email.com'));
      expect(itemName.isValid(), equals(true));
    });
  });

  group('First name', () {
    test('Invalid first name', () {
      final FirstName firstName = FirstName('');
      var errorType = firstName.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<String>.paymentSetup(f: PaymentSetupValueFailures<String>.invalidFirstName(failedValue: ))'));
      expect(firstName.isValid(), equals(false));
    });

    test('Valid First name', () {
      final FirstName firstName = FirstName('bob');
      var validType = firstName.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('bob'));
      expect(firstName.isValid(), equals(true));
    });
  });

  group('Last name', () {
    test('Invalid Last name', () {
      final LastName lastName = LastName('');
      var errorType = lastName.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<String>.paymentSetup(f: PaymentSetupValueFailures<String>.invalidLastName(failedValue: ))'));
      expect(lastName.isValid(), equals(false));
    });

    test('Valid Last name', () {
      final LastName lastName = LastName('Lomas');
      var validType = lastName.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('Lomas'));
      expect(lastName.isValid(), equals(true));
    });
  });

  group('Date of Birth', () {
    test('Invalid Date of Birth', () {

      final Dob dob = Dob('2020-02-12');
      var errorType = dob.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<String>.paymentSetup(f: PaymentSetupValueFailures<String>.invalidDob(failedValue: 2020-02-12))'));
      expect(dob.isValid(), equals(false));
    });

    test('Valid Date of Birth', () {
      final Dob dob = Dob('1995-02-12');
      var validType = dob.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('1995-02-12'));
      expect(dob.isValid(), equals(true));
    });
  });

  group('Phone Number', () {
    test('Invalid Phone Number', () {

      final PhoneNumber phoneNumber = PhoneNumber('043221782');
      var errorType = phoneNumber.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<String>.paymentSetup(f: PaymentSetupValueFailures<String>.invalidPhoneNumber(failedValue: 043221782))'));
      expect(phoneNumber.isValid(), equals(false));
    });

    test('Valid Date of Birth', () {
      final PhoneNumber phoneNumber = PhoneNumber('+4474848921045');
      var validType = phoneNumber.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('+4474848921045'));
      expect(phoneNumber.isValid(), equals(true));
    });
  });

  group('Gender', () {
    test('Invalid Gender', () {

      final Gender gender = Gender('test');
      var errorType = gender.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<String>.paymentSetup(f: PaymentSetupValueFailures<String>.invalidGender(failedValue: test))'));
      expect(gender.isValid(), equals(false));
    });

    test('Valid Genders', () {
      final Gender genderM = Gender('Male');
      final Gender genderF = Gender('Female');
      final Gender genderP = Gender('Prefer to not say');
      var validTypeM = genderM.value.fold((l) => l, (r) => r);
      var validTypeF = genderF.value.fold((l) => l, (r) => r);
      var validTypeP = genderP.value.fold((l) => l, (r) => r);
      expect(validTypeM.toString(), equals('Male'));
      expect(genderM.isValid(), equals(true));
      expect(validTypeF.toString(), equals('Female'));
      expect(genderF.isValid(), equals(true));
      expect(validTypeP.toString(), equals('Prefer to not say'));
      expect(genderP.isValid(), equals(true));
    });
  });

  group('Sort Code', () {
    test('Invalid Sort Code', () {

      final SortCode sortCode = SortCode('10-4466');
      var errorType = sortCode.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<String>.paymentSetup(f: PaymentSetupValueFailures<String>.invalidSortCode(failedValue: 10-4466))'));
      expect(sortCode.isValid(), equals(false));
    });

    test('Valid Sort Code', () {
      final SortCode sortCode = SortCode('10-20-30');
      var validType = sortCode.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('10-20-30'));
      expect(sortCode.isValid(), equals(true));
    });
  });

  group('Validate Account Name', () {
    test('Invalid Account Name', () {

      final CardName cardName = CardName('');
      var errorType = cardName.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<String>.paymentSetup(f: PaymentSetupValueFailures<String>.emptyField(failedValue: ))'));
      expect(cardName.isValid(), equals(false));
    });

    test('Valid Account Number', () {
      final CardName cardName = CardName('MR B O B');
      var validType = cardName.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('MR B O B'));
      expect(cardName.isValid(), equals(true));
    });
  });

  group('Validate Account Number', () {
    test('Invalid Account Number', () {

      final CardNumber cardNumber = CardNumber('432432');
      var errorType = cardNumber.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<String>.paymentSetup(f: PaymentSetupValueFailures<String>.invalidAccountNumber(failedValue: 432432))'));
      expect(cardNumber.isValid(), equals(false));
    });

    test('Valid Account Number', () {
      final CardNumber cardNumber = CardNumber('09683719');
      var validType = cardNumber.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('09683719'));
      expect(cardNumber.isValid(), equals(true));
    });
  });

  group('Validate Line One', () {
    test('Invalid Line One', () {

      final LineOne lineOne = LineOne('');
      var errorType = lineOne.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<String>.paymentSetup(f: PaymentSetupValueFailures<String>.emptyField(failedValue: ))'));
      expect(lineOne.isValid(), equals(false));
    });

    test('Valid Line One', () {
      final LineOne lineOne = LineOne('7');
      var validType = lineOne.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('7'));
      expect(lineOne.isValid(), equals(true));
    });
  });

  group('Validate Line Two', () {
    test('Invalid Line Two', () {

      final LineTwo lineTwo = LineTwo('');
      var errorType = lineTwo.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<String>.paymentSetup(f: PaymentSetupValueFailures<String>.emptyField(failedValue: ))'));
      expect(lineTwo.isValid(), equals(false));
    });

    test('Valid Line Two', () {
      final LineTwo lineTwo = LineTwo('Test');
      var validType = lineTwo.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('Test'));
      expect(lineTwo.isValid(), equals(true));
    });
  });

  group('Validate Postcode', () {
    test('Invalid Postcode', () {

      final Postcode postcode = Postcode('');
      var errorType = postcode.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<String>.paymentSetup(f: PaymentSetupValueFailures<String>.emptyField(failedValue: ))'));
      expect(postcode.isValid(), equals(false));
    });

    test('Valid Postcode', () {
      final Postcode postcode = Postcode('nt45 4fd');
      var validType = postcode.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('nt45 4fd'));
      expect(postcode.isValid(), equals(true));
    });
  });

  group('Validate City', () {
    test('Invalid City', () {

      final City city = City('');
      var errorType = city.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<String>.paymentSetup(f: PaymentSetupValueFailures<String>.emptyField(failedValue: ))'));
      expect(city.isValid(), equals(false));
    });

    test('Valid City', () {
      final City city = City('Newcastle');
      var validType = city.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('Newcastle'));
      expect(city.isValid(), equals(true));
    });
  });

  group('Validate County', () {
    test('Invalid County', () {

      final County county = County('');
      var errorType = county.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<String>.paymentSetup(f: PaymentSetupValueFailures<String>.emptyField(failedValue: ))'));
      expect(county.isValid(), equals(false));
    });

    test('Valid County', () {
      final County county = County('Tyne');
      var validType = county.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('Tyne'));
      expect(county.isValid(), equals(true));
    });
  });

  group('Validate Country', () {
    test('Invalid Country', () {

      final Country country = Country('');
      var errorType = country.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<String>.paymentSetup(f: PaymentSetupValueFailures<String>.emptyField(failedValue: ))'));
      expect(country.isValid(), equals(false));
    });

    test('Valid Country', () {
      final Country country = Country('GB');
      var validType = country.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('GB'));
      expect(country.isValid(), equals(true));
    });
  });

  group('Validate DocumentUrl', () {
    test('Invalid DocumentUrl', () {

      final DocumentUrl documentUrl = DocumentUrl('');
      var errorType = documentUrl.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<String>.paymentSetup(f: PaymentSetupValueFailures<String>.emptyField(failedValue: ))'));
      expect(documentUrl.isValid(), equals(false));
    });

    test('Valid DocumentUrl', () {
      final DocumentUrl documentUrl = DocumentUrl('phone.url');
      var validType = documentUrl.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('phone.url'));
      expect(documentUrl.isValid(), equals(true));
    });
  });

  group('Validate DocumentName', () {
    test('Invalid DocumentName', () {

      final DocumentName documentName = DocumentName('');
      var errorType = documentName.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<String>.paymentSetup(f: PaymentSetupValueFailures<String>.emptyField(failedValue: ))'));
      expect(documentName.isValid(), equals(false));
    });

    test('Valid DocumentName', () {
      final DocumentName documentName = DocumentName('Document Name');
      var validType = documentName.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('Document Name'));
      expect(documentName.isValid(), equals(true));
    });
  });

  group('Validate PassportName', () {
    test('Invalid PassportName', () {

      final PassportName passportName = PassportName('');
      var errorType = passportName.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<String>.paymentSetup(f: PaymentSetupValueFailures<String>.emptyField(failedValue: ))'));
      expect(passportName.isValid(), equals(false));
    });

    test('Valid PassportName', () {
      final PassportName passportName = PassportName('Passport Name');
      var validType = passportName.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('Passport Name'));
      expect(passportName.isValid(), equals(true));
    });
  });

  group('Validate PassportUrl', () {
    test('Invalid PassportUrl', () {

      final PassportUrl passportUrl = PassportUrl('');
      var errorType = passportUrl.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<String>.paymentSetup(f: PaymentSetupValueFailures<String>.emptyField(failedValue: ))'));
      expect(passportUrl.isValid(), equals(false));
    });

    test('Valid PassportName', () {
      final PassportUrl passportUrl = PassportUrl('phone.url');
      var validType = passportUrl.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('phone.url'));
      expect(passportUrl.isValid(), equals(true));
    });
  });

}