// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CurrentUserTearOff {
  const _$CurrentUserTearOff();

// ignore: unused_element
  _CurrentUser call({@required String email}) {
    return _CurrentUser(
      email: email,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CurrentUser = _$CurrentUserTearOff();

/// @nodoc
mixin _$CurrentUser {
  String get email;

  $CurrentUserCopyWith<CurrentUser> get copyWith;
}

/// @nodoc
abstract class $CurrentUserCopyWith<$Res> {
  factory $CurrentUserCopyWith(
          CurrentUser value, $Res Function(CurrentUser) then) =
      _$CurrentUserCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$CurrentUserCopyWithImpl<$Res> implements $CurrentUserCopyWith<$Res> {
  _$CurrentUserCopyWithImpl(this._value, this._then);

  final CurrentUser _value;
  // ignore: unused_field
  final $Res Function(CurrentUser) _then;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
abstract class _$CurrentUserCopyWith<$Res>
    implements $CurrentUserCopyWith<$Res> {
  factory _$CurrentUserCopyWith(
          _CurrentUser value, $Res Function(_CurrentUser) then) =
      __$CurrentUserCopyWithImpl<$Res>;
  @override
  $Res call({String email});
}

/// @nodoc
class __$CurrentUserCopyWithImpl<$Res> extends _$CurrentUserCopyWithImpl<$Res>
    implements _$CurrentUserCopyWith<$Res> {
  __$CurrentUserCopyWithImpl(
      _CurrentUser _value, $Res Function(_CurrentUser) _then)
      : super(_value, (v) => _then(v as _CurrentUser));

  @override
  _CurrentUser get _value => super._value as _CurrentUser;

  @override
  $Res call({
    Object email = freezed,
  }) {
    return _then(_CurrentUser(
      email: email == freezed ? _value.email : email as String,
    ));
  }
}

/// @nodoc
class _$_CurrentUser implements _CurrentUser {
  const _$_CurrentUser({@required this.email}) : assert(email != null);

  @override
  final String email;

  @override
  String toString() {
    return 'CurrentUser(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CurrentUser &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @override
  _$CurrentUserCopyWith<_CurrentUser> get copyWith =>
      __$CurrentUserCopyWithImpl<_CurrentUser>(this, _$identity);
}

abstract class _CurrentUser implements CurrentUser {
  const factory _CurrentUser({@required String email}) = _$_CurrentUser;

  @override
  String get email;
  @override
  _$CurrentUserCopyWith<_CurrentUser> get copyWith;
}
