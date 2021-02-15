// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'payment_verified_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PaymentVerifiedEventTearOff {
  const _$PaymentVerifiedEventTearOff();

// ignore: unused_element
  PaymentVerifiedCheckRequested paymentVerifiedCheckRequested() {
    return const PaymentVerifiedCheckRequested();
  }
}

/// @nodoc
// ignore: unused_element
const $PaymentVerifiedEvent = _$PaymentVerifiedEventTearOff();

/// @nodoc
mixin _$PaymentVerifiedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult paymentVerifiedCheckRequested(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult paymentVerifiedCheckRequested(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult paymentVerifiedCheckRequested(
            PaymentVerifiedCheckRequested value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult paymentVerifiedCheckRequested(PaymentVerifiedCheckRequested value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PaymentVerifiedEventCopyWith<$Res> {
  factory $PaymentVerifiedEventCopyWith(PaymentVerifiedEvent value,
          $Res Function(PaymentVerifiedEvent) then) =
      _$PaymentVerifiedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentVerifiedEventCopyWithImpl<$Res>
    implements $PaymentVerifiedEventCopyWith<$Res> {
  _$PaymentVerifiedEventCopyWithImpl(this._value, this._then);

  final PaymentVerifiedEvent _value;
  // ignore: unused_field
  final $Res Function(PaymentVerifiedEvent) _then;
}

/// @nodoc
abstract class $PaymentVerifiedCheckRequestedCopyWith<$Res> {
  factory $PaymentVerifiedCheckRequestedCopyWith(
          PaymentVerifiedCheckRequested value,
          $Res Function(PaymentVerifiedCheckRequested) then) =
      _$PaymentVerifiedCheckRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentVerifiedCheckRequestedCopyWithImpl<$Res>
    extends _$PaymentVerifiedEventCopyWithImpl<$Res>
    implements $PaymentVerifiedCheckRequestedCopyWith<$Res> {
  _$PaymentVerifiedCheckRequestedCopyWithImpl(
      PaymentVerifiedCheckRequested _value,
      $Res Function(PaymentVerifiedCheckRequested) _then)
      : super(_value, (v) => _then(v as PaymentVerifiedCheckRequested));

  @override
  PaymentVerifiedCheckRequested get _value =>
      super._value as PaymentVerifiedCheckRequested;
}

/// @nodoc
class _$PaymentVerifiedCheckRequested implements PaymentVerifiedCheckRequested {
  const _$PaymentVerifiedCheckRequested();

  @override
  String toString() {
    return 'PaymentVerifiedEvent.paymentVerifiedCheckRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PaymentVerifiedCheckRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult paymentVerifiedCheckRequested(),
  }) {
    assert(paymentVerifiedCheckRequested != null);
    return paymentVerifiedCheckRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult paymentVerifiedCheckRequested(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (paymentVerifiedCheckRequested != null) {
      return paymentVerifiedCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult paymentVerifiedCheckRequested(
            PaymentVerifiedCheckRequested value),
  }) {
    assert(paymentVerifiedCheckRequested != null);
    return paymentVerifiedCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult paymentVerifiedCheckRequested(PaymentVerifiedCheckRequested value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (paymentVerifiedCheckRequested != null) {
      return paymentVerifiedCheckRequested(this);
    }
    return orElse();
  }
}

abstract class PaymentVerifiedCheckRequested implements PaymentVerifiedEvent {
  const factory PaymentVerifiedCheckRequested() =
      _$PaymentVerifiedCheckRequested;
}

/// @nodoc
class _$PaymentVerifiedStateTearOff {
  const _$PaymentVerifiedStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  Authenticated authenticated() {
    return const Authenticated();
  }

// ignore: unused_element
  Unauthenticated unauthenticated() {
    return const Unauthenticated();
  }
}

/// @nodoc
// ignore: unused_element
const $PaymentVerifiedState = _$PaymentVerifiedStateTearOff();

/// @nodoc
mixin _$PaymentVerifiedState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult authenticated(),
    @required TResult unauthenticated(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(),
    TResult unauthenticated(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(Initial value),
    @required TResult authenticated(Authenticated value),
    @required TResult unauthenticated(Unauthenticated value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult authenticated(Authenticated value),
    TResult unauthenticated(Unauthenticated value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PaymentVerifiedStateCopyWith<$Res> {
  factory $PaymentVerifiedStateCopyWith(PaymentVerifiedState value,
          $Res Function(PaymentVerifiedState) then) =
      _$PaymentVerifiedStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentVerifiedStateCopyWithImpl<$Res>
    implements $PaymentVerifiedStateCopyWith<$Res> {
  _$PaymentVerifiedStateCopyWithImpl(this._value, this._then);

  final PaymentVerifiedState _value;
  // ignore: unused_field
  final $Res Function(PaymentVerifiedState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$PaymentVerifiedStateCopyWithImpl<$Res>
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
    return 'PaymentVerifiedState.initial()';
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
    @required TResult unauthenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(),
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
    @required TResult unauthenticated(Unauthenticated value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult authenticated(Authenticated value),
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

abstract class Initial implements PaymentVerifiedState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $AuthenticatedCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticatedCopyWithImpl<$Res>
    extends _$PaymentVerifiedStateCopyWithImpl<$Res>
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
    return 'PaymentVerifiedState.authenticated()';
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
    @required TResult unauthenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(),
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
    @required TResult unauthenticated(Unauthenticated value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult authenticated(Authenticated value),
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

abstract class Authenticated implements PaymentVerifiedState {
  const factory Authenticated() = _$Authenticated;
}

/// @nodoc
abstract class $UnauthenticatedCopyWith<$Res> {
  factory $UnauthenticatedCopyWith(
          Unauthenticated value, $Res Function(Unauthenticated) then) =
      _$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnauthenticatedCopyWithImpl<$Res>
    extends _$PaymentVerifiedStateCopyWithImpl<$Res>
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
    return 'PaymentVerifiedState.unauthenticated()';
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
    @required TResult unauthenticated(),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult authenticated(),
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
    @required TResult unauthenticated(Unauthenticated value),
  }) {
    assert(initial != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(Initial value),
    TResult authenticated(Authenticated value),
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

abstract class Unauthenticated implements PaymentVerifiedState {
  const factory Unauthenticated() = _$Unauthenticated;
}
