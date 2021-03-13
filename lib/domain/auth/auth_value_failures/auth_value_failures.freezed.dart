// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_value_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthValueFailureTearOff {
  const _$AuthValueFailureTearOff();

// ignore: unused_element
  InvalidEmail<T> invalidEmail<T>({@required String failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  InvalidPassword<T> invalidPassword<T>({@required String failedValue}) {
    return InvalidPassword<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  ShortUsername<T> shortUsername<T>({@required String failedValue}) {
    return ShortUsername<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  OffensiveUsername<T> offensiveUsername<T>({@required String failedValue}) {
    return OffensiveUsername<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AuthValueFailure = _$AuthValueFailureTearOff();

/// @nodoc
mixin _$AuthValueFailure<T> {
  String get failedValue;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmail(String failedValue),
    @required TResult invalidPassword(String failedValue),
    @required TResult shortUsername(String failedValue),
    @required TResult offensiveUsername(String failedValue),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmail(String failedValue),
    TResult invalidPassword(String failedValue),
    TResult shortUsername(String failedValue),
    TResult offensiveUsername(String failedValue),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult shortUsername(ShortUsername<T> value),
    @required TResult offensiveUsername(OffensiveUsername<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmail(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult shortUsername(ShortUsername<T> value),
    TResult offensiveUsername(OffensiveUsername<T> value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $AuthValueFailureCopyWith<T, AuthValueFailure<T>> get copyWith;
}

/// @nodoc
abstract class $AuthValueFailureCopyWith<T, $Res> {
  factory $AuthValueFailureCopyWith(
          AuthValueFailure<T> value, $Res Function(AuthValueFailure<T>) then) =
      _$AuthValueFailureCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$AuthValueFailureCopyWithImpl<T, $Res>
    implements $AuthValueFailureCopyWith<T, $Res> {
  _$AuthValueFailureCopyWithImpl(this._value, this._then);

  final AuthValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(AuthValueFailure<T>) _then;

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
abstract class $InvalidEmailCopyWith<T, $Res>
    implements $AuthValueFailureCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$AuthValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'AuthValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmail(String failedValue),
    @required TResult invalidPassword(String failedValue),
    @required TResult shortUsername(String failedValue),
    @required TResult offensiveUsername(String failedValue),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(shortUsername != null);
    assert(offensiveUsername != null);
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmail(String failedValue),
    TResult invalidPassword(String failedValue),
    TResult shortUsername(String failedValue),
    TResult offensiveUsername(String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult shortUsername(ShortUsername<T> value),
    @required TResult offensiveUsername(OffensiveUsername<T> value),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(shortUsername != null);
    assert(offensiveUsername != null);
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmail(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult shortUsername(ShortUsername<T> value),
    TResult offensiveUsername(OffensiveUsername<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements AuthValueFailure<T> {
  const factory InvalidEmail({@required String failedValue}) =
      _$InvalidEmail<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith;
}

/// @nodoc
abstract class $InvalidPasswordCopyWith<T, $Res>
    implements $AuthValueFailureCopyWith<T, $Res> {
  factory $InvalidPasswordCopyWith(
          InvalidPassword<T> value, $Res Function(InvalidPassword<T>) then) =
      _$InvalidPasswordCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class _$InvalidPasswordCopyWithImpl<T, $Res>
    extends _$AuthValueFailureCopyWithImpl<T, $Res>
    implements $InvalidPasswordCopyWith<T, $Res> {
  _$InvalidPasswordCopyWithImpl(
      InvalidPassword<T> _value, $Res Function(InvalidPassword<T>) _then)
      : super(_value, (v) => _then(v as InvalidPassword<T>));

  @override
  InvalidPassword<T> get _value => super._value as InvalidPassword<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidPassword<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$InvalidPassword<T> implements InvalidPassword<T> {
  const _$InvalidPassword({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'AuthValueFailure<$T>.invalidPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $InvalidPasswordCopyWith<T, InvalidPassword<T>> get copyWith =>
      _$InvalidPasswordCopyWithImpl<T, InvalidPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmail(String failedValue),
    @required TResult invalidPassword(String failedValue),
    @required TResult shortUsername(String failedValue),
    @required TResult offensiveUsername(String failedValue),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(shortUsername != null);
    assert(offensiveUsername != null);
    return invalidPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmail(String failedValue),
    TResult invalidPassword(String failedValue),
    TResult shortUsername(String failedValue),
    TResult offensiveUsername(String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidPassword != null) {
      return invalidPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult shortUsername(ShortUsername<T> value),
    @required TResult offensiveUsername(OffensiveUsername<T> value),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(shortUsername != null);
    assert(offensiveUsername != null);
    return invalidPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmail(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult shortUsername(ShortUsername<T> value),
    TResult offensiveUsername(OffensiveUsername<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidPassword != null) {
      return invalidPassword(this);
    }
    return orElse();
  }
}

abstract class InvalidPassword<T> implements AuthValueFailure<T> {
  const factory InvalidPassword({@required String failedValue}) =
      _$InvalidPassword<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  $InvalidPasswordCopyWith<T, InvalidPassword<T>> get copyWith;
}

/// @nodoc
abstract class $ShortUsernameCopyWith<T, $Res>
    implements $AuthValueFailureCopyWith<T, $Res> {
  factory $ShortUsernameCopyWith(
          ShortUsername<T> value, $Res Function(ShortUsername<T>) then) =
      _$ShortUsernameCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class _$ShortUsernameCopyWithImpl<T, $Res>
    extends _$AuthValueFailureCopyWithImpl<T, $Res>
    implements $ShortUsernameCopyWith<T, $Res> {
  _$ShortUsernameCopyWithImpl(
      ShortUsername<T> _value, $Res Function(ShortUsername<T>) _then)
      : super(_value, (v) => _then(v as ShortUsername<T>));

  @override
  ShortUsername<T> get _value => super._value as ShortUsername<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(ShortUsername<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$ShortUsername<T> implements ShortUsername<T> {
  const _$ShortUsername({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'AuthValueFailure<$T>.shortUsername(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortUsername<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $ShortUsernameCopyWith<T, ShortUsername<T>> get copyWith =>
      _$ShortUsernameCopyWithImpl<T, ShortUsername<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmail(String failedValue),
    @required TResult invalidPassword(String failedValue),
    @required TResult shortUsername(String failedValue),
    @required TResult offensiveUsername(String failedValue),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(shortUsername != null);
    assert(offensiveUsername != null);
    return shortUsername(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmail(String failedValue),
    TResult invalidPassword(String failedValue),
    TResult shortUsername(String failedValue),
    TResult offensiveUsername(String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shortUsername != null) {
      return shortUsername(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult shortUsername(ShortUsername<T> value),
    @required TResult offensiveUsername(OffensiveUsername<T> value),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(shortUsername != null);
    assert(offensiveUsername != null);
    return shortUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmail(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult shortUsername(ShortUsername<T> value),
    TResult offensiveUsername(OffensiveUsername<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (shortUsername != null) {
      return shortUsername(this);
    }
    return orElse();
  }
}

abstract class ShortUsername<T> implements AuthValueFailure<T> {
  const factory ShortUsername({@required String failedValue}) =
      _$ShortUsername<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  $ShortUsernameCopyWith<T, ShortUsername<T>> get copyWith;
}

/// @nodoc
abstract class $OffensiveUsernameCopyWith<T, $Res>
    implements $AuthValueFailureCopyWith<T, $Res> {
  factory $OffensiveUsernameCopyWith(OffensiveUsername<T> value,
          $Res Function(OffensiveUsername<T>) then) =
      _$OffensiveUsernameCopyWithImpl<T, $Res>;
  @override
  $Res call({String failedValue});
}

/// @nodoc
class _$OffensiveUsernameCopyWithImpl<T, $Res>
    extends _$AuthValueFailureCopyWithImpl<T, $Res>
    implements $OffensiveUsernameCopyWith<T, $Res> {
  _$OffensiveUsernameCopyWithImpl(
      OffensiveUsername<T> _value, $Res Function(OffensiveUsername<T>) _then)
      : super(_value, (v) => _then(v as OffensiveUsername<T>));

  @override
  OffensiveUsername<T> get _value => super._value as OffensiveUsername<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(OffensiveUsername<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$OffensiveUsername<T> implements OffensiveUsername<T> {
  const _$OffensiveUsername({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'AuthValueFailure<$T>.offensiveUsername(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OffensiveUsername<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @JsonKey(ignore: true)
  @override
  $OffensiveUsernameCopyWith<T, OffensiveUsername<T>> get copyWith =>
      _$OffensiveUsernameCopyWithImpl<T, OffensiveUsername<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult invalidEmail(String failedValue),
    @required TResult invalidPassword(String failedValue),
    @required TResult shortUsername(String failedValue),
    @required TResult offensiveUsername(String failedValue),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(shortUsername != null);
    assert(offensiveUsername != null);
    return offensiveUsername(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult invalidEmail(String failedValue),
    TResult invalidPassword(String failedValue),
    TResult shortUsername(String failedValue),
    TResult offensiveUsername(String failedValue),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (offensiveUsername != null) {
      return offensiveUsername(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult invalidEmail(InvalidEmail<T> value),
    @required TResult invalidPassword(InvalidPassword<T> value),
    @required TResult shortUsername(ShortUsername<T> value),
    @required TResult offensiveUsername(OffensiveUsername<T> value),
  }) {
    assert(invalidEmail != null);
    assert(invalidPassword != null);
    assert(shortUsername != null);
    assert(offensiveUsername != null);
    return offensiveUsername(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult invalidEmail(InvalidEmail<T> value),
    TResult invalidPassword(InvalidPassword<T> value),
    TResult shortUsername(ShortUsername<T> value),
    TResult offensiveUsername(OffensiveUsername<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (offensiveUsername != null) {
      return offensiveUsername(this);
    }
    return orElse();
  }
}

abstract class OffensiveUsername<T> implements AuthValueFailure<T> {
  const factory OffensiveUsername({@required String failedValue}) =
      _$OffensiveUsername<T>;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  $OffensiveUsernameCopyWith<T, OffensiveUsername<T>> get copyWith;
}
