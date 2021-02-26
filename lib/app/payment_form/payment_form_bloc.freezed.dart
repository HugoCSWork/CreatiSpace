// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'payment_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PaymentFormEventTearOff {
  const _$PaymentFormEventTearOff();

// ignore: unused_element
  _stepTapped stepTapped(int step) {
    return _stepTapped(
      step,
    );
  }

// ignore: unused_element
  _stepCancelled stepCancelled() {
    return const _stepCancelled();
  }

// ignore: unused_element
  _stepContinue stepContinue() {
    return const _stepContinue();
  }

// ignore: unused_element
  _Started started() {
    return const _Started();
  }

// ignore: unused_element
  FirstNameChanged firstNameChanged(String firstName) {
    return FirstNameChanged(
      firstName,
    );
  }

// ignore: unused_element
  LastNameChanged lastNameChanged(String lastName) {
    return LastNameChanged(
      lastName,
    );
  }

// ignore: unused_element
  EmailChanged emailChanged(String email) {
    return EmailChanged(
      email,
    );
  }

// ignore: unused_element
  PhoneNumberChanged phoneNumberChanged(String phoneNumber) {
    return PhoneNumberChanged(
      phoneNumber,
    );
  }

// ignore: unused_element
  ValidatePersonalSection validatePersonalSection() {
    return const ValidatePersonalSection();
  }

// ignore: unused_element
  CountyChanged countyChanged(String county) {
    return CountyChanged(
      county,
    );
  }

// ignore: unused_element
  HouseNumberChanged houseNumberChanged(String houseNumber) {
    return HouseNumberChanged(
      houseNumber,
    );
  }

// ignore: unused_element
  Line1Changed line1Changed(String line1) {
    return Line1Changed(
      line1,
    );
  }

// ignore: unused_element
  Line2hanged line2Changed(String line2) {
    return Line2hanged(
      line2,
    );
  }

// ignore: unused_element
  PostcodeChanged postcodeChanged(String postcode) {
    return PostcodeChanged(
      postcode,
    );
  }

// ignore: unused_element
  CityChanged cityChanged(String city) {
    return CityChanged(
      city,
    );
  }

// ignore: unused_element
  CountryChanged countryChanged(String country) {
    return CountryChanged(
      country,
    );
  }

// ignore: unused_element
  FindAddress findAddress() {
    return const FindAddress();
  }

// ignore: unused_element
  ValidateAddressSection validateAddressSection() {
    return const ValidateAddressSection();
  }

