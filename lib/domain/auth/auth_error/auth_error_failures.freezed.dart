// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_error_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthErrorFailureTearOff {
  const _$AuthErrorFailureTearOff();

// ignore: unused_element
  CancelledByUser cancelledByUser() {
    return const CancelledByUser();
  }

// ignore: unused_element
  ServerError serviceError() {
    return const ServerError();
  }

// ignore: unused_element
  EmailAlreadyInUse emailAlreadyInUse() {
    return const EmailAlreadyInUse();
  }

// ignore: unused_element
  InvalidEmailAndPassword invalidEmailAndPassword() {
    return const InvalidEmailAndPassword();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthErrorFailure = _$AuthErrorFailureTearOff();

/// @nodoc
mixin _$AuthErrorFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult cancelledByUser(),
    @required TResult serviceError(),
    @required TResult emailAlreadyInUse(),
    @required TResult invalidEmailAndPassword(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult cancelledByUser(),
    TResult serviceError(),
    TResult emailAlreadyInUse(),
    TResult invalidEmailAndPassword(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult cancelledByUser(CancelledByUser value),
    @required TResult serviceError(ServerError value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse value),
    @required TResult invalidEmailAndPassword(InvalidEmailAndPassword value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult cancelledByUser(CancelledByUser value),
    TResult serviceError(ServerError value),
    TResult emailAlreadyInUse(EmailAlreadyInUse value),
    TResult invalidEmailAndPassword(InvalidEmailAndPassword value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthErrorFailureCopyWith<$Res> {
  factory $AuthErrorFailureCopyWith(
          AuthErrorFailure value, $Res Function(AuthErrorFailure) then) =
      _$AuthErrorFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthErrorFailureCopyWithImpl<$Res>
    implements $AuthErrorFailureCopyWith<$Res> {
  _$AuthErrorFailureCopyWithImpl(this._value, this._then);

  final AuthErrorFailure _value;
  // ignore: unused_field
  final $Res Function(AuthErrorFailure) _then;
}

/// @nodoc
abstract class $CancelledByUserCopyWith<$Res> {
  factory $CancelledByUserCopyWith(
          CancelledByUser value, $Res Function(CancelledByUser) then) =
      _$CancelledByUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$CancelledByUserCopyWithImpl<$Res>
    extends _$AuthErrorFailureCopyWithImpl<$Res>
    implements $CancelledByUserCopyWith<$Res> {
  _$CancelledByUserCopyWithImpl(
      CancelledByUser _value, $Res Function(CancelledByUser) _then)
      : super(_value, (v) => _then(v as CancelledByUser));

  @override
  CancelledByUser get _value => super._value as CancelledByUser;
}

/// @nodoc
class _$CancelledByUser implements CancelledByUser {
  const _$CancelledByUser();

  @override
  String toString() {
    return 'AuthErrorFailure.cancelledByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CancelledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult cancelledByUser(),
    @required TResult serviceError(),
    @required TResult emailAlreadyInUse(),
    @required TResult invalidEmailAndPassword(),
  }) {
    assert(cancelledByUser != null);
    assert(serviceError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPassword != null);
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult cancelledByUser(),
    TResult serviceError(),
    TResult emailAlreadyInUse(),
    TResult invalidEmailAndPassword(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult cancelledByUser(CancelledByUser value),
    @required TResult serviceError(ServerError value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse value),
    @required TResult invalidEmailAndPassword(InvalidEmailAndPassword value),
  }) {
    assert(cancelledByUser != null);
    assert(serviceError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPassword != null);
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult cancelledByUser(CancelledByUser value),
    TResult serviceError(ServerError value),
    TResult emailAlreadyInUse(EmailAlreadyInUse value),
    TResult invalidEmailAndPassword(InvalidEmailAndPassword value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser implements AuthErrorFailure {
  const factory CancelledByUser() = _$CancelledByUser;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res>
    extends _$AuthErrorFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

/// @nodoc
class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthErrorFailure.serviceError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult cancelledByUser(),
    @required TResult serviceError(),
    @required TResult emailAlreadyInUse(),
    @required TResult invalidEmailAndPassword(),
  }) {
    assert(cancelledByUser != null);
    assert(serviceError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPassword != null);
    return serviceError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult cancelledByUser(),
    TResult serviceError(),
    TResult emailAlreadyInUse(),
    TResult invalidEmailAndPassword(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serviceError != null) {
      return serviceError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult cancelledByUser(CancelledByUser value),
    @required TResult serviceError(ServerError value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse value),
    @required TResult invalidEmailAndPassword(InvalidEmailAndPassword value),
  }) {
    assert(cancelledByUser != null);
    assert(serviceError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPassword != null);
    return serviceError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult cancelledByUser(CancelledByUser value),
    TResult serviceError(ServerError value),
    TResult emailAlreadyInUse(EmailAlreadyInUse value),
    TResult invalidEmailAndPassword(InvalidEmailAndPassword value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serviceError != null) {
      return serviceError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthErrorFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class $EmailAlreadyInUseCopyWith<$Res> {
  factory $EmailAlreadyInUseCopyWith(
          EmailAlreadyInUse value, $Res Function(EmailAlreadyInUse) then) =
      _$EmailAlreadyInUseCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthErrorFailureCopyWithImpl<$Res>
    implements $EmailAlreadyInUseCopyWith<$Res> {
  _$EmailAlreadyInUseCopyWithImpl(
      EmailAlreadyInUse _value, $Res Function(EmailAlreadyInUse) _then)
      : super(_value, (v) => _then(v as EmailAlreadyInUse));

  @override
  EmailAlreadyInUse get _value => super._value as EmailAlreadyInUse;
}

/// @nodoc
class _$EmailAlreadyInUse implements EmailAlreadyInUse {
  const _$EmailAlreadyInUse();

  @override
  String toString() {
    return 'AuthErrorFailure.emailAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult cancelledByUser(),
    @required TResult serviceError(),
    @required TResult emailAlreadyInUse(),
    @required TResult invalidEmailAndPassword(),
  }) {
    assert(cancelledByUser != null);
    assert(serviceError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPassword != null);
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult cancelledByUser(),
    TResult serviceError(),
    TResult emailAlreadyInUse(),
    TResult invalidEmailAndPassword(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult cancelledByUser(CancelledByUser value),
    @required TResult serviceError(ServerError value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse value),
    @required TResult invalidEmailAndPassword(InvalidEmailAndPassword value),
  }) {
    assert(cancelledByUser != null);
    assert(serviceError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPassword != null);
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult cancelledByUser(CancelledByUser value),
    TResult serviceError(ServerError value),
    TResult emailAlreadyInUse(EmailAlreadyInUse value),
    TResult invalidEmailAndPassword(InvalidEmailAndPassword value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyInUse implements AuthErrorFailure {
  const factory EmailAlreadyInUse() = _$EmailAlreadyInUse;
}

/// @nodoc
abstract class $InvalidEmailAndPasswordCopyWith<$Res> {
  factory $InvalidEmailAndPasswordCopyWith(InvalidEmailAndPassword value,
          $Res Function(InvalidEmailAndPassword) then) =
      _$InvalidEmailAndPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthErrorFailureCopyWithImpl<$Res>
    implements $InvalidEmailAndPasswordCopyWith<$Res> {
  _$InvalidEmailAndPasswordCopyWithImpl(InvalidEmailAndPassword _value,
      $Res Function(InvalidEmailAndPassword) _then)
      : super(_value, (v) => _then(v as InvalidEmailAndPassword));

  @override
  InvalidEmailAndPassword get _value => super._value as InvalidEmailAndPassword;
}

/// @nodoc
class _$InvalidEmailAndPassword implements InvalidEmailAndPassword {
  const _$InvalidEmailAndPassword();

  @override
  String toString() {
    return 'AuthErrorFailure.invalidEmailAndPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidEmailAndPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult cancelledByUser(),
    @required TResult serviceError(),
    @required TResult emailAlreadyInUse(),
    @required TResult invalidEmailAndPassword(),
  }) {
    assert(cancelledByUser != null);
    assert(serviceError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPassword != null);
    return invalidEmailAndPassword();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult cancelledByUser(),
    TResult serviceError(),
    TResult emailAlreadyInUse(),
    TResult invalidEmailAndPassword(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAndPassword != null) {
      return invalidEmailAndPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult cancelledByUser(CancelledByUser value),
    @required TResult serviceError(ServerError value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse value),
    @required TResult invalidEmailAndPassword(InvalidEmailAndPassword value),
  }) {
    assert(cancelledByUser != null);
    assert(serviceError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAndPassword != null);
    return invalidEmailAndPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult cancelledByUser(CancelledByUser value),
    TResult serviceError(ServerError value),
    TResult emailAlreadyInUse(EmailAlreadyInUse value),
    TResult invalidEmailAndPassword(InvalidEmailAndPassword value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAndPassword != null) {
      return invalidEmailAndPassword(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailAndPassword implements AuthErrorFailure {
  const factory InvalidEmailAndPassword() = _$InvalidEmailAndPassword;
}
