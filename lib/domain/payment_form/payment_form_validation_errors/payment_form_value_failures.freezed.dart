// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'payment_form_value_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PaymentFormValueFailureTearOff {
  const _$PaymentFormValueFailureTearOff();

// ignore: unused_element
  InvalidCardNumber<T> invalidCardNumber<T>({@required String failedValue}) {
    return InvalidCardNumber<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  InvalidCardCVC<T> invalidCardCVC<T>({@required String failedValue}) {
    return InvalidCardCVC<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  InvalidCardDate<T> invalidCardDate<T>({@required String failedValue}) {
    return InvalidCardDate<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PaymentFormValueFailure = _$PaymentFormValueFailureTearOff();

/// @nodoc
mixin _$PaymentFormValueFailure<T> {
  String get failedValue;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidCardNumber(String failedValue),
    @required TResult invalidCardCVC(String failedValue),
    @required TResult invalidCardDate(String failedValue),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidCardNumber(String failedValue),
    TResult invalidCardCVC(String failedValue),
    TResult invalidCardDate(String failedValue),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidCardNumber(InvalidCardNumber<T> value),
    @required TResult invalidCardCVC(InvalidCardCVC<T> value),
    @required TResult invalidCardDate(InvalidCardDate<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidCardNumber(InvalidCardNumber<T> value),
    TResult invalidCardCVC(InvalidCardCVC<T> value),
    TResult invalidCardDate(InvalidCardDate<T> value),
    @required TResult orElse(),
  });

  $PaymentFormValueFailureCopyWith<T, PaymentFormValueFailure<T>> get copyWith;
}

/// @nodoc
abstract class $PaymentFormValueFailureCopyWith<T, $Res> {
  factory $PaymentFormValueFailureCopyWith(PaymentFormValueFailure<T> value,
          $Res Function(PaymentFormValueFailure<T>) then) =
      _$PaymentFormValueFailureCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$PaymentFormValueFailureCopyWithImpl<T, $Res>
    implements $PaymentFormValueFailureCopyWith<T, $Res> {
  _$PaymentFormValueFailureCopyWithImpl(this._value, this._then);

  final PaymentFormValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(PaymentFormValueFailure<T>) _then;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
abstract class $InvalidCardNumberCopyWith<T, $Res>
    implements $PaymentFormValueFailureCopyWith<T, $Res> {
  factory $InvalidCardNumberCopyWith(InvalidCardNumber<T> value,
          $Res Function(InvalidCardNumber<T>) then) =
      _$InvalidCardNumberCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class _$InvalidCardNumberCopyWithImpl<T, $Res>
    extends _$PaymentFormValueFailureCopyWithImpl<T, $Res>
    implements $InvalidCardNumberCopyWith<T, $Res> {
  _$InvalidCardNumberCopyWithImpl(
      InvalidCardNumber<T> _value, $Res Function(InvalidCardNumber<T>) _then)
      : super(_value, (v) => _then(v as InvalidCardNumber<T>));

  @override
  InvalidCardNumber<T> get _value => super._value as InvalidCardNumber<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidCardNumber<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$InvalidCardNumber<T> implements InvalidCardNumber<T> {
  const _$InvalidCardNumber({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'PaymentFormValueFailure<$T>.invalidCardNumber(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidCardNumber<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidCardNumberCopyWith<T, InvalidCardNumber<T>> get copyWith =>
      _$InvalidCardNumberCopyWithImpl<T, InvalidCardNumber<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidCardNumber(String failedValue),
    @required TResult invalidCardCVC(String failedValue),
    @required TResult invalidCardDate(String failedValue),
  }) {
    assert(invalidCardNumber != null);
    assert(invalidCardCVC != null);
    assert(invalidCardDate != null);
    return invalidCardNumber(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidCardNumber(String failedValue),
    TResult invalidCardCVC(String failedValue),
    TResult invalidCardDate(String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidCardNumber != null) {
      return invalidCardNumber(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidCardNumber(InvalidCardNumber<T> value),
    @required TResult invalidCardCVC(InvalidCardCVC<T> value),
    @required TResult invalidCardDate(InvalidCardDate<T> value),
  }) {
    assert(invalidCardNumber != null);
    assert(invalidCardCVC != null);
    assert(invalidCardDate != null);
    return invalidCardNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidCardNumber(InvalidCardNumber<T> value),
    TResult invalidCardCVC(InvalidCardCVC<T> value),
    TResult invalidCardDate(InvalidCardDate<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidCardNumber != null) {
      return invalidCardNumber(this);
    }
    return orElse();
  }
}

abstract class InvalidCardNumber<T> implements PaymentFormValueFailure<T> {
  const factory InvalidCardNumber({@required String failedValue}) =
      _$InvalidCardNumber<T>;

  @override
  String get failedValue;
  @override
  $InvalidCardNumberCopyWith<T, InvalidCardNumber<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidCardCVCCopyWith<T, $Res>
    implements $PaymentFormValueFailureCopyWith<T, $Res> {
  factory $InvalidCardCVCCopyWith(
          InvalidCardCVC<T> value, $Res Function(InvalidCardCVC<T>) then) =
      _$InvalidCardCVCCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class _$InvalidCardCVCCopyWithImpl<T, $Res>
    extends _$PaymentFormValueFailureCopyWithImpl<T, $Res>
    implements $InvalidCardCVCCopyWith<T, $Res> {
  _$InvalidCardCVCCopyWithImpl(
      InvalidCardCVC<T> _value, $Res Function(InvalidCardCVC<T>) _then)
      : super(_value, (v) => _then(v as InvalidCardCVC<T>));

  @override
  InvalidCardCVC<T> get _value => super._value as InvalidCardCVC<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidCardCVC<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$InvalidCardCVC<T> implements InvalidCardCVC<T> {
  const _$InvalidCardCVC({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'PaymentFormValueFailure<$T>.invalidCardCVC(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidCardCVC<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidCardCVCCopyWith<T, InvalidCardCVC<T>> get copyWith =>
      _$InvalidCardCVCCopyWithImpl<T, InvalidCardCVC<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidCardNumber(String failedValue),
    @required TResult invalidCardCVC(String failedValue),
    @required TResult invalidCardDate(String failedValue),
  }) {
    assert(invalidCardNumber != null);
    assert(invalidCardCVC != null);
    assert(invalidCardDate != null);
    return invalidCardCVC(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidCardNumber(String failedValue),
    TResult invalidCardCVC(String failedValue),
    TResult invalidCardDate(String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidCardCVC != null) {
      return invalidCardCVC(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidCardNumber(InvalidCardNumber<T> value),
    @required TResult invalidCardCVC(InvalidCardCVC<T> value),
    @required TResult invalidCardDate(InvalidCardDate<T> value),
  }) {
    assert(invalidCardNumber != null);
    assert(invalidCardCVC != null);
    assert(invalidCardDate != null);
    return invalidCardCVC(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidCardNumber(InvalidCardNumber<T> value),
    TResult invalidCardCVC(InvalidCardCVC<T> value),
    TResult invalidCardDate(InvalidCardDate<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidCardCVC != null) {
      return invalidCardCVC(this);
    }
    return orElse();
  }
}

abstract class InvalidCardCVC<T> implements PaymentFormValueFailure<T> {
  const factory InvalidCardCVC({@required String failedValue}) =
      _$InvalidCardCVC<T>;

  @override
  String get failedValue;
  @override
  $InvalidCardCVCCopyWith<T, InvalidCardCVC<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidCardDateCopyWith<T, $Res>
    implements $PaymentFormValueFailureCopyWith<T, $Res> {
  factory $InvalidCardDateCopyWith(
          InvalidCardDate<T> value, $Res Function(InvalidCardDate<T>) then) =
      _$InvalidCardDateCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class _$InvalidCardDateCopyWithImpl<T, $Res>
    extends _$PaymentFormValueFailureCopyWithImpl<T, $Res>
    implements $InvalidCardDateCopyWith<T, $Res> {
  _$InvalidCardDateCopyWithImpl(
      InvalidCardDate<T> _value, $Res Function(InvalidCardDate<T>) _then)
      : super(_value, (v) => _then(v as InvalidCardDate<T>));

  @override
  InvalidCardDate<T> get _value => super._value as InvalidCardDate<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidCardDate<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$InvalidCardDate<T> implements InvalidCardDate<T> {
  const _$InvalidCardDate({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'PaymentFormValueFailure<$T>.invalidCardDate(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidCardDate<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidCardDateCopyWith<T, InvalidCardDate<T>> get copyWith =>
      _$InvalidCardDateCopyWithImpl<T, InvalidCardDate<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidCardNumber(String failedValue),
    @required TResult invalidCardCVC(String failedValue),
    @required TResult invalidCardDate(String failedValue),
  }) {
    assert(invalidCardNumber != null);
    assert(invalidCardCVC != null);
    assert(invalidCardDate != null);
    return invalidCardDate(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidCardNumber(String failedValue),
    TResult invalidCardCVC(String failedValue),
    TResult invalidCardDate(String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidCardDate != null) {
      return invalidCardDate(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidCardNumber(InvalidCardNumber<T> value),
    @required TResult invalidCardCVC(InvalidCardCVC<T> value),
    @required TResult invalidCardDate(InvalidCardDate<T> value),
  }) {
    assert(invalidCardNumber != null);
    assert(invalidCardCVC != null);
    assert(invalidCardDate != null);
    return invalidCardDate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidCardNumber(InvalidCardNumber<T> value),
    TResult invalidCardCVC(InvalidCardCVC<T> value),
    TResult invalidCardDate(InvalidCardDate<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidCardDate != null) {
      return invalidCardDate(this);
    }
    return orElse();
  }
}

abstract class InvalidCardDate<T> implements PaymentFormValueFailure<T> {
  const factory InvalidCardDate({@required String failedValue}) =
      _$InvalidCardDate<T>;

  @override
  String get failedValue;
  @override
  $InvalidCardDateCopyWith<T, InvalidCardDate<T>> get copyWith;
}
