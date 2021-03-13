// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'workshop_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$WorkshopFormEventTearOff {
  const _$WorkshopFormEventTearOff();

// ignore: unused_element
  _NameChanged nameChanged(String name) {
    return _NameChanged(
      name,
    );
  }

// ignore: unused_element
  _DescriptionChanged descriptionChanged(String description) {
    return _DescriptionChanged(
      description,
    );
  }

// ignore: unused_element
  _DateChanged dateChanged(String date) {
    return _DateChanged(
      date,
    );
  }

// ignore: unused_element
  _TimeChanged timeChanged(String time) {
    return _TimeChanged(
      time,
    );
  }

// ignore: unused_element
  _PriceChanged priceChanged(double price) {
    return _PriceChanged(
      price,
    );
  }

// ignore: unused_element
  _DurationChanged durationChanged(double duration) {
    return _DurationChanged(
      duration,
    );
  }

// ignore: unused_element
  _RequirementsChanged requirementsChanged(String requirements) {
    return _RequirementsChanged(
      requirements,
    );
  }

// ignore: unused_element
  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
// ignore: unused_element
const $WorkshopFormEvent = _$WorkshopFormEventTearOff();

/// @nodoc
mixin _$WorkshopFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nameChanged(String name),
    @required TResult descriptionChanged(String description),
    @required TResult dateChanged(String date),
    @required TResult timeChanged(String time),
    @required TResult priceChanged(double price),
    @required TResult durationChanged(double duration),
    @required TResult requirementsChanged(String requirements),
    @required TResult saved(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nameChanged(String name),
    TResult descriptionChanged(String description),
    TResult dateChanged(String date),
    TResult timeChanged(String time),
    TResult priceChanged(double price),
    TResult durationChanged(double duration),
    TResult requirementsChanged(String requirements),
    TResult saved(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nameChanged(_NameChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult dateChanged(_DateChanged value),
    @required TResult timeChanged(_TimeChanged value),
    @required TResult priceChanged(_PriceChanged value),
    @required TResult durationChanged(_DurationChanged value),
    @required TResult requirementsChanged(_RequirementsChanged value),
    @required TResult saved(_Saved value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nameChanged(_NameChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult dateChanged(_DateChanged value),
    TResult timeChanged(_TimeChanged value),
    TResult priceChanged(_PriceChanged value),
    TResult durationChanged(_DurationChanged value),
    TResult requirementsChanged(_RequirementsChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $WorkshopFormEventCopyWith<$Res> {
  factory $WorkshopFormEventCopyWith(
          WorkshopFormEvent value, $Res Function(WorkshopFormEvent) then) =
      _$WorkshopFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WorkshopFormEventCopyWithImpl<$Res>
    implements $WorkshopFormEventCopyWith<$Res> {
  _$WorkshopFormEventCopyWithImpl(this._value, this._then);

  final WorkshopFormEvent _value;
  // ignore: unused_field
  final $Res Function(WorkshopFormEvent) _then;
}

/// @nodoc
abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$NameChangedCopyWithImpl<$Res>
    extends _$WorkshopFormEventCopyWithImpl<$Res>
    implements _$NameChangedCopyWith<$Res> {
  __$NameChangedCopyWithImpl(
      _NameChanged _value, $Res Function(_NameChanged) _then)
      : super(_value, (v) => _then(v as _NameChanged));

  @override
  _NameChanged get _value => super._value as _NameChanged;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(_NameChanged(
      name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'WorkshopFormEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nameChanged(String name),
    @required TResult descriptionChanged(String description),
    @required TResult dateChanged(String date),
    @required TResult timeChanged(String time),
    @required TResult priceChanged(double price),
    @required TResult durationChanged(double duration),
    @required TResult requirementsChanged(String requirements),
    @required TResult saved(),
  }) {
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(timeChanged != null);
    assert(priceChanged != null);
    assert(durationChanged != null);
    assert(requirementsChanged != null);
    assert(saved != null);
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nameChanged(String name),
    TResult descriptionChanged(String description),
    TResult dateChanged(String date),
    TResult timeChanged(String time),
    TResult priceChanged(double price),
    TResult durationChanged(double duration),
    TResult requirementsChanged(String requirements),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nameChanged(_NameChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult dateChanged(_DateChanged value),
    @required TResult timeChanged(_TimeChanged value),
    @required TResult priceChanged(_PriceChanged value),
    @required TResult durationChanged(_DurationChanged value),
    @required TResult requirementsChanged(_RequirementsChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(timeChanged != null);
    assert(priceChanged != null);
    assert(durationChanged != null);
    assert(requirementsChanged != null);
    assert(saved != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nameChanged(_NameChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult dateChanged(_DateChanged value),
    TResult timeChanged(_TimeChanged value),
    TResult priceChanged(_PriceChanged value),
    TResult durationChanged(_DurationChanged value),
    TResult requirementsChanged(_RequirementsChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements WorkshopFormEvent {
  const factory _NameChanged(String name) = _$_NameChanged;

  String get name;
  @JsonKey(ignore: true)
  _$NameChangedCopyWith<_NameChanged> get copyWith;
}

/// @nodoc
abstract class _$DescriptionChangedCopyWith<$Res> {
  factory _$DescriptionChangedCopyWith(
          _DescriptionChanged value, $Res Function(_DescriptionChanged) then) =
      __$DescriptionChangedCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class __$DescriptionChangedCopyWithImpl<$Res>
    extends _$WorkshopFormEventCopyWithImpl<$Res>
    implements _$DescriptionChangedCopyWith<$Res> {
  __$DescriptionChangedCopyWithImpl(
      _DescriptionChanged _value, $Res Function(_DescriptionChanged) _then)
      : super(_value, (v) => _then(v as _DescriptionChanged));

  @override
  _DescriptionChanged get _value => super._value as _DescriptionChanged;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(_DescriptionChanged(
      description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$_DescriptionChanged implements _DescriptionChanged {
  const _$_DescriptionChanged(this.description) : assert(description != null);

  @override
  final String description;

  @override
  String toString() {
    return 'WorkshopFormEvent.descriptionChanged(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DescriptionChanged &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith =>
      __$DescriptionChangedCopyWithImpl<_DescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nameChanged(String name),
    @required TResult descriptionChanged(String description),
    @required TResult dateChanged(String date),
    @required TResult timeChanged(String time),
    @required TResult priceChanged(double price),
    @required TResult durationChanged(double duration),
    @required TResult requirementsChanged(String requirements),
    @required TResult saved(),
  }) {
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(timeChanged != null);
    assert(priceChanged != null);
    assert(durationChanged != null);
    assert(requirementsChanged != null);
    assert(saved != null);
    return descriptionChanged(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nameChanged(String name),
    TResult descriptionChanged(String description),
    TResult dateChanged(String date),
    TResult timeChanged(String time),
    TResult priceChanged(double price),
    TResult durationChanged(double duration),
    TResult requirementsChanged(String requirements),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nameChanged(_NameChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult dateChanged(_DateChanged value),
    @required TResult timeChanged(_TimeChanged value),
    @required TResult priceChanged(_PriceChanged value),
    @required TResult durationChanged(_DurationChanged value),
    @required TResult requirementsChanged(_RequirementsChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(timeChanged != null);
    assert(priceChanged != null);
    assert(durationChanged != null);
    assert(requirementsChanged != null);
    assert(saved != null);
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nameChanged(_NameChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult dateChanged(_DateChanged value),
    TResult timeChanged(_TimeChanged value),
    TResult priceChanged(_PriceChanged value),
    TResult durationChanged(_DurationChanged value),
    TResult requirementsChanged(_RequirementsChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements WorkshopFormEvent {
  const factory _DescriptionChanged(String description) = _$_DescriptionChanged;

  String get description;
  @JsonKey(ignore: true)
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith;
}

/// @nodoc
abstract class _$DateChangedCopyWith<$Res> {
  factory _$DateChangedCopyWith(
          _DateChanged value, $Res Function(_DateChanged) then) =
      __$DateChangedCopyWithImpl<$Res>;
  $Res call({String date});
}

/// @nodoc
class __$DateChangedCopyWithImpl<$Res>
    extends _$WorkshopFormEventCopyWithImpl<$Res>
    implements _$DateChangedCopyWith<$Res> {
  __$DateChangedCopyWithImpl(
      _DateChanged _value, $Res Function(_DateChanged) _then)
      : super(_value, (v) => _then(v as _DateChanged));

  @override
  _DateChanged get _value => super._value as _DateChanged;

  @override
  $Res call({
    Object date = freezed,
  }) {
    return _then(_DateChanged(
      date == freezed ? _value.date : date as String,
    ));
  }
}

/// @nodoc
class _$_DateChanged implements _DateChanged {
  const _$_DateChanged(this.date) : assert(date != null);

  @override
  final String date;

  @override
  String toString() {
    return 'WorkshopFormEvent.dateChanged(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DateChanged &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(date);

  @JsonKey(ignore: true)
  @override
  _$DateChangedCopyWith<_DateChanged> get copyWith =>
      __$DateChangedCopyWithImpl<_DateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nameChanged(String name),
    @required TResult descriptionChanged(String description),
    @required TResult dateChanged(String date),
    @required TResult timeChanged(String time),
    @required TResult priceChanged(double price),
    @required TResult durationChanged(double duration),
    @required TResult requirementsChanged(String requirements),
    @required TResult saved(),
  }) {
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(timeChanged != null);
    assert(priceChanged != null);
    assert(durationChanged != null);
    assert(requirementsChanged != null);
    assert(saved != null);
    return dateChanged(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nameChanged(String name),
    TResult descriptionChanged(String description),
    TResult dateChanged(String date),
    TResult timeChanged(String time),
    TResult priceChanged(double price),
    TResult durationChanged(double duration),
    TResult requirementsChanged(String requirements),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dateChanged != null) {
      return dateChanged(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nameChanged(_NameChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult dateChanged(_DateChanged value),
    @required TResult timeChanged(_TimeChanged value),
    @required TResult priceChanged(_PriceChanged value),
    @required TResult durationChanged(_DurationChanged value),
    @required TResult requirementsChanged(_RequirementsChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(timeChanged != null);
    assert(priceChanged != null);
    assert(durationChanged != null);
    assert(requirementsChanged != null);
    assert(saved != null);
    return dateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nameChanged(_NameChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult dateChanged(_DateChanged value),
    TResult timeChanged(_TimeChanged value),
    TResult priceChanged(_PriceChanged value),
    TResult durationChanged(_DurationChanged value),
    TResult requirementsChanged(_RequirementsChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (dateChanged != null) {
      return dateChanged(this);
    }
    return orElse();
  }
}

abstract class _DateChanged implements WorkshopFormEvent {
  const factory _DateChanged(String date) = _$_DateChanged;

  String get date;
  @JsonKey(ignore: true)
  _$DateChangedCopyWith<_DateChanged> get copyWith;
}

/// @nodoc
abstract class _$TimeChangedCopyWith<$Res> {
  factory _$TimeChangedCopyWith(
          _TimeChanged value, $Res Function(_TimeChanged) then) =
      __$TimeChangedCopyWithImpl<$Res>;
  $Res call({String time});
}

/// @nodoc
class __$TimeChangedCopyWithImpl<$Res>
    extends _$WorkshopFormEventCopyWithImpl<$Res>
    implements _$TimeChangedCopyWith<$Res> {
  __$TimeChangedCopyWithImpl(
      _TimeChanged _value, $Res Function(_TimeChanged) _then)
      : super(_value, (v) => _then(v as _TimeChanged));

  @override
  _TimeChanged get _value => super._value as _TimeChanged;

  @override
  $Res call({
    Object time = freezed,
  }) {
    return _then(_TimeChanged(
      time == freezed ? _value.time : time as String,
    ));
  }
}

/// @nodoc
class _$_TimeChanged implements _TimeChanged {
  const _$_TimeChanged(this.time) : assert(time != null);

  @override
  final String time;

  @override
  String toString() {
    return 'WorkshopFormEvent.timeChanged(time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TimeChanged &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(time);

  @JsonKey(ignore: true)
  @override
  _$TimeChangedCopyWith<_TimeChanged> get copyWith =>
      __$TimeChangedCopyWithImpl<_TimeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nameChanged(String name),
    @required TResult descriptionChanged(String description),
    @required TResult dateChanged(String date),
    @required TResult timeChanged(String time),
    @required TResult priceChanged(double price),
    @required TResult durationChanged(double duration),
    @required TResult requirementsChanged(String requirements),
    @required TResult saved(),
  }) {
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(timeChanged != null);
    assert(priceChanged != null);
    assert(durationChanged != null);
    assert(requirementsChanged != null);
    assert(saved != null);
    return timeChanged(time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nameChanged(String name),
    TResult descriptionChanged(String description),
    TResult dateChanged(String date),
    TResult timeChanged(String time),
    TResult priceChanged(double price),
    TResult durationChanged(double duration),
    TResult requirementsChanged(String requirements),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (timeChanged != null) {
      return timeChanged(time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nameChanged(_NameChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult dateChanged(_DateChanged value),
    @required TResult timeChanged(_TimeChanged value),
    @required TResult priceChanged(_PriceChanged value),
    @required TResult durationChanged(_DurationChanged value),
    @required TResult requirementsChanged(_RequirementsChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(timeChanged != null);
    assert(priceChanged != null);
    assert(durationChanged != null);
    assert(requirementsChanged != null);
    assert(saved != null);
    return timeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nameChanged(_NameChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult dateChanged(_DateChanged value),
    TResult timeChanged(_TimeChanged value),
    TResult priceChanged(_PriceChanged value),
    TResult durationChanged(_DurationChanged value),
    TResult requirementsChanged(_RequirementsChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (timeChanged != null) {
      return timeChanged(this);
    }
    return orElse();
  }
}

abstract class _TimeChanged implements WorkshopFormEvent {
  const factory _TimeChanged(String time) = _$_TimeChanged;

  String get time;
  @JsonKey(ignore: true)
  _$TimeChangedCopyWith<_TimeChanged> get copyWith;
}

/// @nodoc
abstract class _$PriceChangedCopyWith<$Res> {
  factory _$PriceChangedCopyWith(
          _PriceChanged value, $Res Function(_PriceChanged) then) =
      __$PriceChangedCopyWithImpl<$Res>;
  $Res call({double price});
}

/// @nodoc
class __$PriceChangedCopyWithImpl<$Res>
    extends _$WorkshopFormEventCopyWithImpl<$Res>
    implements _$PriceChangedCopyWith<$Res> {
  __$PriceChangedCopyWithImpl(
      _PriceChanged _value, $Res Function(_PriceChanged) _then)
      : super(_value, (v) => _then(v as _PriceChanged));

  @override
  _PriceChanged get _value => super._value as _PriceChanged;

  @override
  $Res call({
    Object price = freezed,
  }) {
    return _then(_PriceChanged(
      price == freezed ? _value.price : price as double,
    ));
  }
}

/// @nodoc
class _$_PriceChanged implements _PriceChanged {
  const _$_PriceChanged(this.price) : assert(price != null);

  @override
  final double price;

  @override
  String toString() {
    return 'WorkshopFormEvent.priceChanged(price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PriceChanged &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(price);

  @JsonKey(ignore: true)
  @override
  _$PriceChangedCopyWith<_PriceChanged> get copyWith =>
      __$PriceChangedCopyWithImpl<_PriceChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nameChanged(String name),
    @required TResult descriptionChanged(String description),
    @required TResult dateChanged(String date),
    @required TResult timeChanged(String time),
    @required TResult priceChanged(double price),
    @required TResult durationChanged(double duration),
    @required TResult requirementsChanged(String requirements),
    @required TResult saved(),
  }) {
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(timeChanged != null);
    assert(priceChanged != null);
    assert(durationChanged != null);
    assert(requirementsChanged != null);
    assert(saved != null);
    return priceChanged(price);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nameChanged(String name),
    TResult descriptionChanged(String description),
    TResult dateChanged(String date),
    TResult timeChanged(String time),
    TResult priceChanged(double price),
    TResult durationChanged(double duration),
    TResult requirementsChanged(String requirements),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (priceChanged != null) {
      return priceChanged(price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nameChanged(_NameChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult dateChanged(_DateChanged value),
    @required TResult timeChanged(_TimeChanged value),
    @required TResult priceChanged(_PriceChanged value),
    @required TResult durationChanged(_DurationChanged value),
    @required TResult requirementsChanged(_RequirementsChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(timeChanged != null);
    assert(priceChanged != null);
    assert(durationChanged != null);
    assert(requirementsChanged != null);
    assert(saved != null);
    return priceChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nameChanged(_NameChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult dateChanged(_DateChanged value),
    TResult timeChanged(_TimeChanged value),
    TResult priceChanged(_PriceChanged value),
    TResult durationChanged(_DurationChanged value),
    TResult requirementsChanged(_RequirementsChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (priceChanged != null) {
      return priceChanged(this);
    }
    return orElse();
  }
}

abstract class _PriceChanged implements WorkshopFormEvent {
  const factory _PriceChanged(double price) = _$_PriceChanged;

  double get price;
  @JsonKey(ignore: true)
  _$PriceChangedCopyWith<_PriceChanged> get copyWith;
}

/// @nodoc
abstract class _$DurationChangedCopyWith<$Res> {
  factory _$DurationChangedCopyWith(
          _DurationChanged value, $Res Function(_DurationChanged) then) =
      __$DurationChangedCopyWithImpl<$Res>;
  $Res call({double duration});
}

/// @nodoc
class __$DurationChangedCopyWithImpl<$Res>
    extends _$WorkshopFormEventCopyWithImpl<$Res>
    implements _$DurationChangedCopyWith<$Res> {
  __$DurationChangedCopyWithImpl(
      _DurationChanged _value, $Res Function(_DurationChanged) _then)
      : super(_value, (v) => _then(v as _DurationChanged));

  @override
  _DurationChanged get _value => super._value as _DurationChanged;

  @override
  $Res call({
    Object duration = freezed,
  }) {
    return _then(_DurationChanged(
      duration == freezed ? _value.duration : duration as double,
    ));
  }
}

/// @nodoc
class _$_DurationChanged implements _DurationChanged {
  const _$_DurationChanged(this.duration) : assert(duration != null);

  @override
  final double duration;

  @override
  String toString() {
    return 'WorkshopFormEvent.durationChanged(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DurationChanged &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(duration);

  @JsonKey(ignore: true)
  @override
  _$DurationChangedCopyWith<_DurationChanged> get copyWith =>
      __$DurationChangedCopyWithImpl<_DurationChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nameChanged(String name),
    @required TResult descriptionChanged(String description),
    @required TResult dateChanged(String date),
    @required TResult timeChanged(String time),
    @required TResult priceChanged(double price),
    @required TResult durationChanged(double duration),
    @required TResult requirementsChanged(String requirements),
    @required TResult saved(),
  }) {
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(timeChanged != null);
    assert(priceChanged != null);
    assert(durationChanged != null);
    assert(requirementsChanged != null);
    assert(saved != null);
    return durationChanged(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nameChanged(String name),
    TResult descriptionChanged(String description),
    TResult dateChanged(String date),
    TResult timeChanged(String time),
    TResult priceChanged(double price),
    TResult durationChanged(double duration),
    TResult requirementsChanged(String requirements),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (durationChanged != null) {
      return durationChanged(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nameChanged(_NameChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult dateChanged(_DateChanged value),
    @required TResult timeChanged(_TimeChanged value),
    @required TResult priceChanged(_PriceChanged value),
    @required TResult durationChanged(_DurationChanged value),
    @required TResult requirementsChanged(_RequirementsChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(timeChanged != null);
    assert(priceChanged != null);
    assert(durationChanged != null);
    assert(requirementsChanged != null);
    assert(saved != null);
    return durationChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nameChanged(_NameChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult dateChanged(_DateChanged value),
    TResult timeChanged(_TimeChanged value),
    TResult priceChanged(_PriceChanged value),
    TResult durationChanged(_DurationChanged value),
    TResult requirementsChanged(_RequirementsChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (durationChanged != null) {
      return durationChanged(this);
    }
    return orElse();
  }
}

abstract class _DurationChanged implements WorkshopFormEvent {
  const factory _DurationChanged(double duration) = _$_DurationChanged;

  double get duration;
  @JsonKey(ignore: true)
  _$DurationChangedCopyWith<_DurationChanged> get copyWith;
}

/// @nodoc
abstract class _$RequirementsChangedCopyWith<$Res> {
  factory _$RequirementsChangedCopyWith(_RequirementsChanged value,
          $Res Function(_RequirementsChanged) then) =
      __$RequirementsChangedCopyWithImpl<$Res>;
  $Res call({String requirements});
}

/// @nodoc
class __$RequirementsChangedCopyWithImpl<$Res>
    extends _$WorkshopFormEventCopyWithImpl<$Res>
    implements _$RequirementsChangedCopyWith<$Res> {
  __$RequirementsChangedCopyWithImpl(
      _RequirementsChanged _value, $Res Function(_RequirementsChanged) _then)
      : super(_value, (v) => _then(v as _RequirementsChanged));

  @override
  _RequirementsChanged get _value => super._value as _RequirementsChanged;

  @override
  $Res call({
    Object requirements = freezed,
  }) {
    return _then(_RequirementsChanged(
      requirements == freezed ? _value.requirements : requirements as String,
    ));
  }
}

/// @nodoc
class _$_RequirementsChanged implements _RequirementsChanged {
  const _$_RequirementsChanged(this.requirements)
      : assert(requirements != null);

  @override
  final String requirements;

  @override
  String toString() {
    return 'WorkshopFormEvent.requirementsChanged(requirements: $requirements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequirementsChanged &&
            (identical(other.requirements, requirements) ||
                const DeepCollectionEquality()
                    .equals(other.requirements, requirements)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(requirements);

  @JsonKey(ignore: true)
  @override
  _$RequirementsChangedCopyWith<_RequirementsChanged> get copyWith =>
      __$RequirementsChangedCopyWithImpl<_RequirementsChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nameChanged(String name),
    @required TResult descriptionChanged(String description),
    @required TResult dateChanged(String date),
    @required TResult timeChanged(String time),
    @required TResult priceChanged(double price),
    @required TResult durationChanged(double duration),
    @required TResult requirementsChanged(String requirements),
    @required TResult saved(),
  }) {
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(timeChanged != null);
    assert(priceChanged != null);
    assert(durationChanged != null);
    assert(requirementsChanged != null);
    assert(saved != null);
    return requirementsChanged(requirements);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nameChanged(String name),
    TResult descriptionChanged(String description),
    TResult dateChanged(String date),
    TResult timeChanged(String time),
    TResult priceChanged(double price),
    TResult durationChanged(double duration),
    TResult requirementsChanged(String requirements),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requirementsChanged != null) {
      return requirementsChanged(requirements);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nameChanged(_NameChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult dateChanged(_DateChanged value),
    @required TResult timeChanged(_TimeChanged value),
    @required TResult priceChanged(_PriceChanged value),
    @required TResult durationChanged(_DurationChanged value),
    @required TResult requirementsChanged(_RequirementsChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(timeChanged != null);
    assert(priceChanged != null);
    assert(durationChanged != null);
    assert(requirementsChanged != null);
    assert(saved != null);
    return requirementsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nameChanged(_NameChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult dateChanged(_DateChanged value),
    TResult timeChanged(_TimeChanged value),
    TResult priceChanged(_PriceChanged value),
    TResult durationChanged(_DurationChanged value),
    TResult requirementsChanged(_RequirementsChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requirementsChanged != null) {
      return requirementsChanged(this);
    }
    return orElse();
  }
}

abstract class _RequirementsChanged implements WorkshopFormEvent {
  const factory _RequirementsChanged(String requirements) =
      _$_RequirementsChanged;

  String get requirements;
  @JsonKey(ignore: true)
  _$RequirementsChangedCopyWith<_RequirementsChanged> get copyWith;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$WorkshopFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc
class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'WorkshopFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nameChanged(String name),
    @required TResult descriptionChanged(String description),
    @required TResult dateChanged(String date),
    @required TResult timeChanged(String time),
    @required TResult priceChanged(double price),
    @required TResult durationChanged(double duration),
    @required TResult requirementsChanged(String requirements),
    @required TResult saved(),
  }) {
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(timeChanged != null);
    assert(priceChanged != null);
    assert(durationChanged != null);
    assert(requirementsChanged != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nameChanged(String name),
    TResult descriptionChanged(String description),
    TResult dateChanged(String date),
    TResult timeChanged(String time),
    TResult priceChanged(double price),
    TResult durationChanged(double duration),
    TResult requirementsChanged(String requirements),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nameChanged(_NameChanged value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult dateChanged(_DateChanged value),
    @required TResult timeChanged(_TimeChanged value),
    @required TResult priceChanged(_PriceChanged value),
    @required TResult durationChanged(_DurationChanged value),
    @required TResult requirementsChanged(_RequirementsChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(dateChanged != null);
    assert(timeChanged != null);
    assert(priceChanged != null);
    assert(durationChanged != null);
    assert(requirementsChanged != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nameChanged(_NameChanged value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult dateChanged(_DateChanged value),
    TResult timeChanged(_TimeChanged value),
    TResult priceChanged(_PriceChanged value),
    TResult durationChanged(_DurationChanged value),
    TResult requirementsChanged(_RequirementsChanged value),
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

abstract class _Saved implements WorkshopFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$WorkshopFormStateTearOff {
  const _$WorkshopFormStateTearOff();

// ignore: unused_element
  _WorkshopFormState call(
      {@required
          Workshop item,
      @required
          AutovalidateMode showErrorMessages,
      @required
          bool isSaving,
      @required
          Option<Either<WorkshopErrorFailures, Unit>>
              saveFailureOrSuccessOption}) {
    return _WorkshopFormState(
      item: item,
      showErrorMessages: showErrorMessages,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $WorkshopFormState = _$WorkshopFormStateTearOff();

/// @nodoc
mixin _$WorkshopFormState {
  Workshop get item;
  AutovalidateMode get showErrorMessages;
  bool get isSaving;
  Option<Either<WorkshopErrorFailures, Unit>> get saveFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $WorkshopFormStateCopyWith<WorkshopFormState> get copyWith;
}

/// @nodoc
abstract class $WorkshopFormStateCopyWith<$Res> {
  factory $WorkshopFormStateCopyWith(
          WorkshopFormState value, $Res Function(WorkshopFormState) then) =
      _$WorkshopFormStateCopyWithImpl<$Res>;
  $Res call(
      {Workshop item,
      AutovalidateMode showErrorMessages,
      bool isSaving,
      Option<Either<WorkshopErrorFailures, Unit>> saveFailureOrSuccessOption});

  $WorkshopCopyWith<$Res> get item;
}

/// @nodoc
class _$WorkshopFormStateCopyWithImpl<$Res>
    implements $WorkshopFormStateCopyWith<$Res> {
  _$WorkshopFormStateCopyWithImpl(this._value, this._then);

  final WorkshopFormState _value;
  // ignore: unused_field
  final $Res Function(WorkshopFormState) _then;

  @override
  $Res call({
    Object item = freezed,
    Object showErrorMessages = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      item: item == freezed ? _value.item : item as Workshop,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as AutovalidateMode,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption
              as Option<Either<WorkshopErrorFailures, Unit>>,
    ));
  }

  @override
  $WorkshopCopyWith<$Res> get item {
    if (_value.item == null) {
      return null;
    }
    return $WorkshopCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc
abstract class _$WorkshopFormStateCopyWith<$Res>
    implements $WorkshopFormStateCopyWith<$Res> {
  factory _$WorkshopFormStateCopyWith(
          _WorkshopFormState value, $Res Function(_WorkshopFormState) then) =
      __$WorkshopFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Workshop item,
      AutovalidateMode showErrorMessages,
      bool isSaving,
      Option<Either<WorkshopErrorFailures, Unit>> saveFailureOrSuccessOption});

  @override
  $WorkshopCopyWith<$Res> get item;
}

/// @nodoc
class __$WorkshopFormStateCopyWithImpl<$Res>
    extends _$WorkshopFormStateCopyWithImpl<$Res>
    implements _$WorkshopFormStateCopyWith<$Res> {
  __$WorkshopFormStateCopyWithImpl(
      _WorkshopFormState _value, $Res Function(_WorkshopFormState) _then)
      : super(_value, (v) => _then(v as _WorkshopFormState));

  @override
  _WorkshopFormState get _value => super._value as _WorkshopFormState;

  @override
  $Res call({
    Object item = freezed,
    Object showErrorMessages = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_WorkshopFormState(
      item: item == freezed ? _value.item : item as Workshop,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as AutovalidateMode,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption
              as Option<Either<WorkshopErrorFailures, Unit>>,
    ));
  }
}

/// @nodoc
class _$_WorkshopFormState implements _WorkshopFormState {
  const _$_WorkshopFormState(
      {@required this.item,
      @required this.showErrorMessages,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption})
      : assert(item != null),
        assert(showErrorMessages != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final Workshop item;
  @override
  final AutovalidateMode showErrorMessages;
  @override
  final bool isSaving;
  @override
  final Option<Either<WorkshopErrorFailures, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'WorkshopFormState(item: $item, showErrorMessages: $showErrorMessages, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkshopFormState &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
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
      const DeepCollectionEquality().hash(item) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$WorkshopFormStateCopyWith<_WorkshopFormState> get copyWith =>
      __$WorkshopFormStateCopyWithImpl<_WorkshopFormState>(this, _$identity);
}

abstract class _WorkshopFormState implements WorkshopFormState {
  const factory _WorkshopFormState(
      {@required
          Workshop item,
      @required
          AutovalidateMode showErrorMessages,
      @required
          bool isSaving,
      @required
          Option<Either<WorkshopErrorFailures, Unit>>
              saveFailureOrSuccessOption}) = _$_WorkshopFormState;

  @override
  Workshop get item;
  @override
  AutovalidateMode get showErrorMessages;
  @override
  bool get isSaving;
  @override
  Option<Either<WorkshopErrorFailures, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$WorkshopFormStateCopyWith<_WorkshopFormState> get copyWith;
}
