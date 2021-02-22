import 'package:creatispace/domain/core/value_failures.dart';
import 'package:creatispace/domain/core/value_objects.dart';
import 'package:creatispace/domain/payment_setup/payment_setup_validators.dart';
import 'package:dartz/dartz.dart';

class PaymentEmailAddress extends ValueObject<String>{
  @override
  final Either<ValueFailure<String>, String> value;

  factory PaymentEmailAddress(String input) {
    assert(input != null);
    return PaymentEmailAddress._(validatePaymentEmail(input));
  }

  const PaymentEmailAddress._(this.value);
}

class FirstName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;


  factory FirstName(String input) {
    assert(input != null);
    return FirstName._(validateFirstName(input));
  }

  const FirstName._(this.value);

}

class LastName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;


  factory LastName(String input) {
    assert(input != null);
    return LastName._(validateLastName(input));
  }

  const LastName._(this.value);

}

class Dob extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;


  factory Dob(String input) {
    assert(input != null);
    return Dob._(validateDob(input));
  }

  const Dob._(this.value);

}

class PhoneNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;


  factory PhoneNumber(String input) {
    assert(input != null);
    return PhoneNumber._(validatePhoneNumber(input));
  }

  const PhoneNumber._(this.value);
}

class Gender extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;


  factory Gender(String input) {
    assert(input != null);
    return Gender._(validateGender(input));
  }

  const Gender._(this.value);
}

class HouseNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;


  factory HouseNumber(String input) {
    assert(input != null);
    return HouseNumber._(isEmpty(input));
  }

  const HouseNumber._(this.value);
}

class LineOne extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;


  factory LineOne(String input) {
    assert(input != null);
    return LineOne._(isEmpty(input));
  }

  const LineOne._(this.value);
}

class LineTwo extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;


  factory LineTwo(String input) {
    assert(input != null);
    return LineTwo._(isEmpty(input));
  }

  const LineTwo._(this.value);
}

class Postcode extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;


  factory Postcode(String input) {
    assert(input != null);
    return Postcode._(isEmpty(input));
  }

  const Postcode._(this.value);
}

class City extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;


  factory City(String input) {
    assert(input != null);
    return City._(isEmpty(input));
  }

  const City._(this.value);
}

class County extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;


  factory County(String input) {
    assert(input != null);
    return County._(isEmpty(input));
  }

  const County._(this.value);
}

class Country extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;


  factory Country(String input) {
    assert(input != null);
    return Country._(isEmpty(input));
  }

  const Country._(this.value);
}

class CardName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;


  factory CardName(String input) {
    assert(input != null);
    return CardName._(isEmpty(input));
  }

  const CardName._(this.value);
}

class CardNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;


  factory CardNumber(String input) {
    assert(input != null);
    return CardNumber._(validateAccountNumber(input));
  }

  const CardNumber._(this.value);
}

class SortCode extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;


  factory SortCode(String input) {
    assert(input != null);
    return SortCode._(validateSortCode(input));
  }

  const SortCode._(this.value);
}

class TermsAndService extends ValueObject<bool> {
  @override
  final Either<ValueFailure<bool>, bool> value;


  factory TermsAndService(bool input) {
    assert(input != null);
    return TermsAndService._(validateTermsAndService(input));
  }

  const TermsAndService._(this.value);
}

class DocumentUrl extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;


  factory DocumentUrl(String input) {
    assert(input != null);
    return DocumentUrl._(isEmpty(input));
  }

  const DocumentUrl._(this.value);
}

class DocumentName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;


  factory DocumentName(String input) {
    assert(input != null);
    return DocumentName._(isEmpty(input));
  }

  const DocumentName._(this.value);
}


class PassportName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;


  factory PassportName(String input) {
    assert(input != null);
    return PassportName._(isEmpty(input));
  }

  const PassportName._(this.value);
}

class PassportUrl extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;


  factory PassportUrl(String input) {
    assert(input != null);
    return PassportUrl._(isEmpty(input));
  }

  const PassportUrl._(this.value);
}