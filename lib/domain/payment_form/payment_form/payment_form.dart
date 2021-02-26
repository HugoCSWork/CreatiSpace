import 'package:creatispace/domain/core/value_failures.dart';
import 'package:creatispace/domain/payment_setup/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_form.freezed.dart';

@freezed
abstract class PaymentFormSetup implements _$PaymentFormSetup {
  const factory PaymentFormSetup({
    @required FirstName firstName,
    @required LastName lastName,
    @required PaymentEmailAddress email,
    @required PhoneNumber phoneNumber,
    @required HouseNumber houseNumber,
    @required LineOne line1,
    @required LineTwo line2,
    @required Postcode postcode,
    @required City city,
    @required Country country,
    @required County county,
  }) = _PaymentFormSetup;

  const PaymentFormSetup._();


  factory PaymentFormSetup.empty() => PaymentFormSetup(
    firstName: FirstName(""),
    lastName: LastName(""),
    email: PaymentEmailAddress(""),
    phoneNumber: PhoneNumber(""),
    houseNumber: HouseNumber(""),
    line1: LineOne(""),
    line2: LineTwo(""),
    city: City(""),
    county: County(""),
    country: Country(""),
    postcode: Postcode(""),
  );

  Option<ValueFailure<dynamic>> get failureOption {
    return firstName.failureOrUnit
        .andThen(lastName.failureOrUnit)
        .andThen(email.failureOrUnit)
        .andThen(phoneNumber.failureOrUnit)
        .andThen(houseNumber.failureOrUnit)
        .andThen(line1.failureOrUnit)
        .andThen(line2.failureOrUnit)
        .andThen(city.failureOrUnit)
        .andThen(county.failureOrUnit)
        .andThen(country.failureOrUnit)
        .andThen(postcode.failureOrUnit)
        .fold((l) => some(l), (_) => none());
  }

}
