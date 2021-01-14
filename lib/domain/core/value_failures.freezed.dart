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
  _Item<T> item<T>(ItemValueFailure<T> i) {
    return _Item<T>(
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
    @required TResult item(ItemValueFailure<T> i),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult auth(AuthValueFailure<T> f),
    TResult item(ItemValueFailure<T> i),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult auth(_Auth<T> value),
    @required TResult item(_Item<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult auth(_Auth<T> value),
    TResult item(_Item<T> value),
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
    @required TResult item(ItemValueFailure<T> i),
  }) {
    assert(auth != null);
    assert(item != null);
    return auth(f);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult auth(AuthValueFailure<T> f),
    TResult item(ItemValueFailure<T> i),
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
    @required TResult item(_Item<T> value),
  }) {
    assert(auth != null);
    assert(item != null);
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult auth(_Auth<T> value),
    TResult item(_Item<T> value),
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
    @required TResult item(ItemValueFailure<T> i),
  }) {
    assert(auth != null);
    assert(item != null);
    return item(i);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult auth(AuthValueFailure<T> f),
    TResult item(ItemValueFailure<T> i),
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
    @required TResult item(_Item<T> value),
  }) {
    assert(auth != null);
    assert(item != null);
    return item(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult auth(_Auth<T> value),
    TResult item(_Item<T> value),
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
