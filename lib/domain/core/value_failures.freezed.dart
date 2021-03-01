// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'value_failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

// ignore: unused_element
  _Auth<T> auth<T>(AuthValueFailure<T> f) {
    return _Auth<T>(
      f,
    );
  }

// ignore: unused_element
  _PaymentSetup<T> paymentSetup<T>(PaymentSetupValueFailures<T> f) {
    return _PaymentSetup<T>(
      f,
    );
  }

// ignore: unused_element
  _PaymentForm<T> paymentForm<T>(PaymentFormValueFailure<T> f) {
    return _PaymentForm<T>(
      f,
    );
  }

// ignore: unused_element
  _Item<T> item<T>(ItemValueFailure<T> i) {
    return _Item<T>(
      i,
    );
  }

// ignore: unused_element
  _Workshop<T> workshop<T>(WorkshopValueFailure<T> i) {
    return _Workshop<T>(
      i,
    );
  }

// ignore: unused_element
  _UserMessaging<T> messaging<T>(UserValueFailure<T> i) {
    return _UserMessaging<T>(
      i,
    );
  }

// ignore: unused_element
  _Profile<T> profile<T>(ProfileValueFailure<T> i) {
    return _Profile<T>(
      i,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult auth(AuthValueFailure<T> f),
    @required TResult paymentSetup(PaymentSetupValueFailures<T> f),
    @required TResult paymentForm(PaymentFormValueFailure<T> f),
    @required TResult item(ItemValueFailure<T> i),
    @required TResult workshop(WorkshopValueFailure<T> i),
    @required TResult messaging(UserValueFailure<T> i),
    @required TResult profile(ProfileValueFailure<T> i),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult auth(AuthValueFailure<T> f),
    TResult paymentSetup(PaymentSetupValueFailures<T> f),
    TResult paymentForm(PaymentFormValueFailure<T> f),
    TResult item(ItemValueFailure<T> i),
    TResult workshop(WorkshopValueFailure<T> i),
    TResult messaging(UserValueFailure<T> i),
    TResult profile(ProfileValueFailure<T> i),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult auth(_Auth<T> value),
    @required TResult paymentSetup(_PaymentSetup<T> value),
    @required TResult paymentForm(_PaymentForm<T> value),
    @required TResult item(_Item<T> value),
    @required TResult workshop(_Workshop<T> value),
    @required TResult messaging(_UserMessaging<T> value),
    @required TResult profile(_Profile<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult auth(_Auth<T> value),
    TResult paymentSetup(_PaymentSetup<T> value),
    TResult paymentForm(_PaymentForm<T> value),
    TResult item(_Item<T> value),
    TResult workshop(_Workshop<T> value),
    TResult messaging(_UserMessaging<T> value),
    TResult profile(_Profile<T> value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class _$AuthCopyWith<T, $Res> {
  factory _$AuthCopyWith(_Auth<T> value, $Res Function(_Auth<T>) then) =
      __$AuthCopyWithImpl<T, $Res>;
  $Res call({AuthValueFailure<T> f});

  $AuthValueFailureCopyWith<T, $Res> get f;
}

/// @nodoc
class __$AuthCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$AuthCopyWith<T, $Res> {
  __$AuthCopyWithImpl(_Auth<T> _value, $Res Function(_Auth<T>) _then)
      : super(_value, (v) => _then(v as _Auth<T>));

  @override
  _Auth<T> get _value => super._value as _Auth<T>;

  @override
  $Res call({
    Object f = freezed,
  }) {
    return _then(_Auth<T>(
      f == freezed ? _value.f : f as AuthValueFailure<T>,
    ));
  }

  @override
  $AuthValueFailureCopyWith<T, $Res> get f {
    if (_value.f == null) {
      return null;
    }
    return $AuthValueFailureCopyWith<T, $Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc
class _$_Auth<T> implements _Auth<T> {
  const _$_Auth(this.f) : assert(f != null);

  @override
  final AuthValueFailure<T> f;

  @override
  String toString() {
    return 'ValueFailure<$T>.auth(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Auth<T> &&
            (identical(other.f, f) ||
                const DeepCollectionEquality().equals(other.f, f)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(f);

  @override
  _$AuthCopyWith<T, _Auth<T>> get copyWith =>
      __$AuthCopyWithImpl<T, _Auth<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult auth(AuthValueFailure<T> f),
    @required TResult paymentSetup(PaymentSetupValueFailures<T> f),
    @required TResult paymentForm(PaymentFormValueFailure<T> f),
    @required TResult item(ItemValueFailure<T> i),
    @required TResult workshop(WorkshopValueFailure<T> i),
    @required TResult messaging(UserValueFailure<T> i),
    @required TResult profile(ProfileValueFailure<T> i),
  }) {
    assert(auth != null);
    assert(paymentSetup != null);
    assert(paymentForm != null);
    assert(item != null);
    assert(workshop != null);
    assert(messaging != null);
    assert(profile != null);
    return auth(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult auth(AuthValueFailure<T> f),
    TResult paymentSetup(PaymentSetupValueFailures<T> f),
    TResult paymentForm(PaymentFormValueFailure<T> f),
    TResult item(ItemValueFailure<T> i),
    TResult workshop(WorkshopValueFailure<T> i),
    TResult messaging(UserValueFailure<T> i),
    TResult profile(ProfileValueFailure<T> i),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (auth != null) {
      return auth(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult auth(_Auth<T> value),
    @required TResult paymentSetup(_PaymentSetup<T> value),
    @required TResult paymentForm(_PaymentForm<T> value),
    @required TResult item(_Item<T> value),
    @required TResult workshop(_Workshop<T> value),
    @required TResult messaging(_UserMessaging<T> value),
    @required TResult profile(_Profile<T> value),
  }) {
    assert(auth != null);
    assert(paymentSetup != null);
    assert(paymentForm != null);
    assert(item != null);
    assert(workshop != null);
    assert(messaging != null);
    assert(profile != null);
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult auth(_Auth<T> value),
    TResult paymentSetup(_PaymentSetup<T> value),
    TResult paymentForm(_PaymentForm<T> value),
    TResult item(_Item<T> value),
    TResult workshop(_Workshop<T> value),
    TResult messaging(_UserMessaging<T> value),
    TResult profile(_Profile<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }
}

abstract class _Auth<T> implements ValueFailure<T> {
  const factory _Auth(AuthValueFailure<T> f) = _$_Auth<T>;

  AuthValueFailure<T> get f;
  _$AuthCopyWith<T, _Auth<T>> get copyWith;
}

/// @nodoc
abstract class _$PaymentSetupCopyWith<T, $Res> {
  factory _$PaymentSetupCopyWith(
          _PaymentSetup<T> value, $Res Function(_PaymentSetup<T>) then) =
      __$PaymentSetupCopyWithImpl<T, $Res>;
  $Res call({PaymentSetupValueFailures<T> f});

  $PaymentSetupValueFailuresCopyWith<T, $Res> get f;
}

/// @nodoc
class __$PaymentSetupCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$PaymentSetupCopyWith<T, $Res> {
  __$PaymentSetupCopyWithImpl(
      _PaymentSetup<T> _value, $Res Function(_PaymentSetup<T>) _then)
      : super(_value, (v) => _then(v as _PaymentSetup<T>));

  @override
  _PaymentSetup<T> get _value => super._value as _PaymentSetup<T>;

  @override
  $Res call({
    Object f = freezed,
  }) {
    return _then(_PaymentSetup<T>(
      f == freezed ? _value.f : f as PaymentSetupValueFailures<T>,
    ));
  }

  @override
  $PaymentSetupValueFailuresCopyWith<T, $Res> get f {
    if (_value.f == null) {
      return null;
    }
    return $PaymentSetupValueFailuresCopyWith<T, $Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc
class _$_PaymentSetup<T> implements _PaymentSetup<T> {
  const _$_PaymentSetup(this.f) : assert(f != null);

  @override
  final PaymentSetupValueFailures<T> f;

  @override
  String toString() {
    return 'ValueFailure<$T>.paymentSetup(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentSetup<T> &&
            (identical(other.f, f) ||
                const DeepCollectionEquality().equals(other.f, f)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(f);

  @override
  _$PaymentSetupCopyWith<T, _PaymentSetup<T>> get copyWith =>
      __$PaymentSetupCopyWithImpl<T, _PaymentSetup<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult auth(AuthValueFailure<T> f),
    @required TResult paymentSetup(PaymentSetupValueFailures<T> f),
    @required TResult paymentForm(PaymentFormValueFailure<T> f),
    @required TResult item(ItemValueFailure<T> i),
    @required TResult workshop(WorkshopValueFailure<T> i),
    @required TResult messaging(UserValueFailure<T> i),
    @required TResult profile(ProfileValueFailure<T> i),
  }) {
    assert(auth != null);
    assert(paymentSetup != null);
    assert(paymentForm != null);
    assert(item != null);
    assert(workshop != null);
    assert(messaging != null);
    assert(profile != null);
    return paymentSetup(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult auth(AuthValueFailure<T> f),
    TResult paymentSetup(PaymentSetupValueFailures<T> f),
    TResult paymentForm(PaymentFormValueFailure<T> f),
    TResult item(ItemValueFailure<T> i),
    TResult workshop(WorkshopValueFailure<T> i),
    TResult messaging(UserValueFailure<T> i),
    TResult profile(ProfileValueFailure<T> i),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (paymentSetup != null) {
      return paymentSetup(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult auth(_Auth<T> value),
    @required TResult paymentSetup(_PaymentSetup<T> value),
    @required TResult paymentForm(_PaymentForm<T> value),
    @required TResult item(_Item<T> value),
    @required TResult workshop(_Workshop<T> value),
    @required TResult messaging(_UserMessaging<T> value),
    @required TResult profile(_Profile<T> value),
  }) {
    assert(auth != null);
    assert(paymentSetup != null);
    assert(paymentForm != null);
    assert(item != null);
    assert(workshop != null);
    assert(messaging != null);
    assert(profile != null);
    return paymentSetup(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult auth(_Auth<T> value),
    TResult paymentSetup(_PaymentSetup<T> value),
    TResult paymentForm(_PaymentForm<T> value),
    TResult item(_Item<T> value),
    TResult workshop(_Workshop<T> value),
    TResult messaging(_UserMessaging<T> value),
    TResult profile(_Profile<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (paymentSetup != null) {
      return paymentSetup(this);
    }
    return orElse();
  }
}

abstract class _PaymentSetup<T> implements ValueFailure<T> {
  const factory _PaymentSetup(PaymentSetupValueFailures<T> f) =
      _$_PaymentSetup<T>;

  PaymentSetupValueFailures<T> get f;
  _$PaymentSetupCopyWith<T, _PaymentSetup<T>> get copyWith;
}

/// @nodoc
abstract class _$PaymentFormCopyWith<T, $Res> {
  factory _$PaymentFormCopyWith(
          _PaymentForm<T> value, $Res Function(_PaymentForm<T>) then) =
      __$PaymentFormCopyWithImpl<T, $Res>;
  $Res call({PaymentFormValueFailure<T> f});

  $PaymentFormValueFailureCopyWith<T, $Res> get f;
}

/// @nodoc
class __$PaymentFormCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$PaymentFormCopyWith<T, $Res> {
  __$PaymentFormCopyWithImpl(
      _PaymentForm<T> _value, $Res Function(_PaymentForm<T>) _then)
      : super(_value, (v) => _then(v as _PaymentForm<T>));

  @override
  _PaymentForm<T> get _value => super._value as _PaymentForm<T>;

  @override
  $Res call({
    Object f = freezed,
  }) {
    return _then(_PaymentForm<T>(
      f == freezed ? _value.f : f as PaymentFormValueFailure<T>,
    ));
  }

  @override
  $PaymentFormValueFailureCopyWith<T, $Res> get f {
    if (_value.f == null) {
      return null;
    }
    return $PaymentFormValueFailureCopyWith<T, $Res>(_value.f, (value) {
      return _then(_value.copyWith(f: value));
    });
  }
}

/// @nodoc
class _$_PaymentForm<T> implements _PaymentForm<T> {
  const _$_PaymentForm(this.f) : assert(f != null);

  @override
  final PaymentFormValueFailure<T> f;

  @override
  String toString() {
    return 'ValueFailure<$T>.paymentForm(f: $f)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentForm<T> &&
            (identical(other.f, f) ||
                const DeepCollectionEquality().equals(other.f, f)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(f);

  @override
  _$PaymentFormCopyWith<T, _PaymentForm<T>> get copyWith =>
      __$PaymentFormCopyWithImpl<T, _PaymentForm<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult auth(AuthValueFailure<T> f),
    @required TResult paymentSetup(PaymentSetupValueFailures<T> f),
    @required TResult paymentForm(PaymentFormValueFailure<T> f),
    @required TResult item(ItemValueFailure<T> i),
    @required TResult workshop(WorkshopValueFailure<T> i),
    @required TResult messaging(UserValueFailure<T> i),
    @required TResult profile(ProfileValueFailure<T> i),
  }) {
    assert(auth != null);
    assert(paymentSetup != null);
    assert(paymentForm != null);
    assert(item != null);
    assert(workshop != null);
    assert(messaging != null);
    assert(profile != null);
    return paymentForm(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult auth(AuthValueFailure<T> f),
    TResult paymentSetup(PaymentSetupValueFailures<T> f),
    TResult paymentForm(PaymentFormValueFailure<T> f),
    TResult item(ItemValueFailure<T> i),
    TResult workshop(WorkshopValueFailure<T> i),
    TResult messaging(UserValueFailure<T> i),
    TResult profile(ProfileValueFailure<T> i),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (paymentForm != null) {
      return paymentForm(f);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult auth(_Auth<T> value),
    @required TResult paymentSetup(_PaymentSetup<T> value),
    @required TResult paymentForm(_PaymentForm<T> value),
    @required TResult item(_Item<T> value),
    @required TResult workshop(_Workshop<T> value),
    @required TResult messaging(_UserMessaging<T> value),
    @required TResult profile(_Profile<T> value),
  }) {
    assert(auth != null);
    assert(paymentSetup != null);
    assert(paymentForm != null);
    assert(item != null);
    assert(workshop != null);
    assert(messaging != null);
    assert(profile != null);
    return paymentForm(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult auth(_Auth<T> value),
    TResult paymentSetup(_PaymentSetup<T> value),
    TResult paymentForm(_PaymentForm<T> value),
    TResult item(_Item<T> value),
    TResult workshop(_Workshop<T> value),
    TResult messaging(_UserMessaging<T> value),
    TResult profile(_Profile<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (paymentForm != null) {
      return paymentForm(this);
    }
    return orElse();
  }
}

abstract class _PaymentForm<T> implements ValueFailure<T> {
  const factory _PaymentForm(PaymentFormValueFailure<T> f) = _$_PaymentForm<T>;

  PaymentFormValueFailure<T> get f;
  _$PaymentFormCopyWith<T, _PaymentForm<T>> get copyWith;
}

/// @nodoc
abstract class _$ItemCopyWith<T, $Res> {
  factory _$ItemCopyWith(_Item<T> value, $Res Function(_Item<T>) then) =
      __$ItemCopyWithImpl<T, $Res>;
  $Res call({ItemValueFailure<T> i});

  $ItemValueFailureCopyWith<T, $Res> get i;
}

/// @nodoc
class __$ItemCopyWithImpl<T, $Res> extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$ItemCopyWith<T, $Res> {
  __$ItemCopyWithImpl(_Item<T> _value, $Res Function(_Item<T>) _then)
      : super(_value, (v) => _then(v as _Item<T>));

  @override
  _Item<T> get _value => super._value as _Item<T>;

  @override
  $Res call({
    Object i = freezed,
  }) {
    return _then(_Item<T>(
      i == freezed ? _value.i : i as ItemValueFailure<T>,
    ));
  }

  @override
  $ItemValueFailureCopyWith<T, $Res> get i {
    if (_value.i == null) {
      return null;
    }
    return $ItemValueFailureCopyWith<T, $Res>(_value.i, (value) {
      return _then(_value.copyWith(i: value));
    });
  }
}

/// @nodoc
class _$_Item<T> implements _Item<T> {
  const _$_Item(this.i) : assert(i != null);

  @override
  final ItemValueFailure<T> i;

  @override
  String toString() {
    return 'ValueFailure<$T>.item(i: $i)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Item<T> &&
            (identical(other.i, i) ||
                const DeepCollectionEquality().equals(other.i, i)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(i);

  @override
  _$ItemCopyWith<T, _Item<T>> get copyWith =>
      __$ItemCopyWithImpl<T, _Item<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult auth(AuthValueFailure<T> f),
    @required TResult paymentSetup(PaymentSetupValueFailures<T> f),
    @required TResult paymentForm(PaymentFormValueFailure<T> f),
    @required TResult item(ItemValueFailure<T> i),
    @required TResult workshop(WorkshopValueFailure<T> i),
    @required TResult messaging(UserValueFailure<T> i),
    @required TResult profile(ProfileValueFailure<T> i),
  }) {
    assert(auth != null);
    assert(paymentSetup != null);
    assert(paymentForm != null);
    assert(item != null);
    assert(workshop != null);
    assert(messaging != null);
    assert(profile != null);
    return item(i);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult auth(AuthValueFailure<T> f),
    TResult paymentSetup(PaymentSetupValueFailures<T> f),
    TResult paymentForm(PaymentFormValueFailure<T> f),
    TResult item(ItemValueFailure<T> i),
    TResult workshop(WorkshopValueFailure<T> i),
    TResult messaging(UserValueFailure<T> i),
    TResult profile(ProfileValueFailure<T> i),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (item != null) {
      return item(i);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult auth(_Auth<T> value),
    @required TResult paymentSetup(_PaymentSetup<T> value),
    @required TResult paymentForm(_PaymentForm<T> value),
    @required TResult item(_Item<T> value),
    @required TResult workshop(_Workshop<T> value),
    @required TResult messaging(_UserMessaging<T> value),
    @required TResult profile(_Profile<T> value),
  }) {
    assert(auth != null);
    assert(paymentSetup != null);
    assert(paymentForm != null);
    assert(item != null);
    assert(workshop != null);
    assert(messaging != null);
    assert(profile != null);
    return item(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult auth(_Auth<T> value),
    TResult paymentSetup(_PaymentSetup<T> value),
    TResult paymentForm(_PaymentForm<T> value),
    TResult item(_Item<T> value),
    TResult workshop(_Workshop<T> value),
    TResult messaging(_UserMessaging<T> value),
    TResult profile(_Profile<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (item != null) {
      return item(this);
    }
    return orElse();
  }
}

abstract class _Item<T> implements ValueFailure<T> {
  const factory _Item(ItemValueFailure<T> i) = _$_Item<T>;

  ItemValueFailure<T> get i;
  _$ItemCopyWith<T, _Item<T>> get copyWith;
}

/// @nodoc
abstract class _$WorkshopCopyWith<T, $Res> {
  factory _$WorkshopCopyWith(
          _Workshop<T> value, $Res Function(_Workshop<T>) then) =
      __$WorkshopCopyWithImpl<T, $Res>;
  $Res call({WorkshopValueFailure<T> i});

  $WorkshopValueFailureCopyWith<T, $Res> get i;
}

/// @nodoc
class __$WorkshopCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$WorkshopCopyWith<T, $Res> {
  __$WorkshopCopyWithImpl(
      _Workshop<T> _value, $Res Function(_Workshop<T>) _then)
      : super(_value, (v) => _then(v as _Workshop<T>));

  @override
  _Workshop<T> get _value => super._value as _Workshop<T>;

  @override
  $Res call({
    Object i = freezed,
  }) {
    return _then(_Workshop<T>(
      i == freezed ? _value.i : i as WorkshopValueFailure<T>,
    ));
  }

  @override
  $WorkshopValueFailureCopyWith<T, $Res> get i {
    if (_value.i == null) {
      return null;
    }
    return $WorkshopValueFailureCopyWith<T, $Res>(_value.i, (value) {
      return _then(_value.copyWith(i: value));
    });
  }
}

/// @nodoc
class _$_Workshop<T> implements _Workshop<T> {
  const _$_Workshop(this.i) : assert(i != null);

  @override
  final WorkshopValueFailure<T> i;

  @override
  String toString() {
    return 'ValueFailure<$T>.workshop(i: $i)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Workshop<T> &&
            (identical(other.i, i) ||
                const DeepCollectionEquality().equals(other.i, i)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(i);

  @override
  _$WorkshopCopyWith<T, _Workshop<T>> get copyWith =>
      __$WorkshopCopyWithImpl<T, _Workshop<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult auth(AuthValueFailure<T> f),
    @required TResult paymentSetup(PaymentSetupValueFailures<T> f),
    @required TResult paymentForm(PaymentFormValueFailure<T> f),
    @required TResult item(ItemValueFailure<T> i),
    @required TResult workshop(WorkshopValueFailure<T> i),
    @required TResult messaging(UserValueFailure<T> i),
    @required TResult profile(ProfileValueFailure<T> i),
  }) {
    assert(auth != null);
    assert(paymentSetup != null);
    assert(paymentForm != null);
    assert(item != null);
    assert(workshop != null);
    assert(messaging != null);
    assert(profile != null);
    return workshop(i);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult auth(AuthValueFailure<T> f),
    TResult paymentSetup(PaymentSetupValueFailures<T> f),
    TResult paymentForm(PaymentFormValueFailure<T> f),
    TResult item(ItemValueFailure<T> i),
    TResult workshop(WorkshopValueFailure<T> i),
    TResult messaging(UserValueFailure<T> i),
    TResult profile(ProfileValueFailure<T> i),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (workshop != null) {
      return workshop(i);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult auth(_Auth<T> value),
    @required TResult paymentSetup(_PaymentSetup<T> value),
    @required TResult paymentForm(_PaymentForm<T> value),
    @required TResult item(_Item<T> value),
    @required TResult workshop(_Workshop<T> value),
    @required TResult messaging(_UserMessaging<T> value),
    @required TResult profile(_Profile<T> value),
  }) {
    assert(auth != null);
    assert(paymentSetup != null);
    assert(paymentForm != null);
    assert(item != null);
    assert(workshop != null);
    assert(messaging != null);
    assert(profile != null);
    return workshop(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult auth(_Auth<T> value),
    TResult paymentSetup(_PaymentSetup<T> value),
    TResult paymentForm(_PaymentForm<T> value),
    TResult item(_Item<T> value),
    TResult workshop(_Workshop<T> value),
    TResult messaging(_UserMessaging<T> value),
    TResult profile(_Profile<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (workshop != null) {
      return workshop(this);
    }
    return orElse();
  }
}

abstract class _Workshop<T> implements ValueFailure<T> {
  const factory _Workshop(WorkshopValueFailure<T> i) = _$_Workshop<T>;

  WorkshopValueFailure<T> get i;
  _$WorkshopCopyWith<T, _Workshop<T>> get copyWith;
}

/// @nodoc
abstract class _$UserMessagingCopyWith<T, $Res> {
  factory _$UserMessagingCopyWith(
          _UserMessaging<T> value, $Res Function(_UserMessaging<T>) then) =
      __$UserMessagingCopyWithImpl<T, $Res>;
  $Res call({UserValueFailure<T> i});

  $UserValueFailureCopyWith<T, $Res> get i;
}

/// @nodoc
class __$UserMessagingCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$UserMessagingCopyWith<T, $Res> {
  __$UserMessagingCopyWithImpl(
      _UserMessaging<T> _value, $Res Function(_UserMessaging<T>) _then)
      : super(_value, (v) => _then(v as _UserMessaging<T>));

  @override
  _UserMessaging<T> get _value => super._value as _UserMessaging<T>;

  @override
  $Res call({
    Object i = freezed,
  }) {
    return _then(_UserMessaging<T>(
      i == freezed ? _value.i : i as UserValueFailure<T>,
    ));
  }

  @override
  $UserValueFailureCopyWith<T, $Res> get i {
    if (_value.i == null) {
      return null;
    }
    return $UserValueFailureCopyWith<T, $Res>(_value.i, (value) {
      return _then(_value.copyWith(i: value));
    });
  }
}

/// @nodoc
class _$_UserMessaging<T> implements _UserMessaging<T> {
  const _$_UserMessaging(this.i) : assert(i != null);

  @override
  final UserValueFailure<T> i;

  @override
  String toString() {
    return 'ValueFailure<$T>.messaging(i: $i)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserMessaging<T> &&
            (identical(other.i, i) ||
                const DeepCollectionEquality().equals(other.i, i)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(i);

  @override
  _$UserMessagingCopyWith<T, _UserMessaging<T>> get copyWith =>
      __$UserMessagingCopyWithImpl<T, _UserMessaging<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult auth(AuthValueFailure<T> f),
    @required TResult paymentSetup(PaymentSetupValueFailures<T> f),
    @required TResult paymentForm(PaymentFormValueFailure<T> f),
    @required TResult item(ItemValueFailure<T> i),
    @required TResult workshop(WorkshopValueFailure<T> i),
    @required TResult messaging(UserValueFailure<T> i),
    @required TResult profile(ProfileValueFailure<T> i),
  }) {
    assert(auth != null);
    assert(paymentSetup != null);
    assert(paymentForm != null);
    assert(item != null);
    assert(workshop != null);
    assert(messaging != null);
    assert(profile != null);
    return messaging(i);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult auth(AuthValueFailure<T> f),
    TResult paymentSetup(PaymentSetupValueFailures<T> f),
    TResult paymentForm(PaymentFormValueFailure<T> f),
    TResult item(ItemValueFailure<T> i),
    TResult workshop(WorkshopValueFailure<T> i),
    TResult messaging(UserValueFailure<T> i),
    TResult profile(ProfileValueFailure<T> i),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (messaging != null) {
      return messaging(i);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult auth(_Auth<T> value),
    @required TResult paymentSetup(_PaymentSetup<T> value),
    @required TResult paymentForm(_PaymentForm<T> value),
    @required TResult item(_Item<T> value),
    @required TResult workshop(_Workshop<T> value),
    @required TResult messaging(_UserMessaging<T> value),
    @required TResult profile(_Profile<T> value),
  }) {
    assert(auth != null);
    assert(paymentSetup != null);
    assert(paymentForm != null);
    assert(item != null);
    assert(workshop != null);
    assert(messaging != null);
    assert(profile != null);
    return messaging(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult auth(_Auth<T> value),
    TResult paymentSetup(_PaymentSetup<T> value),
    TResult paymentForm(_PaymentForm<T> value),
    TResult item(_Item<T> value),
    TResult workshop(_Workshop<T> value),
    TResult messaging(_UserMessaging<T> value),
    TResult profile(_Profile<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (messaging != null) {
      return messaging(this);
    }
    return orElse();
  }
}

abstract class _UserMessaging<T> implements ValueFailure<T> {
  const factory _UserMessaging(UserValueFailure<T> i) = _$_UserMessaging<T>;

  UserValueFailure<T> get i;
  _$UserMessagingCopyWith<T, _UserMessaging<T>> get copyWith;
}

/// @nodoc
abstract class _$ProfileCopyWith<T, $Res> {
  factory _$ProfileCopyWith(
          _Profile<T> value, $Res Function(_Profile<T>) then) =
      __$ProfileCopyWithImpl<T, $Res>;
  $Res call({ProfileValueFailure<T> i});

  $ProfileValueFailureCopyWith<T, $Res> get i;
}

/// @nodoc
class __$ProfileCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$ProfileCopyWith<T, $Res> {
  __$ProfileCopyWithImpl(_Profile<T> _value, $Res Function(_Profile<T>) _then)
      : super(_value, (v) => _then(v as _Profile<T>));

  @override
  _Profile<T> get _value => super._value as _Profile<T>;

  @override
  $Res call({
    Object i = freezed,
  }) {
    return _then(_Profile<T>(
      i == freezed ? _value.i : i as ProfileValueFailure<T>,
    ));
  }

  @override
  $ProfileValueFailureCopyWith<T, $Res> get i {
    if (_value.i == null) {
      return null;
    }
    return $ProfileValueFailureCopyWith<T, $Res>(_value.i, (value) {
      return _then(_value.copyWith(i: value));
    });
  }
}

/// @nodoc
class _$_Profile<T> implements _Profile<T> {
  const _$_Profile(this.i) : assert(i != null);

  @override
  final ProfileValueFailure<T> i;

  @override
  String toString() {
    return 'ValueFailure<$T>.profile(i: $i)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Profile<T> &&
            (identical(other.i, i) ||
                const DeepCollectionEquality().equals(other.i, i)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(i);

  @override
  _$ProfileCopyWith<T, _Profile<T>> get copyWith =>
      __$ProfileCopyWithImpl<T, _Profile<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult auth(AuthValueFailure<T> f),
    @required TResult paymentSetup(PaymentSetupValueFailures<T> f),
    @required TResult paymentForm(PaymentFormValueFailure<T> f),
    @required TResult item(ItemValueFailure<T> i),
    @required TResult workshop(WorkshopValueFailure<T> i),
    @required TResult messaging(UserValueFailure<T> i),
    @required TResult profile(ProfileValueFailure<T> i),
  }) {
    assert(auth != null);
    assert(paymentSetup != null);
    assert(paymentForm != null);
    assert(item != null);
    assert(workshop != null);
    assert(messaging != null);
    assert(profile != null);
    return profile(i);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult auth(AuthValueFailure<T> f),
    TResult paymentSetup(PaymentSetupValueFailures<T> f),
    TResult paymentForm(PaymentFormValueFailure<T> f),
    TResult item(ItemValueFailure<T> i),
    TResult workshop(WorkshopValueFailure<T> i),
    TResult messaging(UserValueFailure<T> i),
    TResult profile(ProfileValueFailure<T> i),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (profile != null) {
      return profile(i);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult auth(_Auth<T> value),
    @required TResult paymentSetup(_PaymentSetup<T> value),
    @required TResult paymentForm(_PaymentForm<T> value),
    @required TResult item(_Item<T> value),
    @required TResult workshop(_Workshop<T> value),
    @required TResult messaging(_UserMessaging<T> value),
    @required TResult profile(_Profile<T> value),
  }) {
    assert(auth != null);
    assert(paymentSetup != null);
    assert(paymentForm != null);
    assert(item != null);
    assert(workshop != null);
    assert(messaging != null);
    assert(profile != null);
    return profile(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult auth(_Auth<T> value),
    TResult paymentSetup(_PaymentSetup<T> value),
    TResult paymentForm(_PaymentForm<T> value),
    TResult item(_Item<T> value),
    TResult workshop(_Workshop<T> value),
    TResult messaging(_UserMessaging<T> value),
    TResult profile(_Profile<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (profile != null) {
      return profile(this);
    }
    return orElse();
  }
}

abstract class _Profile<T> implements ValueFailure<T> {
  const factory _Profile(ProfileValueFailure<T> i) = _$_Profile<T>;

  ProfileValueFailure<T> get i;
  _$ProfileCopyWith<T, _Profile<T>> get copyWith;
}
