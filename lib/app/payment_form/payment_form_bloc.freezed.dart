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
  _Started started() {
    return const _Started();
  }

// ignore: unused_element
  _Saved saved(StripeCard card) {
    return _Saved(
      card,
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
    @required TResult started(),
    @required TResult saved(StripeCard card),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult saved(StripeCard card),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult saved(_Saved value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
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
    @required TResult started(),
    @required TResult saved(StripeCard card),
  }) {
    assert(started != null);
    assert(saved != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult saved(StripeCard card),
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
    @required TResult started(_Started value),
    @required TResult saved(_Saved value),
  }) {
    assert(started != null);
    assert(saved != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
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
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
  $Res call({StripeCard card});
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
  }) {
    return _then(_Saved(
      card == freezed ? _value.card : card as StripeCard,
    ));
  }
}

/// @nodoc
class _$_Saved implements _Saved {
  const _$_Saved(this.card) : assert(card != null);

  @override
  final StripeCard card;

  @override
  String toString() {
    return 'PaymentFormEvent.saved(card: $card)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Saved &&
            (identical(other.card, card) ||
                const DeepCollectionEquality().equals(other.card, card)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(card);

  @override
  _$SavedCopyWith<_Saved> get copyWith =>
      __$SavedCopyWithImpl<_Saved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult saved(StripeCard card),
  }) {
    assert(started != null);
    assert(saved != null);
    return saved(card);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult saved(StripeCard card),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(card);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult saved(_Saved value),
  }) {
    assert(started != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
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
  const factory _Saved(StripeCard card) = _$_Saved;

  StripeCard get card;
  _$SavedCopyWith<_Saved> get copyWith;
}

/// @nodoc
class _$PaymentFormStateTearOff {
  const _$PaymentFormStateTearOff();

// ignore: unused_element
  _PaymentFormState call(
      {@required
          bool isSaving,
      @required
          Option<Either<PaymentFormErrors, Unit>> saveFailureOrSuccessOption}) {
    return _PaymentFormState(
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PaymentFormState = _$PaymentFormStateTearOff();

/// @nodoc
mixin _$PaymentFormState {
  bool get isSaving;
  Option<Either<PaymentFormErrors, Unit>> get saveFailureOrSuccessOption;

  $PaymentFormStateCopyWith<PaymentFormState> get copyWith;
}

/// @nodoc
abstract class $PaymentFormStateCopyWith<$Res> {
  factory $PaymentFormStateCopyWith(
          PaymentFormState value, $Res Function(PaymentFormState) then) =
      _$PaymentFormStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSaving,
      Option<Either<PaymentFormErrors, Unit>> saveFailureOrSuccessOption});
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
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption
              as Option<Either<PaymentFormErrors, Unit>>,
    ));
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
      {bool isSaving,
      Option<Either<PaymentFormErrors, Unit>> saveFailureOrSuccessOption});
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
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_PaymentFormState(
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption
              as Option<Either<PaymentFormErrors, Unit>>,
    ));
  }
}

/// @nodoc
class _$_PaymentFormState implements _PaymentFormState {
  const _$_PaymentFormState(
      {@required this.isSaving, @required this.saveFailureOrSuccessOption})
      : assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final bool isSaving;
  @override
  final Option<Either<PaymentFormErrors, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'PaymentFormState(isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentFormState &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$PaymentFormStateCopyWith<_PaymentFormState> get copyWith =>
      __$PaymentFormStateCopyWithImpl<_PaymentFormState>(this, _$identity);
}

abstract class _PaymentFormState implements PaymentFormState {
  const factory _PaymentFormState(
      {@required
          bool isSaving,
      @required
          Option<Either<PaymentFormErrors, Unit>>
              saveFailureOrSuccessOption}) = _$_PaymentFormState;

  @override
  bool get isSaving;
  @override
  Option<Either<PaymentFormErrors, Unit>> get saveFailureOrSuccessOption;
  @override
  _$PaymentFormStateCopyWith<_PaymentFormState> get copyWith;
}
