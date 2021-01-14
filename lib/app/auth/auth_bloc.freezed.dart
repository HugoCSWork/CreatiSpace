// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

// ignore: unused_element
  AuthCheckRequested authCheckRequested() {
    return const AuthCheckRequested();
  }

// ignore: unused_element
  SignOut signOut() {
    return const SignOut();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authCheckRequested(),
    @required TResult signOut(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authCheckRequested(),
    TResult signOut(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authCheckRequested(AuthCheckRequested value),
    @required TResult signOut(SignOut value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authCheckRequested(AuthCheckRequested value),
    TResult signOut(SignOut value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class $AuthCheckRequestedCopyWith<$Res> {
  factory $AuthCheckRequestedCopyWith(
          AuthCheckRequested value, $Res Function(AuthCheckRequested) then) =
      _$AuthCheckRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthCheckRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthCheckRequestedCopyWith<$Res> {
  _$AuthCheckRequestedCopyWithImpl(
      AuthCheckRequested _value, $Res Function(AuthCheckRequested) _then)
      : super(_value, (v) => _then(v as AuthCheckRequested));

  @override
  AuthCheckRequested get _value => super._value as AuthCheckRequested;
}

/// @nodoc
class _$AuthCheckRequested implements AuthCheckRequested {
  const _$AuthCheckRequested();

  @override
  String toString() {
    return 'AuthEvent.authCheckRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthCheckRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authCheckRequested(),
    @required TResult signOut(),
  }) {
    assert(authCheckRequested != null);
    assert(signOut != null);
    return authCheckRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authCheckRequested(),
    TResult signOut(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authCheckRequested != null) {
      return authCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authCheckRequested(AuthCheckRequested value),
    @required TResult signOut(SignOut value),
  }) {
    assert(authCheckRequested != null);
    assert(signOut != null);
    return authCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authCheckRequested(AuthCheckRequested value),
    TResult signOut(SignOut value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authCheckRequested != null) {
      return authCheckRequested(this);
    }
    return orElse();
  }
}

abstract class AuthCheckRequested implements AuthEvent {
  const factory AuthCheckRequested() = _$AuthCheckRequested;
}

/// @nodoc
abstract class $SignOutCopyWith<$Res> {
  factory $SignOutCopyWith(SignOut value, $Res Function(SignOut) then) =
      _$SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $SignOutCopyWith<$Res> {
  _$SignOutCopyWithImpl(SignOut _value, $Res Function(SignOut) _then)
      : super(_value, (v) => _then(v as SignOut));

  @override
  SignOut get _value => super._value as SignOut;
}

/// @nodoc
class _$SignOut implements SignOut {
  const _$SignOut();

  @override
  String toString() {
    return 'AuthEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult authCheckRequested(),
    @required TResult signOut(),
  }) {
    assert(authCheckRequested != null);
    assert(signOut != null);
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult authCheckRequested(),
    TResult signOut(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult authCheckRequested(AuthCheckRequested value),
    @required TResult signOut(SignOut value),
  }) {
    assert(authCheckRequested != null);
    assert(signOut != null);
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult authCheckRequested(AuthCheckRequested value),
    TResult signOut(SignOut value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOut implements AuthEvent {
  const factory SignOut() = _$SignOut;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  Authenticated authenticated() {
    return const Authenticated();
  }

// ignore: unused_element
  Unverified unverified() {
    return const Unverified();
  }

// ignore: unused_element
  Unauthenticated unauthenticated() {
    return const Unauthenticated();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticated(),
    @required TResult unverified(),
    @required TResult unauthenticated(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(),
    TResult unverified(),
    TResult unauthenticated(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult authenticated(Authenticated value),
    @required TResult unverified(Unverified value),
    @required TResult unauthenticated(Unauthenticated value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult authenticated(Authenticated value),
    TResult unverified(Unverified value),
    TResult unauthenticated(Unauthenticated value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticated(),
    @required TResult unverified(),
    @required TResult unauthenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unverified != null);
    assert(unauthenticated != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(),
    TResult unverified(),
    TResult unauthenticated(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult authenticated(Authenticated value),
    @required TResult unverified(Unverified value),
    @required TResult unauthenticated(Unauthenticated value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unverified != null);
    assert(unauthenticated != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult authenticated(Authenticated value),
    TResult unverified(Unverified value),
    TResult unauthenticated(Unauthenticated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AuthState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $AuthenticatedCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(
      Authenticated _value, $Res Function(Authenticated) _then)
      : super(_value, (v) => _then(v as Authenticated));

  @override
  Authenticated get _value => super._value as Authenticated;
}

/// @nodoc
class _$Authenticated implements Authenticated {
  const _$Authenticated();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticated(),
    @required TResult unverified(),
    @required TResult unauthenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unverified != null);
    assert(unauthenticated != null);
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(),
    TResult unverified(),
    TResult unauthenticated(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult authenticated(Authenticated value),
    @required TResult unverified(Unverified value),
    @required TResult unauthenticated(Unauthenticated value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unverified != null);
    assert(unauthenticated != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult authenticated(Authenticated value),
    TResult unverified(Unverified value),
    TResult unauthenticated(Unauthenticated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthState {
  const factory Authenticated() = _$Authenticated;
}

/// @nodoc
abstract class $UnverifiedCopyWith<$Res> {
  factory $UnverifiedCopyWith(
          Unverified value, $Res Function(Unverified) then) =
      _$UnverifiedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnverifiedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $UnverifiedCopyWith<$Res> {
  _$UnverifiedCopyWithImpl(Unverified _value, $Res Function(Unverified) _then)
      : super(_value, (v) => _then(v as Unverified));

  @override
  Unverified get _value => super._value as Unverified;
}

/// @nodoc
class _$Unverified implements Unverified {
  const _$Unverified();

  @override
  String toString() {
    return 'AuthState.unverified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unverified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticated(),
    @required TResult unverified(),
    @required TResult unauthenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unverified != null);
    assert(unauthenticated != null);
    return unverified();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(),
    TResult unverified(),
    TResult unauthenticated(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unverified != null) {
      return unverified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult authenticated(Authenticated value),
    @required TResult unverified(Unverified value),
    @required TResult unauthenticated(Unauthenticated value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unverified != null);
    assert(unauthenticated != null);
    return unverified(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult authenticated(Authenticated value),
    TResult unverified(Unverified value),
    TResult unauthenticated(Unauthenticated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unverified != null) {
      return unverified(this);
    }
    return orElse();
  }
}

abstract class Unverified implements AuthState {
  const factory Unverified() = _$Unverified;
}

/// @nodoc
abstract class $UnauthenticatedCopyWith<$Res> {
  factory $UnauthenticatedCopyWith(
          Unauthenticated value, $Res Function(Unauthenticated) then) =
      _$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnauthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $UnauthenticatedCopyWith<$Res> {
  _$UnauthenticatedCopyWithImpl(
      Unauthenticated _value, $Res Function(Unauthenticated) _then)
      : super(_value, (v) => _then(v as Unauthenticated));

  @override
  Unauthenticated get _value => super._value as Unauthenticated;
}

/// @nodoc
class _$Unauthenticated implements Unauthenticated {
  const _$Unauthenticated();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticated(),
    @required TResult unverified(),
    @required TResult unauthenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unverified != null);
    assert(unauthenticated != null);
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(),
    TResult unverified(),
    TResult unauthenticated(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult authenticated(Authenticated value),
    @required TResult unverified(Unverified value),
    @required TResult unauthenticated(Unauthenticated value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unverified != null);
    assert(unauthenticated != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult authenticated(Authenticated value),
    TResult unverified(Unverified value),
    TResult unauthenticated(Unauthenticated value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements AuthState {
  const factory Unauthenticated() = _$Unauthenticated;
}