// ignore: unused_element
  _Saved saved(StripeCard card, String peerId, String amount, String itemId) {
    return _Saved(
      card,
      peerId,
      amount,
      itemId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PaymentFormEvent = _$PaymentFormEventTearOff();

/// @nodoc
mixin _$PaymentFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult stepTapped(int step),
    @required TResult stepCancelled(),
    @required TResult stepContinue(),
    @required TResult started(),
    @required TResult firstNameChanged(String firstName),
    @required TResult lastNameChanged(String lastName),
    @required TResult emailChanged(String email),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult validatePersonalSection(),
    @required TResult countyChanged(String county),
    @required TResult houseNumberChanged(String houseNumber),
    @required TResult line1Changed(String line1),
    @required TResult line2Changed(String line2),
    @required TResult postcodeChanged(String postcode),
    @required TResult cityChanged(String city),
    @required TResult countryChanged(String country),
    @required TResult findAddress(),
    @required TResult validateAddressSection(),
    @required
        TResult saved(
            StripeCard card, String peerId, String amount, String itemId),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult stepTapped(int step),
    TResult stepCancelled(),
    TResult stepContinue(),
    TResult started(),
    TResult firstNameChanged(String firstName),
    TResult lastNameChanged(String lastName),
    TResult emailChanged(String email),
    TResult phoneNumberChanged(String phoneNumber),
    TResult validatePersonalSection(),
    TResult countyChanged(String county),
    TResult houseNumberChanged(String houseNumber),
    TResult line1Changed(String line1),
    TResult line2Changed(String line2),
    TResult postcodeChanged(String postcode),
    TResult cityChanged(String city),
    TResult countryChanged(String country),
    TResult findAddress(),
    TResult validateAddressSection(),
    TResult saved(StripeCard card, String peerId, String amount, String itemId),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult stepTapped(_stepTapped value),
    @required TResult stepCancelled(_stepCancelled value),
    @required TResult stepContinue(_stepContinue value),
    @required TResult started(_Started value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult validatePersonalSection(ValidatePersonalSection value),
    @required TResult countyChanged(CountyChanged value),
    @required TResult houseNumberChanged(HouseNumberChanged value),
    @required TResult line1Changed(Line1Changed value),
    @required TResult line2Changed(Line2hanged value),
    @required TResult postcodeChanged(PostcodeChanged value),
    @required TResult cityChanged(CityChanged value),
    @required TResult countryChanged(CountryChanged value),
    @required TResult findAddress(FindAddress value),
    @required TResult validateAddressSection(ValidateAddressSection value),
    @required TResult saved(_Saved value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult stepTapped(_stepTapped value),
    TResult stepCancelled(_stepCancelled value),
    TResult stepContinue(_stepContinue value),
    TResult started(_Started value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult validatePersonalSection(ValidatePersonalSection value),
    TResult countyChanged(CountyChanged value),
    TResult houseNumberChanged(HouseNumberChanged value),
    TResult line1Changed(Line1Changed value),
    TResult line2Changed(Line2hanged value),
    TResult postcodeChanged(PostcodeChanged value),
    TResult cityChanged(CityChanged value),
    TResult countryChanged(CountryChanged value),
    TResult findAddress(FindAddress value),
    TResult validateAddressSection(ValidateAddressSection value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PaymentFormEventCopyWith<$Res> {
  factory $PaymentFormEventCopyWith(
          PaymentFormEvent value, $Res Function(PaymentFormEvent) then) =
      _$PaymentFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentFormEventCopyWithImpl<$Res>
    implements $PaymentFormEventCopyWith<$Res> {
  _$PaymentFormEventCopyWithImpl(this._value, this._then);

  final PaymentFormEvent _value;
  // ignore: unused_field
  final $Res Function(PaymentFormEvent) _then;
}

/// @nodoc
abstract class _$stepTappedCopyWith<$Res> {
  factory _$stepTappedCopyWith(
          _stepTapped value, $Res Function(_stepTapped) then) =
      __$stepTappedCopyWithImpl<$Res>;
  $Res call({int step});
}

/// @nodoc
class __$stepTappedCopyWithImpl<$Res>
    extends _$PaymentFormEventCopyWithImpl<$Res>
    implements _$stepTappedCopyWith<$Res> {
  __$stepTappedCopyWithImpl(
      _stepTapped _value, $Res Function(_stepTapped) _then)
      : super(_value, (v) => _then(v as _stepTapped));

  @override
  _stepTapped get _value => super._value as _stepTapped;

  @override
  $Res call({
    Object step = freezed,
  }) {
    return _then(_stepTapped(
      step == freezed ? _value.step : step as int,
    ));
  }
}

/// @nodoc
class _$_stepTapped implements _stepTapped {
  const _$_stepTapped(this.step) : assert(step != null);

  @override
  final int step;

  @override
  String toString() {
    return 'PaymentFormEvent.stepTapped(step: $step)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _stepTapped &&
            (identical(other.step, step) ||
                const DeepCollectionEquality().equals(other.step, step)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(step);

  @override
  _$stepTappedCopyWith<_stepTapped> get copyWith =>
      __$stepTappedCopyWithImpl<_stepTapped>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult stepTapped(int step),
    @required TResult stepCancelled(),
    @required TResult stepContinue(),
    @required TResult started(),
    @required TResult firstNameChanged(String firstName),
    @required TResult lastNameChanged(String lastName),
    @required TResult emailChanged(String email),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult validatePersonalSection(),
    @required TResult countyChanged(String county),
    @required TResult houseNumberChanged(String houseNumber),
    @required TResult line1Changed(String line1),
    @required TResult line2Changed(String line2),
    @required TResult postcodeChanged(String postcode),
    @required TResult cityChanged(String city),
    @required TResult countryChanged(String country),
    @required TResult findAddress(),
    @required TResult validateAddressSection(),
    @required
        TResult saved(
            StripeCard card, String peerId, String amount, String itemId),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return stepTapped(step);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult stepTapped(int step),
    TResult stepCancelled(),
    TResult stepContinue(),
    TResult started(),
    TResult firstNameChanged(String firstName),
    TResult lastNameChanged(String lastName),
    TResult emailChanged(String email),
    TResult phoneNumberChanged(String phoneNumber),
    TResult validatePersonalSection(),
    TResult countyChanged(String county),
    TResult houseNumberChanged(String houseNumber),
    TResult line1Changed(String line1),
    TResult line2Changed(String line2),
    TResult postcodeChanged(String postcode),
    TResult cityChanged(String city),
    TResult countryChanged(String country),
    TResult findAddress(),
    TResult validateAddressSection(),
    TResult saved(StripeCard card, String peerId, String amount, String itemId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (stepTapped != null) {
      return stepTapped(step);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult stepTapped(_stepTapped value),
    @required TResult stepCancelled(_stepCancelled value),
    @required TResult stepContinue(_stepContinue value),
    @required TResult started(_Started value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult validatePersonalSection(ValidatePersonalSection value),
    @required TResult countyChanged(CountyChanged value),
    @required TResult houseNumberChanged(HouseNumberChanged value),
    @required TResult line1Changed(Line1Changed value),
    @required TResult line2Changed(Line2hanged value),
    @required TResult postcodeChanged(PostcodeChanged value),
    @required TResult cityChanged(CityChanged value),
    @required TResult countryChanged(CountryChanged value),
    @required TResult findAddress(FindAddress value),
    @required TResult validateAddressSection(ValidateAddressSection value),
    @required TResult saved(_Saved value),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return stepTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult stepTapped(_stepTapped value),
    TResult stepCancelled(_stepCancelled value),
    TResult stepContinue(_stepContinue value),
    TResult started(_Started value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult validatePersonalSection(ValidatePersonalSection value),
    TResult countyChanged(CountyChanged value),
    TResult houseNumberChanged(HouseNumberChanged value),
    TResult line1Changed(Line1Changed value),
    TResult line2Changed(Line2hanged value),
    TResult postcodeChanged(PostcodeChanged value),
    TResult cityChanged(CityChanged value),
    TResult countryChanged(CountryChanged value),
    TResult findAddress(FindAddress value),
    TResult validateAddressSection(ValidateAddressSection value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (stepTapped != null) {
      return stepTapped(this);
    }
    return orElse();
  }
}

abstract class _stepTapped implements PaymentFormEvent {
  const factory _stepTapped(int step) = _$_stepTapped;

  int get step;
  _$stepTappedCopyWith<_stepTapped> get copyWith;
}

/// @nodoc
abstract class _$stepCancelledCopyWith<$Res> {
  factory _$stepCancelledCopyWith(
          _stepCancelled value, $Res Function(_stepCancelled) then) =
      __$stepCancelledCopyWithImpl<$Res>;
}

/// @nodoc
class __$stepCancelledCopyWithImpl<$Res>
    extends _$PaymentFormEventCopyWithImpl<$Res>
    implements _$stepCancelledCopyWith<$Res> {
  __$stepCancelledCopyWithImpl(
      _stepCancelled _value, $Res Function(_stepCancelled) _then)
      : super(_value, (v) => _then(v as _stepCancelled));

  @override
  _stepCancelled get _value => super._value as _stepCancelled;
}

/// @nodoc
class _$_stepCancelled implements _stepCancelled {
  const _$_stepCancelled();

  @override
  String toString() {
    return 'PaymentFormEvent.stepCancelled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _stepCancelled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult stepTapped(int step),
    @required TResult stepCancelled(),
    @required TResult stepContinue(),
    @required TResult started(),
    @required TResult firstNameChanged(String firstName),
    @required TResult lastNameChanged(String lastName),
    @required TResult emailChanged(String email),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult validatePersonalSection(),
    @required TResult countyChanged(String county),
    @required TResult houseNumberChanged(String houseNumber),
    @required TResult line1Changed(String line1),
    @required TResult line2Changed(String line2),
    @required TResult postcodeChanged(String postcode),
    @required TResult cityChanged(String city),
    @required TResult countryChanged(String country),
    @required TResult findAddress(),
    @required TResult validateAddressSection(),
    @required
        TResult saved(
            StripeCard card, String peerId, String amount, String itemId),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return stepCancelled();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult stepTapped(int step),
    TResult stepCancelled(),
    TResult stepContinue(),
    TResult started(),
    TResult firstNameChanged(String firstName),
    TResult lastNameChanged(String lastName),
    TResult emailChanged(String email),
    TResult phoneNumberChanged(String phoneNumber),
    TResult validatePersonalSection(),
    TResult countyChanged(String county),
    TResult houseNumberChanged(String houseNumber),
    TResult line1Changed(String line1),
    TResult line2Changed(String line2),
    TResult postcodeChanged(String postcode),
    TResult cityChanged(String city),
    TResult countryChanged(String country),
    TResult findAddress(),
    TResult validateAddressSection(),
    TResult saved(StripeCard card, String peerId, String amount, String itemId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (stepCancelled != null) {
      return stepCancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult stepTapped(_stepTapped value),
    @required TResult stepCancelled(_stepCancelled value),
    @required TResult stepContinue(_stepContinue value),
    @required TResult started(_Started value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult validatePersonalSection(ValidatePersonalSection value),
    @required TResult countyChanged(CountyChanged value),
    @required TResult houseNumberChanged(HouseNumberChanged value),
    @required TResult line1Changed(Line1Changed value),
    @required TResult line2Changed(Line2hanged value),
    @required TResult postcodeChanged(PostcodeChanged value),
    @required TResult cityChanged(CityChanged value),
    @required TResult countryChanged(CountryChanged value),
    @required TResult findAddress(FindAddress value),
    @required TResult validateAddressSection(ValidateAddressSection value),
    @required TResult saved(_Saved value),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return stepCancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult stepTapped(_stepTapped value),
    TResult stepCancelled(_stepCancelled value),
    TResult stepContinue(_stepContinue value),
    TResult started(_Started value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult validatePersonalSection(ValidatePersonalSection value),
    TResult countyChanged(CountyChanged value),
    TResult houseNumberChanged(HouseNumberChanged value),
    TResult line1Changed(Line1Changed value),
    TResult line2Changed(Line2hanged value),
    TResult postcodeChanged(PostcodeChanged value),
    TResult cityChanged(CityChanged value),
    TResult countryChanged(CountryChanged value),
    TResult findAddress(FindAddress value),
    TResult validateAddressSection(ValidateAddressSection value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (stepCancelled != null) {
      return stepCancelled(this);
    }
    return orElse();
  }
}

abstract class _stepCancelled implements PaymentFormEvent {
  const factory _stepCancelled() = _$_stepCancelled;
}

/// @nodoc
abstract class _$stepContinueCopyWith<$Res> {
  factory _$stepContinueCopyWith(
          _stepContinue value, $Res Function(_stepContinue) then) =
      __$stepContinueCopyWithImpl<$Res>;
}

/// @nodoc
class __$stepContinueCopyWithImpl<$Res>
    extends _$PaymentFormEventCopyWithImpl<$Res>
    implements _$stepContinueCopyWith<$Res> {
  __$stepContinueCopyWithImpl(
      _stepContinue _value, $Res Function(_stepContinue) _then)
      : super(_value, (v) => _then(v as _stepContinue));

  @override
  _stepContinue get _value => super._value as _stepContinue;
}

/// @nodoc
class _$_stepContinue implements _stepContinue {
  const _$_stepContinue();

  @override
  String toString() {
    return 'PaymentFormEvent.stepContinue()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _stepContinue);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult stepTapped(int step),
    @required TResult stepCancelled(),
    @required TResult stepContinue(),
    @required TResult started(),
    @required TResult firstNameChanged(String firstName),
    @required TResult lastNameChanged(String lastName),
    @required TResult emailChanged(String email),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult validatePersonalSection(),
    @required TResult countyChanged(String county),
    @required TResult houseNumberChanged(String houseNumber),
    @required TResult line1Changed(String line1),
    @required TResult line2Changed(String line2),
    @required TResult postcodeChanged(String postcode),
    @required TResult cityChanged(String city),
    @required TResult countryChanged(String country),
    @required TResult findAddress(),
    @required TResult validateAddressSection(),
    @required
        TResult saved(
            StripeCard card, String peerId, String amount, String itemId),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return stepContinue();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult stepTapped(int step),
    TResult stepCancelled(),
    TResult stepContinue(),
    TResult started(),
    TResult firstNameChanged(String firstName),
    TResult lastNameChanged(String lastName),
    TResult emailChanged(String email),
    TResult phoneNumberChanged(String phoneNumber),
    TResult validatePersonalSection(),
    TResult countyChanged(String county),
    TResult houseNumberChanged(String houseNumber),
    TResult line1Changed(String line1),
    TResult line2Changed(String line2),
    TResult postcodeChanged(String postcode),
    TResult cityChanged(String city),
    TResult countryChanged(String country),
    TResult findAddress(),
    TResult validateAddressSection(),
    TResult saved(StripeCard card, String peerId, String amount, String itemId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (stepContinue != null) {
      return stepContinue();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult stepTapped(_stepTapped value),
    @required TResult stepCancelled(_stepCancelled value),
    @required TResult stepContinue(_stepContinue value),
    @required TResult started(_Started value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult validatePersonalSection(ValidatePersonalSection value),
    @required TResult countyChanged(CountyChanged value),
    @required TResult houseNumberChanged(HouseNumberChanged value),
    @required TResult line1Changed(Line1Changed value),
    @required TResult line2Changed(Line2hanged value),
    @required TResult postcodeChanged(PostcodeChanged value),
    @required TResult cityChanged(CityChanged value),
    @required TResult countryChanged(CountryChanged value),
    @required TResult findAddress(FindAddress value),
    @required TResult validateAddressSection(ValidateAddressSection value),
    @required TResult saved(_Saved value),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return stepContinue(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult stepTapped(_stepTapped value),
    TResult stepCancelled(_stepCancelled value),
    TResult stepContinue(_stepContinue value),
    TResult started(_Started value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult validatePersonalSection(ValidatePersonalSection value),
    TResult countyChanged(CountyChanged value),
    TResult houseNumberChanged(HouseNumberChanged value),
    TResult line1Changed(Line1Changed value),
    TResult line2Changed(Line2hanged value),
    TResult postcodeChanged(PostcodeChanged value),
    TResult cityChanged(CityChanged value),
    TResult countryChanged(CountryChanged value),
    TResult findAddress(FindAddress value),
    TResult validateAddressSection(ValidateAddressSection value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (stepContinue != null) {
      return stepContinue(this);
    }
    return orElse();
  }
}

abstract class _stepContinue implements PaymentFormEvent {
  const factory _stepContinue() = _$_stepContinue;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$PaymentFormEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'PaymentFormEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult stepTapped(int step),
    @required TResult stepCancelled(),
    @required TResult stepContinue(),
    @required TResult started(),
    @required TResult firstNameChanged(String firstName),
    @required TResult lastNameChanged(String lastName),
    @required TResult emailChanged(String email),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult validatePersonalSection(),
    @required TResult countyChanged(String county),
    @required TResult houseNumberChanged(String houseNumber),
    @required TResult line1Changed(String line1),
    @required TResult line2Changed(String line2),
    @required TResult postcodeChanged(String postcode),
    @required TResult cityChanged(String city),
    @required TResult countryChanged(String country),
    @required TResult findAddress(),
    @required TResult validateAddressSection(),
    @required
        TResult saved(
            StripeCard card, String peerId, String amount, String itemId),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult stepTapped(int step),
    TResult stepCancelled(),
    TResult stepContinue(),
    TResult started(),
    TResult firstNameChanged(String firstName),
    TResult lastNameChanged(String lastName),
    TResult emailChanged(String email),
    TResult phoneNumberChanged(String phoneNumber),
    TResult validatePersonalSection(),
    TResult countyChanged(String county),
    TResult houseNumberChanged(String houseNumber),
    TResult line1Changed(String line1),
    TResult line2Changed(String line2),
    TResult postcodeChanged(String postcode),
    TResult cityChanged(String city),
    TResult countryChanged(String country),
    TResult findAddress(),
    TResult validateAddressSection(),
    TResult saved(StripeCard card, String peerId, String amount, String itemId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult stepTapped(_stepTapped value),
    @required TResult stepCancelled(_stepCancelled value),
    @required TResult stepContinue(_stepContinue value),
    @required TResult started(_Started value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult validatePersonalSection(ValidatePersonalSection value),
    @required TResult countyChanged(CountyChanged value),
    @required TResult houseNumberChanged(HouseNumberChanged value),
    @required TResult line1Changed(Line1Changed value),
    @required TResult line2Changed(Line2hanged value),
    @required TResult postcodeChanged(PostcodeChanged value),
    @required TResult cityChanged(CityChanged value),
    @required TResult countryChanged(CountryChanged value),
    @required TResult findAddress(FindAddress value),
    @required TResult validateAddressSection(ValidateAddressSection value),
    @required TResult saved(_Saved value),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult stepTapped(_stepTapped value),
    TResult stepCancelled(_stepCancelled value),
    TResult stepContinue(_stepContinue value),
    TResult started(_Started value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult validatePersonalSection(ValidatePersonalSection value),
    TResult countyChanged(CountyChanged value),
    TResult houseNumberChanged(HouseNumberChanged value),
    TResult line1Changed(Line1Changed value),
    TResult line2Changed(Line2hanged value),
    TResult postcodeChanged(PostcodeChanged value),
    TResult cityChanged(CityChanged value),
    TResult countryChanged(CountryChanged value),
    TResult findAddress(FindAddress value),
    TResult validateAddressSection(ValidateAddressSection value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PaymentFormEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class $FirstNameChangedCopyWith<$Res> {
  factory $FirstNameChangedCopyWith(
          FirstNameChanged value, $Res Function(FirstNameChanged) then) =
      _$FirstNameChangedCopyWithImpl<$Res>;
  $Res call({String firstName});
}

/// @nodoc
class _$FirstNameChangedCopyWithImpl<$Res>
    extends _$PaymentFormEventCopyWithImpl<$Res>
    implements $FirstNameChangedCopyWith<$Res> {
  _$FirstNameChangedCopyWithImpl(
      FirstNameChanged _value, $Res Function(FirstNameChanged) _then)
      : super(_value, (v) => _then(v as FirstNameChanged));

  @override
  FirstNameChanged get _value => super._value as FirstNameChanged;

  @override
  $Res call({
    Object firstName = freezed,
  }) {
    return _then(FirstNameChanged(
      firstName == freezed ? _value.firstName : firstName as String,
    ));
  }
}

/// @nodoc
class _$FirstNameChanged implements FirstNameChanged {
  const _$FirstNameChanged(this.firstName) : assert(firstName != null);

  @override
  final String firstName;

  @override
  String toString() {
    return 'PaymentFormEvent.firstNameChanged(firstName: $firstName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FirstNameChanged &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(firstName);

  @override
  $FirstNameChangedCopyWith<FirstNameChanged> get copyWith =>
      _$FirstNameChangedCopyWithImpl<FirstNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult stepTapped(int step),
    @required TResult stepCancelled(),
    @required TResult stepContinue(),
    @required TResult started(),
    @required TResult firstNameChanged(String firstName),
    @required TResult lastNameChanged(String lastName),
    @required TResult emailChanged(String email),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult validatePersonalSection(),
    @required TResult countyChanged(String county),
    @required TResult houseNumberChanged(String houseNumber),
    @required TResult line1Changed(String line1),
    @required TResult line2Changed(String line2),
    @required TResult postcodeChanged(String postcode),
    @required TResult cityChanged(String city),
    @required TResult countryChanged(String country),
    @required TResult findAddress(),
    @required TResult validateAddressSection(),
    @required
        TResult saved(
            StripeCard card, String peerId, String amount, String itemId),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return firstNameChanged(firstName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult stepTapped(int step),
    TResult stepCancelled(),
    TResult stepContinue(),
    TResult started(),
    TResult firstNameChanged(String firstName),
    TResult lastNameChanged(String lastName),
    TResult emailChanged(String email),
    TResult phoneNumberChanged(String phoneNumber),
    TResult validatePersonalSection(),
    TResult countyChanged(String county),
    TResult houseNumberChanged(String houseNumber),
    TResult line1Changed(String line1),
    TResult line2Changed(String line2),
    TResult postcodeChanged(String postcode),
    TResult cityChanged(String city),
    TResult countryChanged(String country),
    TResult findAddress(),
    TResult validateAddressSection(),
    TResult saved(StripeCard card, String peerId, String amount, String itemId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (firstNameChanged != null) {
      return firstNameChanged(firstName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult stepTapped(_stepTapped value),
    @required TResult stepCancelled(_stepCancelled value),
    @required TResult stepContinue(_stepContinue value),
    @required TResult started(_Started value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult validatePersonalSection(ValidatePersonalSection value),
    @required TResult countyChanged(CountyChanged value),
    @required TResult houseNumberChanged(HouseNumberChanged value),
    @required TResult line1Changed(Line1Changed value),
    @required TResult line2Changed(Line2hanged value),
    @required TResult postcodeChanged(PostcodeChanged value),
    @required TResult cityChanged(CityChanged value),
    @required TResult countryChanged(CountryChanged value),
    @required TResult findAddress(FindAddress value),
    @required TResult validateAddressSection(ValidateAddressSection value),
    @required TResult saved(_Saved value),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return firstNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult stepTapped(_stepTapped value),
    TResult stepCancelled(_stepCancelled value),
    TResult stepContinue(_stepContinue value),
    TResult started(_Started value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult validatePersonalSection(ValidatePersonalSection value),
    TResult countyChanged(CountyChanged value),
    TResult houseNumberChanged(HouseNumberChanged value),
    TResult line1Changed(Line1Changed value),
    TResult line2Changed(Line2hanged value),
    TResult postcodeChanged(PostcodeChanged value),
    TResult cityChanged(CityChanged value),
    TResult countryChanged(CountryChanged value),
    TResult findAddress(FindAddress value),
    TResult validateAddressSection(ValidateAddressSection value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (firstNameChanged != null) {
      return firstNameChanged(this);
    }
    return orElse();
  }
}

abstract class FirstNameChanged implements PaymentFormEvent {
  const factory FirstNameChanged(String firstName) = _$FirstNameChanged;

  String get firstName;
  $FirstNameChangedCopyWith<FirstNameChanged> get copyWith;
}

/// @nodoc
abstract class $LastNameChangedCopyWith<$Res> {
  factory $LastNameChangedCopyWith(
          LastNameChanged value, $Res Function(LastNameChanged) then) =
      _$LastNameChangedCopyWithImpl<$Res>;
  $Res call({String lastName});
}

/// @nodoc
class _$LastNameChangedCopyWithImpl<$Res>
    extends _$PaymentFormEventCopyWithImpl<$Res>
    implements $LastNameChangedCopyWith<$Res> {
  _$LastNameChangedCopyWithImpl(
      LastNameChanged _value, $Res Function(LastNameChanged) _then)
      : super(_value, (v) => _then(v as LastNameChanged));

  @override
  LastNameChanged get _value => super._value as LastNameChanged;

  @override
  $Res call({
    Object lastName = freezed,
  }) {
    return _then(LastNameChanged(
      lastName == freezed ? _value.lastName : lastName as String,
    ));
  }
}

/// @nodoc
class _$LastNameChanged implements LastNameChanged {
  const _$LastNameChanged(this.lastName) : assert(lastName != null);

  @override
  final String lastName;

  @override
  String toString() {
    return 'PaymentFormEvent.lastNameChanged(lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LastNameChanged &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(lastName);

  @override
  $LastNameChangedCopyWith<LastNameChanged> get copyWith =>
      _$LastNameChangedCopyWithImpl<LastNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult stepTapped(int step),
    @required TResult stepCancelled(),
    @required TResult stepContinue(),
    @required TResult started(),
    @required TResult firstNameChanged(String firstName),
    @required TResult lastNameChanged(String lastName),
    @required TResult emailChanged(String email),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult validatePersonalSection(),
    @required TResult countyChanged(String county),
    @required TResult houseNumberChanged(String houseNumber),
    @required TResult line1Changed(String line1),
    @required TResult line2Changed(String line2),
    @required TResult postcodeChanged(String postcode),
    @required TResult cityChanged(String city),
    @required TResult countryChanged(String country),
    @required TResult findAddress(),
    @required TResult validateAddressSection(),
    @required
        TResult saved(
            StripeCard card, String peerId, String amount, String itemId),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return lastNameChanged(lastName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult stepTapped(int step),
    TResult stepCancelled(),
    TResult stepContinue(),
    TResult started(),
    TResult firstNameChanged(String firstName),
    TResult lastNameChanged(String lastName),
    TResult emailChanged(String email),
    TResult phoneNumberChanged(String phoneNumber),
    TResult validatePersonalSection(),
    TResult countyChanged(String county),
    TResult houseNumberChanged(String houseNumber),
    TResult line1Changed(String line1),
    TResult line2Changed(String line2),
    TResult postcodeChanged(String postcode),
    TResult cityChanged(String city),
    TResult countryChanged(String country),
    TResult findAddress(),
    TResult validateAddressSection(),
    TResult saved(StripeCard card, String peerId, String amount, String itemId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (lastNameChanged != null) {
      return lastNameChanged(lastName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult stepTapped(_stepTapped value),
    @required TResult stepCancelled(_stepCancelled value),
    @required TResult stepContinue(_stepContinue value),
    @required TResult started(_Started value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult validatePersonalSection(ValidatePersonalSection value),
    @required TResult countyChanged(CountyChanged value),
    @required TResult houseNumberChanged(HouseNumberChanged value),
    @required TResult line1Changed(Line1Changed value),
    @required TResult line2Changed(Line2hanged value),
    @required TResult postcodeChanged(PostcodeChanged value),
    @required TResult cityChanged(CityChanged value),
    @required TResult countryChanged(CountryChanged value),
    @required TResult findAddress(FindAddress value),
    @required TResult validateAddressSection(ValidateAddressSection value),
    @required TResult saved(_Saved value),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return lastNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult stepTapped(_stepTapped value),
    TResult stepCancelled(_stepCancelled value),
    TResult stepContinue(_stepContinue value),
    TResult started(_Started value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult validatePersonalSection(ValidatePersonalSection value),
    TResult countyChanged(CountyChanged value),
    TResult houseNumberChanged(HouseNumberChanged value),
    TResult line1Changed(Line1Changed value),
    TResult line2Changed(Line2hanged value),
    TResult postcodeChanged(PostcodeChanged value),
    TResult cityChanged(CityChanged value),
    TResult countryChanged(CountryChanged value),
    TResult findAddress(FindAddress value),
    TResult validateAddressSection(ValidateAddressSection value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (lastNameChanged != null) {
      return lastNameChanged(this);
    }
    return orElse();
  }
}

abstract class LastNameChanged implements PaymentFormEvent {
  const factory LastNameChanged(String lastName) = _$LastNameChanged;

  String get lastName;
  $LastNameChangedCopyWith<LastNameChanged> get copyWith;
}

/// @nodoc
abstract class $EmailChangedCopyWith<$Res> {
  factory $EmailChangedCopyWith(
          EmailChanged value, $Res Function(EmailChanged) then) =
      _$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$EmailChangedCopyWithImpl<$Res>
    extends _$PaymentFormEventCopyWithImpl<$Res>
    implements $EmailChangedCopyWith<$Res> {
  _$EmailChangedCopyWithImpl(
      EmailChanged _value, $Res Function(EmailChanged) _then)
      : super(_value, (v) => _then(v as EmailChanged));

  @override
  EmailChanged get _value => super._value as EmailChanged;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(EmailChanged(
      email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.email) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'PaymentFormEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  $EmailChangedCopyWith<EmailChanged> get copyWith =>
      _$EmailChangedCopyWithImpl<EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult stepTapped(int step),
    @required TResult stepCancelled(),
    @required TResult stepContinue(),
    @required TResult started(),
    @required TResult firstNameChanged(String firstName),
    @required TResult lastNameChanged(String lastName),
    @required TResult emailChanged(String email),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult validatePersonalSection(),
    @required TResult countyChanged(String county),
    @required TResult houseNumberChanged(String houseNumber),
    @required TResult line1Changed(String line1),
    @required TResult line2Changed(String line2),
    @required TResult postcodeChanged(String postcode),
    @required TResult cityChanged(String city),
    @required TResult countryChanged(String country),
    @required TResult findAddress(),
    @required TResult validateAddressSection(),
    @required
        TResult saved(
            StripeCard card, String peerId, String amount, String itemId),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult stepTapped(int step),
    TResult stepCancelled(),
    TResult stepContinue(),
    TResult started(),
    TResult firstNameChanged(String firstName),
    TResult lastNameChanged(String lastName),
    TResult emailChanged(String email),
    TResult phoneNumberChanged(String phoneNumber),
    TResult validatePersonalSection(),
    TResult countyChanged(String county),
    TResult houseNumberChanged(String houseNumber),
    TResult line1Changed(String line1),
    TResult line2Changed(String line2),
    TResult postcodeChanged(String postcode),
    TResult cityChanged(String city),
    TResult countryChanged(String country),
    TResult findAddress(),
    TResult validateAddressSection(),
    TResult saved(StripeCard card, String peerId, String amount, String itemId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult stepTapped(_stepTapped value),
    @required TResult stepCancelled(_stepCancelled value),
    @required TResult stepContinue(_stepContinue value),
    @required TResult started(_Started value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult validatePersonalSection(ValidatePersonalSection value),
    @required TResult countyChanged(CountyChanged value),
    @required TResult houseNumberChanged(HouseNumberChanged value),
    @required TResult line1Changed(Line1Changed value),
    @required TResult line2Changed(Line2hanged value),
    @required TResult postcodeChanged(PostcodeChanged value),
    @required TResult cityChanged(CityChanged value),
    @required TResult countryChanged(CountryChanged value),
    @required TResult findAddress(FindAddress value),
    @required TResult validateAddressSection(ValidateAddressSection value),
    @required TResult saved(_Saved value),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult stepTapped(_stepTapped value),
    TResult stepCancelled(_stepCancelled value),
    TResult stepContinue(_stepContinue value),
    TResult started(_Started value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult validatePersonalSection(ValidatePersonalSection value),
    TResult countyChanged(CountyChanged value),
    TResult houseNumberChanged(HouseNumberChanged value),
    TResult line1Changed(Line1Changed value),
    TResult line2Changed(Line2hanged value),
    TResult postcodeChanged(PostcodeChanged value),
    TResult cityChanged(CityChanged value),
    TResult countryChanged(CountryChanged value),
    TResult findAddress(FindAddress value),
    TResult validateAddressSection(ValidateAddressSection value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements PaymentFormEvent {
  const factory EmailChanged(String email) = _$EmailChanged;

  String get email;
  $EmailChangedCopyWith<EmailChanged> get copyWith;
}

/// @nodoc
abstract class $PhoneNumberChangedCopyWith<$Res> {
  factory $PhoneNumberChangedCopyWith(
          PhoneNumberChanged value, $Res Function(PhoneNumberChanged) then) =
      _$PhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

/// @nodoc
class _$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$PaymentFormEventCopyWithImpl<$Res>
    implements $PhoneNumberChangedCopyWith<$Res> {
  _$PhoneNumberChangedCopyWithImpl(
      PhoneNumberChanged _value, $Res Function(PhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as PhoneNumberChanged));

  @override
  PhoneNumberChanged get _value => super._value as PhoneNumberChanged;

  @override
  $Res call({
    Object phoneNumber = freezed,
  }) {
    return _then(PhoneNumberChanged(
      phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
    ));
  }
}

/// @nodoc
class _$PhoneNumberChanged implements PhoneNumberChanged {
  const _$PhoneNumberChanged(this.phoneNumber) : assert(phoneNumber != null);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'PaymentFormEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PhoneNumberChanged &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phoneNumber);

  @override
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith =>
      _$PhoneNumberChangedCopyWithImpl<PhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult stepTapped(int step),
    @required TResult stepCancelled(),
    @required TResult stepContinue(),
    @required TResult started(),
    @required TResult firstNameChanged(String firstName),
    @required TResult lastNameChanged(String lastName),
    @required TResult emailChanged(String email),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult validatePersonalSection(),
    @required TResult countyChanged(String county),
    @required TResult houseNumberChanged(String houseNumber),
    @required TResult line1Changed(String line1),
    @required TResult line2Changed(String line2),
    @required TResult postcodeChanged(String postcode),
    @required TResult cityChanged(String city),
    @required TResult countryChanged(String country),
    @required TResult findAddress(),
    @required TResult validateAddressSection(),
    @required
        TResult saved(
            StripeCard card, String peerId, String amount, String itemId),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult stepTapped(int step),
    TResult stepCancelled(),
    TResult stepContinue(),
    TResult started(),
    TResult firstNameChanged(String firstName),
    TResult lastNameChanged(String lastName),
    TResult emailChanged(String email),
    TResult phoneNumberChanged(String phoneNumber),
    TResult validatePersonalSection(),
    TResult countyChanged(String county),
    TResult houseNumberChanged(String houseNumber),
    TResult line1Changed(String line1),
    TResult line2Changed(String line2),
    TResult postcodeChanged(String postcode),
    TResult cityChanged(String city),
    TResult countryChanged(String country),
    TResult findAddress(),
    TResult validateAddressSection(),
    TResult saved(StripeCard card, String peerId, String amount, String itemId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult stepTapped(_stepTapped value),
    @required TResult stepCancelled(_stepCancelled value),
    @required TResult stepContinue(_stepContinue value),
    @required TResult started(_Started value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult validatePersonalSection(ValidatePersonalSection value),
    @required TResult countyChanged(CountyChanged value),
    @required TResult houseNumberChanged(HouseNumberChanged value),
    @required TResult line1Changed(Line1Changed value),
    @required TResult line2Changed(Line2hanged value),
    @required TResult postcodeChanged(PostcodeChanged value),
    @required TResult cityChanged(CityChanged value),
    @required TResult countryChanged(CountryChanged value),
    @required TResult findAddress(FindAddress value),
    @required TResult validateAddressSection(ValidateAddressSection value),
    @required TResult saved(_Saved value),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult stepTapped(_stepTapped value),
    TResult stepCancelled(_stepCancelled value),
    TResult stepContinue(_stepContinue value),
    TResult started(_Started value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult validatePersonalSection(ValidatePersonalSection value),
    TResult countyChanged(CountyChanged value),
    TResult houseNumberChanged(HouseNumberChanged value),
    TResult line1Changed(Line1Changed value),
    TResult line2Changed(Line2hanged value),
    TResult postcodeChanged(PostcodeChanged value),
    TResult cityChanged(CityChanged value),
    TResult countryChanged(CountryChanged value),
    TResult findAddress(FindAddress value),
    TResult validateAddressSection(ValidateAddressSection value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberChanged implements PaymentFormEvent {
  const factory PhoneNumberChanged(String phoneNumber) = _$PhoneNumberChanged;

  String get phoneNumber;
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith;
}

/// @nodoc
abstract class $ValidatePersonalSectionCopyWith<$Res> {
  factory $ValidatePersonalSectionCopyWith(ValidatePersonalSection value,
          $Res Function(ValidatePersonalSection) then) =
      _$ValidatePersonalSectionCopyWithImpl<$Res>;
}

/// @nodoc
class _$ValidatePersonalSectionCopyWithImpl<$Res>
    extends _$PaymentFormEventCopyWithImpl<$Res>
    implements $ValidatePersonalSectionCopyWith<$Res> {
  _$ValidatePersonalSectionCopyWithImpl(ValidatePersonalSection _value,
      $Res Function(ValidatePersonalSection) _then)
      : super(_value, (v) => _then(v as ValidatePersonalSection));

  @override
  ValidatePersonalSection get _value => super._value as ValidatePersonalSection;
}

/// @nodoc
class _$ValidatePersonalSection implements ValidatePersonalSection {
  const _$ValidatePersonalSection();

  @override
  String toString() {
    return 'PaymentFormEvent.validatePersonalSection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ValidatePersonalSection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult stepTapped(int step),
    @required TResult stepCancelled(),
    @required TResult stepContinue(),
    @required TResult started(),
    @required TResult firstNameChanged(String firstName),
    @required TResult lastNameChanged(String lastName),
    @required TResult emailChanged(String email),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult validatePersonalSection(),
    @required TResult countyChanged(String county),
    @required TResult houseNumberChanged(String houseNumber),
    @required TResult line1Changed(String line1),
    @required TResult line2Changed(String line2),
    @required TResult postcodeChanged(String postcode),
    @required TResult cityChanged(String city),
    @required TResult countryChanged(String country),
    @required TResult findAddress(),
    @required TResult validateAddressSection(),
    @required
        TResult saved(
            StripeCard card, String peerId, String amount, String itemId),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return validatePersonalSection();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult stepTapped(int step),
    TResult stepCancelled(),
    TResult stepContinue(),
    TResult started(),
    TResult firstNameChanged(String firstName),
    TResult lastNameChanged(String lastName),
    TResult emailChanged(String email),
    TResult phoneNumberChanged(String phoneNumber),
    TResult validatePersonalSection(),
    TResult countyChanged(String county),
    TResult houseNumberChanged(String houseNumber),
    TResult line1Changed(String line1),
    TResult line2Changed(String line2),
    TResult postcodeChanged(String postcode),
    TResult cityChanged(String city),
    TResult countryChanged(String country),
    TResult findAddress(),
    TResult validateAddressSection(),
    TResult saved(StripeCard card, String peerId, String amount, String itemId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (validatePersonalSection != null) {
      return validatePersonalSection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult stepTapped(_stepTapped value),
    @required TResult stepCancelled(_stepCancelled value),
    @required TResult stepContinue(_stepContinue value),
    @required TResult started(_Started value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult validatePersonalSection(ValidatePersonalSection value),
    @required TResult countyChanged(CountyChanged value),
    @required TResult houseNumberChanged(HouseNumberChanged value),
    @required TResult line1Changed(Line1Changed value),
    @required TResult line2Changed(Line2hanged value),
    @required TResult postcodeChanged(PostcodeChanged value),
    @required TResult cityChanged(CityChanged value),
    @required TResult countryChanged(CountryChanged value),
    @required TResult findAddress(FindAddress value),
    @required TResult validateAddressSection(ValidateAddressSection value),
    @required TResult saved(_Saved value),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return validatePersonalSection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult stepTapped(_stepTapped value),
    TResult stepCancelled(_stepCancelled value),
    TResult stepContinue(_stepContinue value),
    TResult started(_Started value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult validatePersonalSection(ValidatePersonalSection value),
    TResult countyChanged(CountyChanged value),
    TResult houseNumberChanged(HouseNumberChanged value),
    TResult line1Changed(Line1Changed value),
    TResult line2Changed(Line2hanged value),
    TResult postcodeChanged(PostcodeChanged value),
    TResult cityChanged(CityChanged value),
    TResult countryChanged(CountryChanged value),
    TResult findAddress(FindAddress value),
    TResult validateAddressSection(ValidateAddressSection value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (validatePersonalSection != null) {
      return validatePersonalSection(this);
    }
    return orElse();
  }
}

abstract class ValidatePersonalSection implements PaymentFormEvent {
  const factory ValidatePersonalSection() = _$ValidatePersonalSection;
}

/// @nodoc
abstract class $CountyChangedCopyWith<$Res> {
  factory $CountyChangedCopyWith(
          CountyChanged value, $Res Function(CountyChanged) then) =
      _$CountyChangedCopyWithImpl<$Res>;
  $Res call({String county});
}

/// @nodoc
class _$CountyChangedCopyWithImpl<$Res>
    extends _$PaymentFormEventCopyWithImpl<$Res>
    implements $CountyChangedCopyWith<$Res> {
  _$CountyChangedCopyWithImpl(
      CountyChanged _value, $Res Function(CountyChanged) _then)
      : super(_value, (v) => _then(v as CountyChanged));

  @override
  CountyChanged get _value => super._value as CountyChanged;

  @override
  $Res call({
    Object county = freezed,
  }) {
    return _then(CountyChanged(
      county == freezed ? _value.county : county as String,
    ));
  }
}

/// @nodoc
class _$CountyChanged implements CountyChanged {
  const _$CountyChanged(this.county) : assert(county != null);

  @override
  final String county;

  @override
  String toString() {
    return 'PaymentFormEvent.countyChanged(county: $county)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CountyChanged &&
            (identical(other.county, county) ||
                const DeepCollectionEquality().equals(other.county, county)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(county);

  @override
  $CountyChangedCopyWith<CountyChanged> get copyWith =>
      _$CountyChangedCopyWithImpl<CountyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult stepTapped(int step),
    @required TResult stepCancelled(),
    @required TResult stepContinue(),
    @required TResult started(),
    @required TResult firstNameChanged(String firstName),
    @required TResult lastNameChanged(String lastName),
    @required TResult emailChanged(String email),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult validatePersonalSection(),
    @required TResult countyChanged(String county),
    @required TResult houseNumberChanged(String houseNumber),
    @required TResult line1Changed(String line1),
    @required TResult line2Changed(String line2),
    @required TResult postcodeChanged(String postcode),
    @required TResult cityChanged(String city),
    @required TResult countryChanged(String country),
    @required TResult findAddress(),
    @required TResult validateAddressSection(),
    @required
        TResult saved(
            StripeCard card, String peerId, String amount, String itemId),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return countyChanged(county);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult stepTapped(int step),
    TResult stepCancelled(),
    TResult stepContinue(),
    TResult started(),
    TResult firstNameChanged(String firstName),
    TResult lastNameChanged(String lastName),
    TResult emailChanged(String email),
    TResult phoneNumberChanged(String phoneNumber),
    TResult validatePersonalSection(),
    TResult countyChanged(String county),
    TResult houseNumberChanged(String houseNumber),
    TResult line1Changed(String line1),
    TResult line2Changed(String line2),
    TResult postcodeChanged(String postcode),
    TResult cityChanged(String city),
    TResult countryChanged(String country),
    TResult findAddress(),
    TResult validateAddressSection(),
    TResult saved(StripeCard card, String peerId, String amount, String itemId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (countyChanged != null) {
      return countyChanged(county);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult stepTapped(_stepTapped value),
    @required TResult stepCancelled(_stepCancelled value),
    @required TResult stepContinue(_stepContinue value),
    @required TResult started(_Started value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult validatePersonalSection(ValidatePersonalSection value),
    @required TResult countyChanged(CountyChanged value),
    @required TResult houseNumberChanged(HouseNumberChanged value),
    @required TResult line1Changed(Line1Changed value),
    @required TResult line2Changed(Line2hanged value),
    @required TResult postcodeChanged(PostcodeChanged value),
    @required TResult cityChanged(CityChanged value),
    @required TResult countryChanged(CountryChanged value),
    @required TResult findAddress(FindAddress value),
    @required TResult validateAddressSection(ValidateAddressSection value),
    @required TResult saved(_Saved value),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return countyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult stepTapped(_stepTapped value),
    TResult stepCancelled(_stepCancelled value),
    TResult stepContinue(_stepContinue value),
    TResult started(_Started value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult validatePersonalSection(ValidatePersonalSection value),
    TResult countyChanged(CountyChanged value),
    TResult houseNumberChanged(HouseNumberChanged value),
    TResult line1Changed(Line1Changed value),
    TResult line2Changed(Line2hanged value),
    TResult postcodeChanged(PostcodeChanged value),
    TResult cityChanged(CityChanged value),
    TResult countryChanged(CountryChanged value),
    TResult findAddress(FindAddress value),
    TResult validateAddressSection(ValidateAddressSection value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (countyChanged != null) {
      return countyChanged(this);
    }
    return orElse();
  }
}

abstract class CountyChanged implements PaymentFormEvent {
  const factory CountyChanged(String county) = _$CountyChanged;

  String get county;
  $CountyChangedCopyWith<CountyChanged> get copyWith;
}

/// @nodoc
abstract class $HouseNumberChangedCopyWith<$Res> {
  factory $HouseNumberChangedCopyWith(
          HouseNumberChanged value, $Res Function(HouseNumberChanged) then) =
      _$HouseNumberChangedCopyWithImpl<$Res>;
  $Res call({String houseNumber});
}

/// @nodoc
class _$HouseNumberChangedCopyWithImpl<$Res>
    extends _$PaymentFormEventCopyWithImpl<$Res>
    implements $HouseNumberChangedCopyWith<$Res> {
  _$HouseNumberChangedCopyWithImpl(
      HouseNumberChanged _value, $Res Function(HouseNumberChanged) _then)
      : super(_value, (v) => _then(v as HouseNumberChanged));

  @override
  HouseNumberChanged get _value => super._value as HouseNumberChanged;

  @override
  $Res call({
    Object houseNumber = freezed,
  }) {
    return _then(HouseNumberChanged(
      houseNumber == freezed ? _value.houseNumber : houseNumber as String,
    ));
  }
}

/// @nodoc
class _$HouseNumberChanged implements HouseNumberChanged {
  const _$HouseNumberChanged(this.houseNumber) : assert(houseNumber != null);

  @override
  final String houseNumber;

  @override
  String toString() {
    return 'PaymentFormEvent.houseNumberChanged(houseNumber: $houseNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HouseNumberChanged &&
            (identical(other.houseNumber, houseNumber) ||
                const DeepCollectionEquality()
                    .equals(other.houseNumber, houseNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(houseNumber);

  @override
  $HouseNumberChangedCopyWith<HouseNumberChanged> get copyWith =>
      _$HouseNumberChangedCopyWithImpl<HouseNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult stepTapped(int step),
    @required TResult stepCancelled(),
    @required TResult stepContinue(),
    @required TResult started(),
    @required TResult firstNameChanged(String firstName),
    @required TResult lastNameChanged(String lastName),
    @required TResult emailChanged(String email),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult validatePersonalSection(),
    @required TResult countyChanged(String county),
    @required TResult houseNumberChanged(String houseNumber),
    @required TResult line1Changed(String line1),
    @required TResult line2Changed(String line2),
    @required TResult postcodeChanged(String postcode),
    @required TResult cityChanged(String city),
    @required TResult countryChanged(String country),
    @required TResult findAddress(),
    @required TResult validateAddressSection(),
    @required
        TResult saved(
            StripeCard card, String peerId, String amount, String itemId),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return houseNumberChanged(houseNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult stepTapped(int step),
    TResult stepCancelled(),
    TResult stepContinue(),
    TResult started(),
    TResult firstNameChanged(String firstName),
    TResult lastNameChanged(String lastName),
    TResult emailChanged(String email),
    TResult phoneNumberChanged(String phoneNumber),
    TResult validatePersonalSection(),
    TResult countyChanged(String county),
    TResult houseNumberChanged(String houseNumber),
    TResult line1Changed(String line1),
    TResult line2Changed(String line2),
    TResult postcodeChanged(String postcode),
    TResult cityChanged(String city),
    TResult countryChanged(String country),
    TResult findAddress(),
    TResult validateAddressSection(),
    TResult saved(StripeCard card, String peerId, String amount, String itemId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (houseNumberChanged != null) {
      return houseNumberChanged(houseNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult stepTapped(_stepTapped value),
    @required TResult stepCancelled(_stepCancelled value),
    @required TResult stepContinue(_stepContinue value),
    @required TResult started(_Started value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult validatePersonalSection(ValidatePersonalSection value),
    @required TResult countyChanged(CountyChanged value),
    @required TResult houseNumberChanged(HouseNumberChanged value),
    @required TResult line1Changed(Line1Changed value),
    @required TResult line2Changed(Line2hanged value),
    @required TResult postcodeChanged(PostcodeChanged value),
    @required TResult cityChanged(CityChanged value),
    @required TResult countryChanged(CountryChanged value),
    @required TResult findAddress(FindAddress value),
    @required TResult validateAddressSection(ValidateAddressSection value),
    @required TResult saved(_Saved value),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return houseNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult stepTapped(_stepTapped value),
    TResult stepCancelled(_stepCancelled value),
    TResult stepContinue(_stepContinue value),
    TResult started(_Started value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult validatePersonalSection(ValidatePersonalSection value),
    TResult countyChanged(CountyChanged value),
    TResult houseNumberChanged(HouseNumberChanged value),
    TResult line1Changed(Line1Changed value),
    TResult line2Changed(Line2hanged value),
    TResult postcodeChanged(PostcodeChanged value),
    TResult cityChanged(CityChanged value),
    TResult countryChanged(CountryChanged value),
    TResult findAddress(FindAddress value),
    TResult validateAddressSection(ValidateAddressSection value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (houseNumberChanged != null) {
      return houseNumberChanged(this);
    }
    return orElse();
  }
}

abstract class HouseNumberChanged implements PaymentFormEvent {
  const factory HouseNumberChanged(String houseNumber) = _$HouseNumberChanged;

  String get houseNumber;
  $HouseNumberChangedCopyWith<HouseNumberChanged> get copyWith;
}

/// @nodoc
abstract class $Line1ChangedCopyWith<$Res> {
  factory $Line1ChangedCopyWith(
          Line1Changed value, $Res Function(Line1Changed) then) =
      _$Line1ChangedCopyWithImpl<$Res>;
  $Res call({String line1});
}

/// @nodoc
class _$Line1ChangedCopyWithImpl<$Res>
    extends _$PaymentFormEventCopyWithImpl<$Res>
    implements $Line1ChangedCopyWith<$Res> {
  _$Line1ChangedCopyWithImpl(
      Line1Changed _value, $Res Function(Line1Changed) _then)
      : super(_value, (v) => _then(v as Line1Changed));

  @override
  Line1Changed get _value => super._value as Line1Changed;

  @override
  $Res call({
    Object line1 = freezed,
  }) {
    return _then(Line1Changed(
      line1 == freezed ? _value.line1 : line1 as String,
    ));
  }
}

/// @nodoc
class _$Line1Changed implements Line1Changed {
  const _$Line1Changed(this.line1) : assert(line1 != null);

  @override
  final String line1;

  @override
  String toString() {
    return 'PaymentFormEvent.line1Changed(line1: $line1)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Line1Changed &&
            (identical(other.line1, line1) ||
                const DeepCollectionEquality().equals(other.line1, line1)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(line1);

  @override
  $Line1ChangedCopyWith<Line1Changed> get copyWith =>
      _$Line1ChangedCopyWithImpl<Line1Changed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult stepTapped(int step),
    @required TResult stepCancelled(),
    @required TResult stepContinue(),
    @required TResult started(),
    @required TResult firstNameChanged(String firstName),
    @required TResult lastNameChanged(String lastName),
    @required TResult emailChanged(String email),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult validatePersonalSection(),
    @required TResult countyChanged(String county),
    @required TResult houseNumberChanged(String houseNumber),
    @required TResult line1Changed(String line1),
    @required TResult line2Changed(String line2),
    @required TResult postcodeChanged(String postcode),
    @required TResult cityChanged(String city),
    @required TResult countryChanged(String country),
    @required TResult findAddress(),
    @required TResult validateAddressSection(),
    @required
        TResult saved(
            StripeCard card, String peerId, String amount, String itemId),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return line1Changed(line1);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult stepTapped(int step),
    TResult stepCancelled(),
    TResult stepContinue(),
    TResult started(),
    TResult firstNameChanged(String firstName),
    TResult lastNameChanged(String lastName),
    TResult emailChanged(String email),
    TResult phoneNumberChanged(String phoneNumber),
    TResult validatePersonalSection(),
    TResult countyChanged(String county),
    TResult houseNumberChanged(String houseNumber),
    TResult line1Changed(String line1),
    TResult line2Changed(String line2),
    TResult postcodeChanged(String postcode),
    TResult cityChanged(String city),
    TResult countryChanged(String country),
    TResult findAddress(),
    TResult validateAddressSection(),
    TResult saved(StripeCard card, String peerId, String amount, String itemId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (line1Changed != null) {
      return line1Changed(line1);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult stepTapped(_stepTapped value),
    @required TResult stepCancelled(_stepCancelled value),
    @required TResult stepContinue(_stepContinue value),
    @required TResult started(_Started value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult validatePersonalSection(ValidatePersonalSection value),
    @required TResult countyChanged(CountyChanged value),
    @required TResult houseNumberChanged(HouseNumberChanged value),
    @required TResult line1Changed(Line1Changed value),
    @required TResult line2Changed(Line2hanged value),
    @required TResult postcodeChanged(PostcodeChanged value),
    @required TResult cityChanged(CityChanged value),
    @required TResult countryChanged(CountryChanged value),
    @required TResult findAddress(FindAddress value),
    @required TResult validateAddressSection(ValidateAddressSection value),
    @required TResult saved(_Saved value),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return line1Changed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult stepTapped(_stepTapped value),
    TResult stepCancelled(_stepCancelled value),
    TResult stepContinue(_stepContinue value),
    TResult started(_Started value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult validatePersonalSection(ValidatePersonalSection value),
    TResult countyChanged(CountyChanged value),
    TResult houseNumberChanged(HouseNumberChanged value),
    TResult line1Changed(Line1Changed value),
    TResult line2Changed(Line2hanged value),
    TResult postcodeChanged(PostcodeChanged value),
    TResult cityChanged(CityChanged value),
    TResult countryChanged(CountryChanged value),
    TResult findAddress(FindAddress value),
    TResult validateAddressSection(ValidateAddressSection value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (line1Changed != null) {
      return line1Changed(this);
    }
    return orElse();
  }
}

abstract class Line1Changed implements PaymentFormEvent {
  const factory Line1Changed(String line1) = _$Line1Changed;

  String get line1;
  $Line1ChangedCopyWith<Line1Changed> get copyWith;
}

/// @nodoc
abstract class $Line2hangedCopyWith<$Res> {
  factory $Line2hangedCopyWith(
          Line2hanged value, $Res Function(Line2hanged) then) =
      _$Line2hangedCopyWithImpl<$Res>;
  $Res call({String line2});
}

/// @nodoc
class _$Line2hangedCopyWithImpl<$Res>
    extends _$PaymentFormEventCopyWithImpl<$Res>
    implements $Line2hangedCopyWith<$Res> {
  _$Line2hangedCopyWithImpl(
      Line2hanged _value, $Res Function(Line2hanged) _then)
      : super(_value, (v) => _then(v as Line2hanged));

  @override
  Line2hanged get _value => super._value as Line2hanged;

  @override
  $Res call({
    Object line2 = freezed,
  }) {
    return _then(Line2hanged(
      line2 == freezed ? _value.line2 : line2 as String,
    ));
  }
}

/// @nodoc
class _$Line2hanged implements Line2hanged {
  const _$Line2hanged(this.line2) : assert(line2 != null);

  @override
  final String line2;

  @override
  String toString() {
    return 'PaymentFormEvent.line2Changed(line2: $line2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Line2hanged &&
            (identical(other.line2, line2) ||
                const DeepCollectionEquality().equals(other.line2, line2)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(line2);

  @override
  $Line2hangedCopyWith<Line2hanged> get copyWith =>
      _$Line2hangedCopyWithImpl<Line2hanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult stepTapped(int step),
    @required TResult stepCancelled(),
    @required TResult stepContinue(),
    @required TResult started(),
    @required TResult firstNameChanged(String firstName),
    @required TResult lastNameChanged(String lastName),
    @required TResult emailChanged(String email),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult validatePersonalSection(),
    @required TResult countyChanged(String county),
    @required TResult houseNumberChanged(String houseNumber),
    @required TResult line1Changed(String line1),
    @required TResult line2Changed(String line2),
    @required TResult postcodeChanged(String postcode),
    @required TResult cityChanged(String city),
    @required TResult countryChanged(String country),
    @required TResult findAddress(),
    @required TResult validateAddressSection(),
    @required
        TResult saved(
            StripeCard card, String peerId, String amount, String itemId),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return line2Changed(line2);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult stepTapped(int step),
    TResult stepCancelled(),
    TResult stepContinue(),
    TResult started(),
    TResult firstNameChanged(String firstName),
    TResult lastNameChanged(String lastName),
    TResult emailChanged(String email),
    TResult phoneNumberChanged(String phoneNumber),
    TResult validatePersonalSection(),
    TResult countyChanged(String county),
    TResult houseNumberChanged(String houseNumber),
    TResult line1Changed(String line1),
    TResult line2Changed(String line2),
    TResult postcodeChanged(String postcode),
    TResult cityChanged(String city),
    TResult countryChanged(String country),
    TResult findAddress(),
    TResult validateAddressSection(),
    TResult saved(StripeCard card, String peerId, String amount, String itemId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (line2Changed != null) {
      return line2Changed(line2);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult stepTapped(_stepTapped value),
    @required TResult stepCancelled(_stepCancelled value),
    @required TResult stepContinue(_stepContinue value),
    @required TResult started(_Started value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult validatePersonalSection(ValidatePersonalSection value),
    @required TResult countyChanged(CountyChanged value),
    @required TResult houseNumberChanged(HouseNumberChanged value),
    @required TResult line1Changed(Line1Changed value),
    @required TResult line2Changed(Line2hanged value),
    @required TResult postcodeChanged(PostcodeChanged value),
    @required TResult cityChanged(CityChanged value),
    @required TResult countryChanged(CountryChanged value),
    @required TResult findAddress(FindAddress value),
    @required TResult validateAddressSection(ValidateAddressSection value),
    @required TResult saved(_Saved value),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return line2Changed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult stepTapped(_stepTapped value),
    TResult stepCancelled(_stepCancelled value),
    TResult stepContinue(_stepContinue value),
    TResult started(_Started value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult validatePersonalSection(ValidatePersonalSection value),
    TResult countyChanged(CountyChanged value),
    TResult houseNumberChanged(HouseNumberChanged value),
    TResult line1Changed(Line1Changed value),
    TResult line2Changed(Line2hanged value),
    TResult postcodeChanged(PostcodeChanged value),
    TResult cityChanged(CityChanged value),
    TResult countryChanged(CountryChanged value),
    TResult findAddress(FindAddress value),
    TResult validateAddressSection(ValidateAddressSection value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (line2Changed != null) {
      return line2Changed(this);
    }
    return orElse();
  }
}

abstract class Line2hanged implements PaymentFormEvent {
  const factory Line2hanged(String line2) = _$Line2hanged;

  String get line2;
  $Line2hangedCopyWith<Line2hanged> get copyWith;
}

/// @nodoc
abstract class $PostcodeChangedCopyWith<$Res> {
  factory $PostcodeChangedCopyWith(
          PostcodeChanged value, $Res Function(PostcodeChanged) then) =
      _$PostcodeChangedCopyWithImpl<$Res>;
  $Res call({String postcode});
}

/// @nodoc
class _$PostcodeChangedCopyWithImpl<$Res>
    extends _$PaymentFormEventCopyWithImpl<$Res>
    implements $PostcodeChangedCopyWith<$Res> {
  _$PostcodeChangedCopyWithImpl(
      PostcodeChanged _value, $Res Function(PostcodeChanged) _then)
      : super(_value, (v) => _then(v as PostcodeChanged));

  @override
  PostcodeChanged get _value => super._value as PostcodeChanged;

  @override
  $Res call({
    Object postcode = freezed,
  }) {
    return _then(PostcodeChanged(
      postcode == freezed ? _value.postcode : postcode as String,
    ));
  }
}

/// @nodoc
class _$PostcodeChanged implements PostcodeChanged {
  const _$PostcodeChanged(this.postcode) : assert(postcode != null);

  @override
  final String postcode;

  @override
  String toString() {
    return 'PaymentFormEvent.postcodeChanged(postcode: $postcode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PostcodeChanged &&
            (identical(other.postcode, postcode) ||
                const DeepCollectionEquality()
                    .equals(other.postcode, postcode)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(postcode);

  @override
  $PostcodeChangedCopyWith<PostcodeChanged> get copyWith =>
      _$PostcodeChangedCopyWithImpl<PostcodeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult stepTapped(int step),
    @required TResult stepCancelled(),
    @required TResult stepContinue(),
    @required TResult started(),
    @required TResult firstNameChanged(String firstName),
    @required TResult lastNameChanged(String lastName),
    @required TResult emailChanged(String email),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult validatePersonalSection(),
    @required TResult countyChanged(String county),
    @required TResult houseNumberChanged(String houseNumber),
    @required TResult line1Changed(String line1),
    @required TResult line2Changed(String line2),
    @required TResult postcodeChanged(String postcode),
    @required TResult cityChanged(String city),
    @required TResult countryChanged(String country),
    @required TResult findAddress(),
    @required TResult validateAddressSection(),
    @required
        TResult saved(
            StripeCard card, String peerId, String amount, String itemId),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return postcodeChanged(postcode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult stepTapped(int step),
    TResult stepCancelled(),
    TResult stepContinue(),
    TResult started(),
    TResult firstNameChanged(String firstName),
    TResult lastNameChanged(String lastName),
    TResult emailChanged(String email),
    TResult phoneNumberChanged(String phoneNumber),
    TResult validatePersonalSection(),
    TResult countyChanged(String county),
    TResult houseNumberChanged(String houseNumber),
    TResult line1Changed(String line1),
    TResult line2Changed(String line2),
    TResult postcodeChanged(String postcode),
    TResult cityChanged(String city),
    TResult countryChanged(String country),
    TResult findAddress(),
    TResult validateAddressSection(),
    TResult saved(StripeCard card, String peerId, String amount, String itemId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (postcodeChanged != null) {
      return postcodeChanged(postcode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult stepTapped(_stepTapped value),
    @required TResult stepCancelled(_stepCancelled value),
    @required TResult stepContinue(_stepContinue value),
    @required TResult started(_Started value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult validatePersonalSection(ValidatePersonalSection value),
    @required TResult countyChanged(CountyChanged value),
    @required TResult houseNumberChanged(HouseNumberChanged value),
    @required TResult line1Changed(Line1Changed value),
    @required TResult line2Changed(Line2hanged value),
    @required TResult postcodeChanged(PostcodeChanged value),
    @required TResult cityChanged(CityChanged value),
    @required TResult countryChanged(CountryChanged value),
    @required TResult findAddress(FindAddress value),
    @required TResult validateAddressSection(ValidateAddressSection value),
    @required TResult saved(_Saved value),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return postcodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult stepTapped(_stepTapped value),
    TResult stepCancelled(_stepCancelled value),
    TResult stepContinue(_stepContinue value),
    TResult started(_Started value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult validatePersonalSection(ValidatePersonalSection value),
    TResult countyChanged(CountyChanged value),
    TResult houseNumberChanged(HouseNumberChanged value),
    TResult line1Changed(Line1Changed value),
    TResult line2Changed(Line2hanged value),
    TResult postcodeChanged(PostcodeChanged value),
    TResult cityChanged(CityChanged value),
    TResult countryChanged(CountryChanged value),
    TResult findAddress(FindAddress value),
    TResult validateAddressSection(ValidateAddressSection value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (postcodeChanged != null) {
      return postcodeChanged(this);
    }
    return orElse();
  }
}

abstract class PostcodeChanged implements PaymentFormEvent {
  const factory PostcodeChanged(String postcode) = _$PostcodeChanged;

  String get postcode;
  $PostcodeChangedCopyWith<PostcodeChanged> get copyWith;
}

/// @nodoc
abstract class $CityChangedCopyWith<$Res> {
  factory $CityChangedCopyWith(
          CityChanged value, $Res Function(CityChanged) then) =
      _$CityChangedCopyWithImpl<$Res>;
  $Res call({String city});
}

/// @nodoc
class _$CityChangedCopyWithImpl<$Res>
    extends _$PaymentFormEventCopyWithImpl<$Res>
    implements $CityChangedCopyWith<$Res> {
  _$CityChangedCopyWithImpl(
      CityChanged _value, $Res Function(CityChanged) _then)
      : super(_value, (v) => _then(v as CityChanged));

  @override
  CityChanged get _value => super._value as CityChanged;

  @override
  $Res call({
    Object city = freezed,
  }) {
    return _then(CityChanged(
      city == freezed ? _value.city : city as String,
    ));
  }
}

/// @nodoc
class _$CityChanged implements CityChanged {
  const _$CityChanged(this.city) : assert(city != null);

  @override
  final String city;

  @override
  String toString() {
    return 'PaymentFormEvent.cityChanged(city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CityChanged &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(city);

  @override
  $CityChangedCopyWith<CityChanged> get copyWith =>
      _$CityChangedCopyWithImpl<CityChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult stepTapped(int step),
    @required TResult stepCancelled(),
    @required TResult stepContinue(),
    @required TResult started(),
    @required TResult firstNameChanged(String firstName),
    @required TResult lastNameChanged(String lastName),
    @required TResult emailChanged(String email),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult validatePersonalSection(),
    @required TResult countyChanged(String county),
    @required TResult houseNumberChanged(String houseNumber),
    @required TResult line1Changed(String line1),
    @required TResult line2Changed(String line2),
    @required TResult postcodeChanged(String postcode),
    @required TResult cityChanged(String city),
    @required TResult countryChanged(String country),
    @required TResult findAddress(),
    @required TResult validateAddressSection(),
    @required
        TResult saved(
            StripeCard card, String peerId, String amount, String itemId),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return cityChanged(city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult stepTapped(int step),
    TResult stepCancelled(),
    TResult stepContinue(),
    TResult started(),
    TResult firstNameChanged(String firstName),
    TResult lastNameChanged(String lastName),
    TResult emailChanged(String email),
    TResult phoneNumberChanged(String phoneNumber),
    TResult validatePersonalSection(),
    TResult countyChanged(String county),
    TResult houseNumberChanged(String houseNumber),
    TResult line1Changed(String line1),
    TResult line2Changed(String line2),
    TResult postcodeChanged(String postcode),
    TResult cityChanged(String city),
    TResult countryChanged(String country),
    TResult findAddress(),
    TResult validateAddressSection(),
    TResult saved(StripeCard card, String peerId, String amount, String itemId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cityChanged != null) {
      return cityChanged(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult stepTapped(_stepTapped value),
    @required TResult stepCancelled(_stepCancelled value),
    @required TResult stepContinue(_stepContinue value),
    @required TResult started(_Started value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult validatePersonalSection(ValidatePersonalSection value),
    @required TResult countyChanged(CountyChanged value),
    @required TResult houseNumberChanged(HouseNumberChanged value),
    @required TResult line1Changed(Line1Changed value),
    @required TResult line2Changed(Line2hanged value),
    @required TResult postcodeChanged(PostcodeChanged value),
    @required TResult cityChanged(CityChanged value),
    @required TResult countryChanged(CountryChanged value),
    @required TResult findAddress(FindAddress value),
    @required TResult validateAddressSection(ValidateAddressSection value),
    @required TResult saved(_Saved value),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return cityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult stepTapped(_stepTapped value),
    TResult stepCancelled(_stepCancelled value),
    TResult stepContinue(_stepContinue value),
    TResult started(_Started value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult validatePersonalSection(ValidatePersonalSection value),
    TResult countyChanged(CountyChanged value),
    TResult houseNumberChanged(HouseNumberChanged value),
    TResult line1Changed(Line1Changed value),
    TResult line2Changed(Line2hanged value),
    TResult postcodeChanged(PostcodeChanged value),
    TResult cityChanged(CityChanged value),
    TResult countryChanged(CountryChanged value),
    TResult findAddress(FindAddress value),
    TResult validateAddressSection(ValidateAddressSection value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cityChanged != null) {
      return cityChanged(this);
    }
    return orElse();
  }
}

abstract class CityChanged implements PaymentFormEvent {
  const factory CityChanged(String city) = _$CityChanged;

  String get city;
  $CityChangedCopyWith<CityChanged> get copyWith;
}

/// @nodoc
abstract class $CountryChangedCopyWith<$Res> {
  factory $CountryChangedCopyWith(
          CountryChanged value, $Res Function(CountryChanged) then) =
      _$CountryChangedCopyWithImpl<$Res>;
  $Res call({String country});
}

/// @nodoc
class _$CountryChangedCopyWithImpl<$Res>
    extends _$PaymentFormEventCopyWithImpl<$Res>
    implements $CountryChangedCopyWith<$Res> {
  _$CountryChangedCopyWithImpl(
      CountryChanged _value, $Res Function(CountryChanged) _then)
      : super(_value, (v) => _then(v as CountryChanged));

  @override
  CountryChanged get _value => super._value as CountryChanged;

  @override
  $Res call({
    Object country = freezed,
  }) {
    return _then(CountryChanged(
      country == freezed ? _value.country : country as String,
    ));
  }
}

/// @nodoc
class _$CountryChanged implements CountryChanged {
  const _$CountryChanged(this.country) : assert(country != null);

  @override
  final String country;

  @override
  String toString() {
    return 'PaymentFormEvent.countryChanged(country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CountryChanged &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(other.country, country)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(country);

  @override
  $CountryChangedCopyWith<CountryChanged> get copyWith =>
      _$CountryChangedCopyWithImpl<CountryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult stepTapped(int step),
    @required TResult stepCancelled(),
    @required TResult stepContinue(),
    @required TResult started(),
    @required TResult firstNameChanged(String firstName),
    @required TResult lastNameChanged(String lastName),
    @required TResult emailChanged(String email),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult validatePersonalSection(),
    @required TResult countyChanged(String county),
    @required TResult houseNumberChanged(String houseNumber),
    @required TResult line1Changed(String line1),
    @required TResult line2Changed(String line2),
    @required TResult postcodeChanged(String postcode),
    @required TResult cityChanged(String city),
    @required TResult countryChanged(String country),
    @required TResult findAddress(),
    @required TResult validateAddressSection(),
    @required
        TResult saved(
            StripeCard card, String peerId, String amount, String itemId),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return countryChanged(country);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult stepTapped(int step),
    TResult stepCancelled(),
    TResult stepContinue(),
    TResult started(),
    TResult firstNameChanged(String firstName),
    TResult lastNameChanged(String lastName),
    TResult emailChanged(String email),
    TResult phoneNumberChanged(String phoneNumber),
    TResult validatePersonalSection(),
    TResult countyChanged(String county),
    TResult houseNumberChanged(String houseNumber),
    TResult line1Changed(String line1),
    TResult line2Changed(String line2),
    TResult postcodeChanged(String postcode),
    TResult cityChanged(String city),
    TResult countryChanged(String country),
    TResult findAddress(),
    TResult validateAddressSection(),
    TResult saved(StripeCard card, String peerId, String amount, String itemId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (countryChanged != null) {
      return countryChanged(country);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult stepTapped(_stepTapped value),
    @required TResult stepCancelled(_stepCancelled value),
    @required TResult stepContinue(_stepContinue value),
    @required TResult started(_Started value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult validatePersonalSection(ValidatePersonalSection value),
    @required TResult countyChanged(CountyChanged value),
    @required TResult houseNumberChanged(HouseNumberChanged value),
    @required TResult line1Changed(Line1Changed value),
    @required TResult line2Changed(Line2hanged value),
    @required TResult postcodeChanged(PostcodeChanged value),
    @required TResult cityChanged(CityChanged value),
    @required TResult countryChanged(CountryChanged value),
    @required TResult findAddress(FindAddress value),
    @required TResult validateAddressSection(ValidateAddressSection value),
    @required TResult saved(_Saved value),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return countryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult stepTapped(_stepTapped value),
    TResult stepCancelled(_stepCancelled value),
    TResult stepContinue(_stepContinue value),
    TResult started(_Started value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult validatePersonalSection(ValidatePersonalSection value),
    TResult countyChanged(CountyChanged value),
    TResult houseNumberChanged(HouseNumberChanged value),
    TResult line1Changed(Line1Changed value),
    TResult line2Changed(Line2hanged value),
    TResult postcodeChanged(PostcodeChanged value),
    TResult cityChanged(CityChanged value),
    TResult countryChanged(CountryChanged value),
    TResult findAddress(FindAddress value),
    TResult validateAddressSection(ValidateAddressSection value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (countryChanged != null) {
      return countryChanged(this);
    }
    return orElse();
  }
}

abstract class CountryChanged implements PaymentFormEvent {
  const factory CountryChanged(String country) = _$CountryChanged;

  String get country;
  $CountryChangedCopyWith<CountryChanged> get copyWith;
}

/// @nodoc
abstract class $FindAddressCopyWith<$Res> {
  factory $FindAddressCopyWith(
          FindAddress value, $Res Function(FindAddress) then) =
      _$FindAddressCopyWithImpl<$Res>;
}

/// @nodoc
class _$FindAddressCopyWithImpl<$Res>
    extends _$PaymentFormEventCopyWithImpl<$Res>
    implements $FindAddressCopyWith<$Res> {
  _$FindAddressCopyWithImpl(
      FindAddress _value, $Res Function(FindAddress) _then)
      : super(_value, (v) => _then(v as FindAddress));

  @override
  FindAddress get _value => super._value as FindAddress;
}

/// @nodoc
class _$FindAddress implements FindAddress {
  const _$FindAddress();

  @override
  String toString() {
    return 'PaymentFormEvent.findAddress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FindAddress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult stepTapped(int step),
    @required TResult stepCancelled(),
    @required TResult stepContinue(),
    @required TResult started(),
    @required TResult firstNameChanged(String firstName),
    @required TResult lastNameChanged(String lastName),
    @required TResult emailChanged(String email),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult validatePersonalSection(),
    @required TResult countyChanged(String county),
    @required TResult houseNumberChanged(String houseNumber),
    @required TResult line1Changed(String line1),
    @required TResult line2Changed(String line2),
    @required TResult postcodeChanged(String postcode),
    @required TResult cityChanged(String city),
    @required TResult countryChanged(String country),
    @required TResult findAddress(),
    @required TResult validateAddressSection(),
    @required
        TResult saved(
            StripeCard card, String peerId, String amount, String itemId),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return findAddress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult stepTapped(int step),
    TResult stepCancelled(),
    TResult stepContinue(),
    TResult started(),
    TResult firstNameChanged(String firstName),
    TResult lastNameChanged(String lastName),
    TResult emailChanged(String email),
    TResult phoneNumberChanged(String phoneNumber),
    TResult validatePersonalSection(),
    TResult countyChanged(String county),
    TResult houseNumberChanged(String houseNumber),
    TResult line1Changed(String line1),
    TResult line2Changed(String line2),
    TResult postcodeChanged(String postcode),
    TResult cityChanged(String city),
    TResult countryChanged(String country),
    TResult findAddress(),
    TResult validateAddressSection(),
    TResult saved(StripeCard card, String peerId, String amount, String itemId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (findAddress != null) {
      return findAddress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult stepTapped(_stepTapped value),
    @required TResult stepCancelled(_stepCancelled value),
    @required TResult stepContinue(_stepContinue value),
    @required TResult started(_Started value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult validatePersonalSection(ValidatePersonalSection value),
    @required TResult countyChanged(CountyChanged value),
    @required TResult houseNumberChanged(HouseNumberChanged value),
    @required TResult line1Changed(Line1Changed value),
    @required TResult line2Changed(Line2hanged value),
    @required TResult postcodeChanged(PostcodeChanged value),
    @required TResult cityChanged(CityChanged value),
    @required TResult countryChanged(CountryChanged value),
    @required TResult findAddress(FindAddress value),
    @required TResult validateAddressSection(ValidateAddressSection value),
    @required TResult saved(_Saved value),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return findAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult stepTapped(_stepTapped value),
    TResult stepCancelled(_stepCancelled value),
    TResult stepContinue(_stepContinue value),
    TResult started(_Started value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult validatePersonalSection(ValidatePersonalSection value),
    TResult countyChanged(CountyChanged value),
    TResult houseNumberChanged(HouseNumberChanged value),
    TResult line1Changed(Line1Changed value),
    TResult line2Changed(Line2hanged value),
    TResult postcodeChanged(PostcodeChanged value),
    TResult cityChanged(CityChanged value),
    TResult countryChanged(CountryChanged value),
    TResult findAddress(FindAddress value),
    TResult validateAddressSection(ValidateAddressSection value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (findAddress != null) {
      return findAddress(this);
    }
    return orElse();
  }
}

abstract class FindAddress implements PaymentFormEvent {
  const factory FindAddress() = _$FindAddress;
}

/// @nodoc
abstract class $ValidateAddressSectionCopyWith<$Res> {
  factory $ValidateAddressSectionCopyWith(ValidateAddressSection value,
          $Res Function(ValidateAddressSection) then) =
      _$ValidateAddressSectionCopyWithImpl<$Res>;
}

/// @nodoc
class _$ValidateAddressSectionCopyWithImpl<$Res>
    extends _$PaymentFormEventCopyWithImpl<$Res>
    implements $ValidateAddressSectionCopyWith<$Res> {
  _$ValidateAddressSectionCopyWithImpl(ValidateAddressSection _value,
      $Res Function(ValidateAddressSection) _then)
      : super(_value, (v) => _then(v as ValidateAddressSection));

  @override
  ValidateAddressSection get _value => super._value as ValidateAddressSection;
}

/// @nodoc
class _$ValidateAddressSection implements ValidateAddressSection {
  const _$ValidateAddressSection();

  @override
  String toString() {
    return 'PaymentFormEvent.validateAddressSection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ValidateAddressSection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult stepTapped(int step),
    @required TResult stepCancelled(),
    @required TResult stepContinue(),
    @required TResult started(),
    @required TResult firstNameChanged(String firstName),
    @required TResult lastNameChanged(String lastName),
    @required TResult emailChanged(String email),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult validatePersonalSection(),
    @required TResult countyChanged(String county),
    @required TResult houseNumberChanged(String houseNumber),
    @required TResult line1Changed(String line1),
    @required TResult line2Changed(String line2),
    @required TResult postcodeChanged(String postcode),
    @required TResult cityChanged(String city),
    @required TResult countryChanged(String country),
    @required TResult findAddress(),
    @required TResult validateAddressSection(),
    @required
        TResult saved(
            StripeCard card, String peerId, String amount, String itemId),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return validateAddressSection();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult stepTapped(int step),
    TResult stepCancelled(),
    TResult stepContinue(),
    TResult started(),
    TResult firstNameChanged(String firstName),
    TResult lastNameChanged(String lastName),
    TResult emailChanged(String email),
    TResult phoneNumberChanged(String phoneNumber),
    TResult validatePersonalSection(),
    TResult countyChanged(String county),
    TResult houseNumberChanged(String houseNumber),
    TResult line1Changed(String line1),
    TResult line2Changed(String line2),
    TResult postcodeChanged(String postcode),
    TResult cityChanged(String city),
    TResult countryChanged(String country),
    TResult findAddress(),
    TResult validateAddressSection(),
    TResult saved(StripeCard card, String peerId, String amount, String itemId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (validateAddressSection != null) {
      return validateAddressSection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult stepTapped(_stepTapped value),
    @required TResult stepCancelled(_stepCancelled value),
    @required TResult stepContinue(_stepContinue value),
    @required TResult started(_Started value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult validatePersonalSection(ValidatePersonalSection value),
    @required TResult countyChanged(CountyChanged value),
    @required TResult houseNumberChanged(HouseNumberChanged value),
    @required TResult line1Changed(Line1Changed value),
    @required TResult line2Changed(Line2hanged value),
    @required TResult postcodeChanged(PostcodeChanged value),
    @required TResult cityChanged(CityChanged value),
    @required TResult countryChanged(CountryChanged value),
    @required TResult findAddress(FindAddress value),
    @required TResult validateAddressSection(ValidateAddressSection value),
    @required TResult saved(_Saved value),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return validateAddressSection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult stepTapped(_stepTapped value),
    TResult stepCancelled(_stepCancelled value),
    TResult stepContinue(_stepContinue value),
    TResult started(_Started value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult validatePersonalSection(ValidatePersonalSection value),
    TResult countyChanged(CountyChanged value),
    TResult houseNumberChanged(HouseNumberChanged value),
    TResult line1Changed(Line1Changed value),
    TResult line2Changed(Line2hanged value),
    TResult postcodeChanged(PostcodeChanged value),
    TResult cityChanged(CityChanged value),
    TResult countryChanged(CountryChanged value),
    TResult findAddress(FindAddress value),
    TResult validateAddressSection(ValidateAddressSection value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (validateAddressSection != null) {
      return validateAddressSection(this);
    }
    return orElse();
  }
}

abstract class ValidateAddressSection implements PaymentFormEvent {
  const factory ValidateAddressSection() = _$ValidateAddressSection;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
  $Res call({StripeCard card, String peerId, String amount, String itemId});
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$PaymentFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;

  @override
  $Res call({
    Object card = freezed,
    Object peerId = freezed,
    Object amount = freezed,
    Object itemId = freezed,
  }) {
    return _then(_Saved(
      card == freezed ? _value.card : card as StripeCard,
      peerId == freezed ? _value.peerId : peerId as String,
      amount == freezed ? _value.amount : amount as String,
      itemId == freezed ? _value.itemId : itemId as String,
    ));
  }
}

/// @nodoc
class _$_Saved implements _Saved {
  const _$_Saved(this.card, this.peerId, this.amount, this.itemId)
      : assert(card != null),
        assert(peerId != null),
        assert(amount != null),
        assert(itemId != null);

  @override
  final StripeCard card;
  @override
  final String peerId;
  @override
  final String amount;
  @override
  final String itemId;

  @override
  String toString() {
    return 'PaymentFormEvent.saved(card: $card, peerId: $peerId, amount: $amount, itemId: $itemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Saved &&
            (identical(other.card, card) ||
                const DeepCollectionEquality().equals(other.card, card)) &&
            (identical(other.peerId, peerId) ||
                const DeepCollectionEquality().equals(other.peerId, peerId)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(card) ^
      const DeepCollectionEquality().hash(peerId) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(itemId);

  @override
  _$SavedCopyWith<_Saved> get copyWith =>
      __$SavedCopyWithImpl<_Saved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult stepTapped(int step),
    @required TResult stepCancelled(),
    @required TResult stepContinue(),
    @required TResult started(),
    @required TResult firstNameChanged(String firstName),
    @required TResult lastNameChanged(String lastName),
    @required TResult emailChanged(String email),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult validatePersonalSection(),
    @required TResult countyChanged(String county),
    @required TResult houseNumberChanged(String houseNumber),
    @required TResult line1Changed(String line1),
    @required TResult line2Changed(String line2),
    @required TResult postcodeChanged(String postcode),
    @required TResult cityChanged(String city),
    @required TResult countryChanged(String country),
    @required TResult findAddress(),
    @required TResult validateAddressSection(),
    @required
        TResult saved(
            StripeCard card, String peerId, String amount, String itemId),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return saved(card, peerId, amount, itemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult stepTapped(int step),
    TResult stepCancelled(),
    TResult stepContinue(),
    TResult started(),
    TResult firstNameChanged(String firstName),
    TResult lastNameChanged(String lastName),
    TResult emailChanged(String email),
    TResult phoneNumberChanged(String phoneNumber),
    TResult validatePersonalSection(),
    TResult countyChanged(String county),
    TResult houseNumberChanged(String houseNumber),
    TResult line1Changed(String line1),
    TResult line2Changed(String line2),
    TResult postcodeChanged(String postcode),
    TResult cityChanged(String city),
    TResult countryChanged(String country),
    TResult findAddress(),
    TResult validateAddressSection(),
    TResult saved(StripeCard card, String peerId, String amount, String itemId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(card, peerId, amount, itemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult stepTapped(_stepTapped value),
    @required TResult stepCancelled(_stepCancelled value),
    @required TResult stepContinue(_stepContinue value),
    @required TResult started(_Started value),
    @required TResult firstNameChanged(FirstNameChanged value),
    @required TResult lastNameChanged(LastNameChanged value),
    @required TResult emailChanged(EmailChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult validatePersonalSection(ValidatePersonalSection value),
    @required TResult countyChanged(CountyChanged value),
    @required TResult houseNumberChanged(HouseNumberChanged value),
    @required TResult line1Changed(Line1Changed value),
    @required TResult line2Changed(Line2hanged value),
    @required TResult postcodeChanged(PostcodeChanged value),
    @required TResult cityChanged(CityChanged value),
    @required TResult countryChanged(CountryChanged value),
    @required TResult findAddress(FindAddress value),
    @required TResult validateAddressSection(ValidateAddressSection value),
    @required TResult saved(_Saved value),
  }) {
    assert(stepTapped != null);
    assert(stepCancelled != null);
    assert(stepContinue != null);
    assert(started != null);
    assert(firstNameChanged != null);
    assert(lastNameChanged != null);
    assert(emailChanged != null);
    assert(phoneNumberChanged != null);
    assert(validatePersonalSection != null);
    assert(countyChanged != null);
    assert(houseNumberChanged != null);
    assert(line1Changed != null);
    assert(line2Changed != null);
    assert(postcodeChanged != null);
    assert(cityChanged != null);
    assert(countryChanged != null);
    assert(findAddress != null);
    assert(validateAddressSection != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult stepTapped(_stepTapped value),
    TResult stepCancelled(_stepCancelled value),
    TResult stepContinue(_stepContinue value),
    TResult started(_Started value),
    TResult firstNameChanged(FirstNameChanged value),
    TResult lastNameChanged(LastNameChanged value),
    TResult emailChanged(EmailChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult validatePersonalSection(ValidatePersonalSection value),
    TResult countyChanged(CountyChanged value),
    TResult houseNumberChanged(HouseNumberChanged value),
    TResult line1Changed(Line1Changed value),
    TResult line2Changed(Line2hanged value),
    TResult postcodeChanged(PostcodeChanged value),
    TResult cityChanged(CityChanged value),
    TResult countryChanged(CountryChanged value),
    TResult findAddress(FindAddress value),
    TResult validateAddressSection(ValidateAddressSection value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements PaymentFormEvent {
  const factory _Saved(
      StripeCard card, String peerId, String amount, String itemId) = _$_Saved;

  StripeCard get card;
  String get peerId;
  String get amount;
  String get itemId;
  _$SavedCopyWith<_Saved> get copyWith;
}

/// @nodoc
class _$PaymentFormStateTearOff {
  const _$PaymentFormStateTearOff();

// ignore: unused_element
  _PaymentFormState call(
      {@required
          int step,
      @required
          int maxSteps,
      @required
          PaymentFormSetup paymentForm,
      @required
          bool isSaving,
      @required
          Option<Either<PaymentFormErrors, Map<String, dynamic>>>
              saveFailureOrSuccessOption,
      @required
          Option<Either<PaymentFormErrors, Unit>> personalFailureOrSuccess,
      @required
          AutovalidateMode showErrorMessagesPersonal,
      @required
          AutovalidateMode showErrorMessagesAddress,
      @required
          Option<Either<PaymentFormErrors, List<Address>>>
              addressFindingFailureOrSuccess,
      @required
          Option<Either<PaymentFormErrors, Unit>> addressFailureOrSuccess}) {
    return _PaymentFormState(
      step: step,
      maxSteps: maxSteps,
      paymentForm: paymentForm,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
      personalFailureOrSuccess: personalFailureOrSuccess,
      showErrorMessagesPersonal: showErrorMessagesPersonal,
      showErrorMessagesAddress: showErrorMessagesAddress,
      addressFindingFailureOrSuccess: addressFindingFailureOrSuccess,
      addressFailureOrSuccess: addressFailureOrSuccess,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PaymentFormState = _$PaymentFormStateTearOff();

/// @nodoc
mixin _$PaymentFormState {
  int get step;
  int get maxSteps;
  PaymentFormSetup get paymentForm;
  bool get isSaving;
  Option<Either<PaymentFormErrors, Map<String, dynamic>>>
      get saveFailureOrSuccessOption;
  Option<Either<PaymentFormErrors, Unit>> get personalFailureOrSuccess;
  AutovalidateMode get showErrorMessagesPersonal;
  AutovalidateMode get showErrorMessagesAddress;
  Option<Either<PaymentFormErrors, List<Address>>>
      get addressFindingFailureOrSuccess;
  Option<Either<PaymentFormErrors, Unit>> get addressFailureOrSuccess;

  $PaymentFormStateCopyWith<PaymentFormState> get copyWith;
}

/// @nodoc
abstract class $PaymentFormStateCopyWith<$Res> {
  factory $PaymentFormStateCopyWith(
          PaymentFormState value, $Res Function(PaymentFormState) then) =
      _$PaymentFormStateCopyWithImpl<$Res>;
  $Res call(
      {int step,
      int maxSteps,
      PaymentFormSetup paymentForm,
      bool isSaving,
      Option<Either<PaymentFormErrors, Map<String, dynamic>>>
          saveFailureOrSuccessOption,
      Option<Either<PaymentFormErrors, Unit>> personalFailureOrSuccess,
      AutovalidateMode showErrorMessagesPersonal,
      AutovalidateMode showErrorMessagesAddress,
      Option<Either<PaymentFormErrors, List<Address>>>
          addressFindingFailureOrSuccess,
      Option<Either<PaymentFormErrors, Unit>> addressFailureOrSuccess});

  $PaymentFormSetupCopyWith<$Res> get paymentForm;
}

/// @nodoc
class _$PaymentFormStateCopyWithImpl<$Res>
    implements $PaymentFormStateCopyWith<$Res> {
  _$PaymentFormStateCopyWithImpl(this._value, this._then);

  final PaymentFormState _value;
  // ignore: unused_field
  final $Res Function(PaymentFormState) _then;

  @override
  $Res call({
    Object step = freezed,
    Object maxSteps = freezed,
    Object paymentForm = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
    Object personalFailureOrSuccess = freezed,
    Object showErrorMessagesPersonal = freezed,
    Object showErrorMessagesAddress = freezed,
    Object addressFindingFailureOrSuccess = freezed,
    Object addressFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      step: step == freezed ? _value.step : step as int,
      maxSteps: maxSteps == freezed ? _value.maxSteps : maxSteps as int,
      paymentForm: paymentForm == freezed
          ? _value.paymentForm
          : paymentForm as PaymentFormSetup,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption
              as Option<Either<PaymentFormErrors, Map<String, dynamic>>>,
      personalFailureOrSuccess: personalFailureOrSuccess == freezed
          ? _value.personalFailureOrSuccess
          : personalFailureOrSuccess as Option<Either<PaymentFormErrors, Unit>>,
      showErrorMessagesPersonal: showErrorMessagesPersonal == freezed
          ? _value.showErrorMessagesPersonal
          : showErrorMessagesPersonal as AutovalidateMode,
      showErrorMessagesAddress: showErrorMessagesAddress == freezed
          ? _value.showErrorMessagesAddress
          : showErrorMessagesAddress as AutovalidateMode,
      addressFindingFailureOrSuccess: addressFindingFailureOrSuccess == freezed
          ? _value.addressFindingFailureOrSuccess
          : addressFindingFailureOrSuccess
              as Option<Either<PaymentFormErrors, List<Address>>>,
      addressFailureOrSuccess: addressFailureOrSuccess == freezed
          ? _value.addressFailureOrSuccess
          : addressFailureOrSuccess as Option<Either<PaymentFormErrors, Unit>>,
    ));
  }

  @override
  $PaymentFormSetupCopyWith<$Res> get paymentForm {
    if (_value.paymentForm == null) {
      return null;
    }
    return $PaymentFormSetupCopyWith<$Res>(_value.paymentForm, (value) {
      return _then(_value.copyWith(paymentForm: value));
    });
  }
}

/// @nodoc
abstract class _$PaymentFormStateCopyWith<$Res>
    implements $PaymentFormStateCopyWith<$Res> {
  factory _$PaymentFormStateCopyWith(
          _PaymentFormState value, $Res Function(_PaymentFormState) then) =
      __$PaymentFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int step,
      int maxSteps,
      PaymentFormSetup paymentForm,
      bool isSaving,
      Option<Either<PaymentFormErrors, Map<String, dynamic>>>
          saveFailureOrSuccessOption,
      Option<Either<PaymentFormErrors, Unit>> personalFailureOrSuccess,
      AutovalidateMode showErrorMessagesPersonal,
      AutovalidateMode showErrorMessagesAddress,
      Option<Either<PaymentFormErrors, List<Address>>>
          addressFindingFailureOrSuccess,
      Option<Either<PaymentFormErrors, Unit>> addressFailureOrSuccess});

  @override
  $PaymentFormSetupCopyWith<$Res> get paymentForm;
}

/// @nodoc
class __$PaymentFormStateCopyWithImpl<$Res>
    extends _$PaymentFormStateCopyWithImpl<$Res>
    implements _$PaymentFormStateCopyWith<$Res> {
  __$PaymentFormStateCopyWithImpl(
      _PaymentFormState _value, $Res Function(_PaymentFormState) _then)
      : super(_value, (v) => _then(v as _PaymentFormState));

  @override
  _PaymentFormState get _value => super._value as _PaymentFormState;

  @override
  $Res call({
    Object step = freezed,
    Object maxSteps = freezed,
    Object paymentForm = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
    Object personalFailureOrSuccess = freezed,
    Object showErrorMessagesPersonal = freezed,
    Object showErrorMessagesAddress = freezed,
    Object addressFindingFailureOrSuccess = freezed,
    Object addressFailureOrSuccess = freezed,
  }) {
    return _then(_PaymentFormState(
      step: step == freezed ? _value.step : step as int,
      maxSteps: maxSteps == freezed ? _value.maxSteps : maxSteps as int,
      paymentForm: paymentForm == freezed
          ? _value.paymentForm
          : paymentForm as PaymentFormSetup,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption
              as Option<Either<PaymentFormErrors, Map<String, dynamic>>>,
      personalFailureOrSuccess: personalFailureOrSuccess == freezed
          ? _value.personalFailureOrSuccess
          : personalFailureOrSuccess as Option<Either<PaymentFormErrors, Unit>>,
      showErrorMessagesPersonal: showErrorMessagesPersonal == freezed
          ? _value.showErrorMessagesPersonal
          : showErrorMessagesPersonal as AutovalidateMode,
      showErrorMessagesAddress: showErrorMessagesAddress == freezed
          ? _value.showErrorMessagesAddress
          : showErrorMessagesAddress as AutovalidateMode,
      addressFindingFailureOrSuccess: addressFindingFailureOrSuccess == freezed
          ? _value.addressFindingFailureOrSuccess
          : addressFindingFailureOrSuccess
              as Option<Either<PaymentFormErrors, List<Address>>>,
      addressFailureOrSuccess: addressFailureOrSuccess == freezed
          ? _value.addressFailureOrSuccess
          : addressFailureOrSuccess as Option<Either<PaymentFormErrors, Unit>>,
    ));
  }
}

/// @nodoc
class _$_PaymentFormState implements _PaymentFormState {
  const _$_PaymentFormState(
      {@required this.step,
      @required this.maxSteps,
      @required this.paymentForm,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption,
      @required this.personalFailureOrSuccess,
      @required this.showErrorMessagesPersonal,
      @required this.showErrorMessagesAddress,
      @required this.addressFindingFailureOrSuccess,
      @required this.addressFailureOrSuccess})
      : assert(step != null),
        assert(maxSteps != null),
        assert(paymentForm != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null),
        assert(personalFailureOrSuccess != null),
        assert(showErrorMessagesPersonal != null),
        assert(showErrorMessagesAddress != null),
        assert(addressFindingFailureOrSuccess != null),
        assert(addressFailureOrSuccess != null);

  @override
  final int step;
  @override
  final int maxSteps;
  @override
  final PaymentFormSetup paymentForm;
  @override
  final bool isSaving;
  @override
  final Option<Either<PaymentFormErrors, Map<String, dynamic>>>
      saveFailureOrSuccessOption;
  @override
  final Option<Either<PaymentFormErrors, Unit>> personalFailureOrSuccess;
  @override
  final AutovalidateMode showErrorMessagesPersonal;
  @override
  final AutovalidateMode showErrorMessagesAddress;
  @override
  final Option<Either<PaymentFormErrors, List<Address>>>
      addressFindingFailureOrSuccess;
  @override
  final Option<Either<PaymentFormErrors, Unit>> addressFailureOrSuccess;

  @override
  String toString() {
    return 'PaymentFormState(step: $step, maxSteps: $maxSteps, paymentForm: $paymentForm, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption, personalFailureOrSuccess: $personalFailureOrSuccess, showErrorMessagesPersonal: $showErrorMessagesPersonal, showErrorMessagesAddress: $showErrorMessagesAddress, addressFindingFailureOrSuccess: $addressFindingFailureOrSuccess, addressFailureOrSuccess: $addressFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentFormState &&
            (identical(other.step, step) ||
                const DeepCollectionEquality().equals(other.step, step)) &&
            (identical(other.maxSteps, maxSteps) ||
                const DeepCollectionEquality()
                    .equals(other.maxSteps, maxSteps)) &&
            (identical(other.paymentForm, paymentForm) ||
                const DeepCollectionEquality()
                    .equals(other.paymentForm, paymentForm)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.saveFailureOrSuccessOption, saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)) &&
            (identical(other.personalFailureOrSuccess, personalFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.personalFailureOrSuccess,
                    personalFailureOrSuccess)) &&
            (identical(other.showErrorMessagesPersonal, showErrorMessagesPersonal) ||
                const DeepCollectionEquality().equals(
                    other.showErrorMessagesPersonal,
                    showErrorMessagesPersonal)) &&
            (identical(other.showErrorMessagesAddress, showErrorMessagesAddress) ||
                const DeepCollectionEquality().equals(
                    other.showErrorMessagesAddress,
                    showErrorMessagesAddress)) &&
            (identical(other.addressFindingFailureOrSuccess,
                    addressFindingFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.addressFindingFailureOrSuccess,
                    addressFindingFailureOrSuccess)) &&
            (identical(other.addressFailureOrSuccess, addressFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.addressFailureOrSuccess, addressFailureOrSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(step) ^
      const DeepCollectionEquality().hash(maxSteps) ^
      const DeepCollectionEquality().hash(paymentForm) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption) ^
      const DeepCollectionEquality().hash(personalFailureOrSuccess) ^
      const DeepCollectionEquality().hash(showErrorMessagesPersonal) ^
      const DeepCollectionEquality().hash(showErrorMessagesAddress) ^
      const DeepCollectionEquality().hash(addressFindingFailureOrSuccess) ^
      const DeepCollectionEquality().hash(addressFailureOrSuccess);

  @override
  _$PaymentFormStateCopyWith<_PaymentFormState> get copyWith =>
      __$PaymentFormStateCopyWithImpl<_PaymentFormState>(this, _$identity);
}

abstract class _PaymentFormState implements PaymentFormState {
  const factory _PaymentFormState(
      {@required
          int step,
      @required
          int maxSteps,
      @required
          PaymentFormSetup paymentForm,
      @required
          bool isSaving,
      @required
          Option<Either<PaymentFormErrors, Map<String, dynamic>>>
              saveFailureOrSuccessOption,
      @required
          Option<Either<PaymentFormErrors, Unit>> personalFailureOrSuccess,
      @required
          AutovalidateMode showErrorMessagesPersonal,
      @required
          AutovalidateMode showErrorMessagesAddress,
      @required
          Option<Either<PaymentFormErrors, List<Address>>>
              addressFindingFailureOrSuccess,
      @required
          Option<Either<PaymentFormErrors, Unit>>
              addressFailureOrSuccess}) = _$_PaymentFormState;

  @override
  int get step;
  @override
  int get maxSteps;
  @override
  PaymentFormSetup get paymentForm;
  @override
  bool get isSaving;
  @override
  Option<Either<PaymentFormErrors, Map<String, dynamic>>>
      get saveFailureOrSuccessOption;
  @override
  Option<Either<PaymentFormErrors, Unit>> get personalFailureOrSuccess;
  @override
  AutovalidateMode get showErrorMessagesPersonal;
  @override
  AutovalidateMode get showErrorMessagesAddress;
  @override
  Option<Either<PaymentFormErrors, List<Address>>>
      get addressFindingFailureOrSuccess;
  @override
  Option<Either<PaymentFormErrors, Unit>> get addressFailureOrSuccess;
  @override
  _$PaymentFormStateCopyWith<_PaymentFormState> get copyWith;
}
