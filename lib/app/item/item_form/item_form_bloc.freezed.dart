// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'item_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ItemFormEventTearOff {
  const _$ItemFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<Item> initialItemOption) {
    return _Initialized(
      initialItemOption,
    );
  }

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
  _PriceChanged priceChanged(double price) {
    return _PriceChanged(
      price,
    );
  }

// ignore: unused_element
  _DeliveryChanged deliveryChanged(double delivery) {
    return _DeliveryChanged(
      delivery,
    );
  }

// ignore: unused_element
  _QuantityChanged quantityChanged(int quantity) {
    return _QuantityChanged(
      quantity,
    );
  }

// ignore: unused_element
  _PurchasableChanged purchasableChanged(bool purchasable) {
    return _PurchasableChanged(
      purchasable,
    );
  }

// ignore: unused_element
  _ItemsChanged itemsChanged(KtList<ImageItemPrimitive> items) {
    return _ItemsChanged(
      items,
    );
  }

// ignore: unused_element
  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
// ignore: unused_element
const $ItemFormEvent = _$ItemFormEventTearOff();

/// @nodoc
mixin _$ItemFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Item> initialItemOption),
    @required Result nameChanged(String name),
    @required Result descriptionChanged(String description),
    @required Result priceChanged(double price),
    @required Result deliveryChanged(double delivery),
    @required Result quantityChanged(int quantity),
    @required Result purchasableChanged(bool purchasable),
    @required Result itemsChanged(KtList<ImageItemPrimitive> items),
    @required Result saved(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Item> initialItemOption),
    Result nameChanged(String name),
    Result descriptionChanged(String description),
    Result priceChanged(double price),
    Result deliveryChanged(double delivery),
    Result quantityChanged(int quantity),
    Result purchasableChanged(bool purchasable),
    Result itemsChanged(KtList<ImageItemPrimitive> items),
    Result saved(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result priceChanged(_PriceChanged value),
    @required Result deliveryChanged(_DeliveryChanged value),
    @required Result quantityChanged(_QuantityChanged value),
    @required Result purchasableChanged(_PurchasableChanged value),
    @required Result itemsChanged(_ItemsChanged value),
    @required Result saved(_Saved value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result priceChanged(_PriceChanged value),
    Result deliveryChanged(_DeliveryChanged value),
    Result quantityChanged(_QuantityChanged value),
    Result purchasableChanged(_PurchasableChanged value),
    Result itemsChanged(_ItemsChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ItemFormEventCopyWith<$Res> {
  factory $ItemFormEventCopyWith(
          ItemFormEvent value, $Res Function(ItemFormEvent) then) =
      _$ItemFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ItemFormEventCopyWithImpl<$Res>
    implements $ItemFormEventCopyWith<$Res> {
  _$ItemFormEventCopyWithImpl(this._value, this._then);

  final ItemFormEvent _value;
  // ignore: unused_field
  final $Res Function(ItemFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Item> initialItemOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$ItemFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialItemOption = freezed,
  }) {
    return _then(_Initialized(
      initialItemOption == freezed
          ? _value.initialItemOption
          : initialItemOption as Option<Item>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialItemOption)
      : assert(initialItemOption != null);

  @override
  final Option<Item> initialItemOption;

  @override
  String toString() {
    return 'ItemFormEvent.initialized(initialItemOption: $initialItemOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialItemOption, initialItemOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialItemOption, initialItemOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialItemOption);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Item> initialItemOption),
    @required Result nameChanged(String name),
    @required Result descriptionChanged(String description),
    @required Result priceChanged(double price),
    @required Result deliveryChanged(double delivery),
    @required Result quantityChanged(int quantity),
    @required Result purchasableChanged(bool purchasable),
    @required Result itemsChanged(KtList<ImageItemPrimitive> items),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(priceChanged != null);
    assert(deliveryChanged != null);
    assert(quantityChanged != null);
    assert(purchasableChanged != null);
    assert(itemsChanged != null);
    assert(saved != null);
    return initialized(initialItemOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Item> initialItemOption),
    Result nameChanged(String name),
    Result descriptionChanged(String description),
    Result priceChanged(double price),
    Result deliveryChanged(double delivery),
    Result quantityChanged(int quantity),
    Result purchasableChanged(bool purchasable),
    Result itemsChanged(KtList<ImageItemPrimitive> items),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialItemOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result priceChanged(_PriceChanged value),
    @required Result deliveryChanged(_DeliveryChanged value),
    @required Result quantityChanged(_QuantityChanged value),
    @required Result purchasableChanged(_PurchasableChanged value),
    @required Result itemsChanged(_ItemsChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(priceChanged != null);
    assert(deliveryChanged != null);
    assert(quantityChanged != null);
    assert(purchasableChanged != null);
    assert(itemsChanged != null);
    assert(saved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result priceChanged(_PriceChanged value),
    Result deliveryChanged(_DeliveryChanged value),
    Result quantityChanged(_QuantityChanged value),
    Result purchasableChanged(_PurchasableChanged value),
    Result itemsChanged(_ItemsChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ItemFormEvent {
  const factory _Initialized(Option<Item> initialItemOption) = _$_Initialized;

  Option<Item> get initialItemOption;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$NameChangedCopyWith<$Res> {
  factory _$NameChangedCopyWith(
          _NameChanged value, $Res Function(_NameChanged) then) =
      __$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$NameChangedCopyWithImpl<$Res> extends _$ItemFormEventCopyWithImpl<$Res>
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
    return 'ItemFormEvent.nameChanged(name: $name)';
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

  @override
  _$NameChangedCopyWith<_NameChanged> get copyWith =>
      __$NameChangedCopyWithImpl<_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Item> initialItemOption),
    @required Result nameChanged(String name),
    @required Result descriptionChanged(String description),
    @required Result priceChanged(double price),
    @required Result deliveryChanged(double delivery),
    @required Result quantityChanged(int quantity),
    @required Result purchasableChanged(bool purchasable),
    @required Result itemsChanged(KtList<ImageItemPrimitive> items),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(priceChanged != null);
    assert(deliveryChanged != null);
    assert(quantityChanged != null);
    assert(purchasableChanged != null);
    assert(itemsChanged != null);
    assert(saved != null);
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Item> initialItemOption),
    Result nameChanged(String name),
    Result descriptionChanged(String description),
    Result priceChanged(double price),
    Result deliveryChanged(double delivery),
    Result quantityChanged(int quantity),
    Result purchasableChanged(bool purchasable),
    Result itemsChanged(KtList<ImageItemPrimitive> items),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result priceChanged(_PriceChanged value),
    @required Result deliveryChanged(_DeliveryChanged value),
    @required Result quantityChanged(_QuantityChanged value),
    @required Result purchasableChanged(_PurchasableChanged value),
    @required Result itemsChanged(_ItemsChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(priceChanged != null);
    assert(deliveryChanged != null);
    assert(quantityChanged != null);
    assert(purchasableChanged != null);
    assert(itemsChanged != null);
    assert(saved != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result priceChanged(_PriceChanged value),
    Result deliveryChanged(_DeliveryChanged value),
    Result quantityChanged(_QuantityChanged value),
    Result purchasableChanged(_PurchasableChanged value),
    Result itemsChanged(_ItemsChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements ItemFormEvent {
  const factory _NameChanged(String name) = _$_NameChanged;

  String get name;
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
    extends _$ItemFormEventCopyWithImpl<$Res>
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
    return 'ItemFormEvent.descriptionChanged(description: $description)';
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

  @override
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith =>
      __$DescriptionChangedCopyWithImpl<_DescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Item> initialItemOption),
    @required Result nameChanged(String name),
    @required Result descriptionChanged(String description),
    @required Result priceChanged(double price),
    @required Result deliveryChanged(double delivery),
    @required Result quantityChanged(int quantity),
    @required Result purchasableChanged(bool purchasable),
    @required Result itemsChanged(KtList<ImageItemPrimitive> items),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(priceChanged != null);
    assert(deliveryChanged != null);
    assert(quantityChanged != null);
    assert(purchasableChanged != null);
    assert(itemsChanged != null);
    assert(saved != null);
    return descriptionChanged(description);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Item> initialItemOption),
    Result nameChanged(String name),
    Result descriptionChanged(String description),
    Result priceChanged(double price),
    Result deliveryChanged(double delivery),
    Result quantityChanged(int quantity),
    Result purchasableChanged(bool purchasable),
    Result itemsChanged(KtList<ImageItemPrimitive> items),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result priceChanged(_PriceChanged value),
    @required Result deliveryChanged(_DeliveryChanged value),
    @required Result quantityChanged(_QuantityChanged value),
    @required Result purchasableChanged(_PurchasableChanged value),
    @required Result itemsChanged(_ItemsChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(priceChanged != null);
    assert(deliveryChanged != null);
    assert(quantityChanged != null);
    assert(purchasableChanged != null);
    assert(itemsChanged != null);
    assert(saved != null);
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result priceChanged(_PriceChanged value),
    Result deliveryChanged(_DeliveryChanged value),
    Result quantityChanged(_QuantityChanged value),
    Result purchasableChanged(_PurchasableChanged value),
    Result itemsChanged(_ItemsChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements ItemFormEvent {
  const factory _DescriptionChanged(String description) = _$_DescriptionChanged;

  String get description;
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith;
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
    extends _$ItemFormEventCopyWithImpl<$Res>
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
    return 'ItemFormEvent.priceChanged(price: $price)';
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

  @override
  _$PriceChangedCopyWith<_PriceChanged> get copyWith =>
      __$PriceChangedCopyWithImpl<_PriceChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Item> initialItemOption),
    @required Result nameChanged(String name),
    @required Result descriptionChanged(String description),
    @required Result priceChanged(double price),
    @required Result deliveryChanged(double delivery),
    @required Result quantityChanged(int quantity),
    @required Result purchasableChanged(bool purchasable),
    @required Result itemsChanged(KtList<ImageItemPrimitive> items),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(priceChanged != null);
    assert(deliveryChanged != null);
    assert(quantityChanged != null);
    assert(purchasableChanged != null);
    assert(itemsChanged != null);
    assert(saved != null);
    return priceChanged(price);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Item> initialItemOption),
    Result nameChanged(String name),
    Result descriptionChanged(String description),
    Result priceChanged(double price),
    Result deliveryChanged(double delivery),
    Result quantityChanged(int quantity),
    Result purchasableChanged(bool purchasable),
    Result itemsChanged(KtList<ImageItemPrimitive> items),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (priceChanged != null) {
      return priceChanged(price);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result priceChanged(_PriceChanged value),
    @required Result deliveryChanged(_DeliveryChanged value),
    @required Result quantityChanged(_QuantityChanged value),
    @required Result purchasableChanged(_PurchasableChanged value),
    @required Result itemsChanged(_ItemsChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(priceChanged != null);
    assert(deliveryChanged != null);
    assert(quantityChanged != null);
    assert(purchasableChanged != null);
    assert(itemsChanged != null);
    assert(saved != null);
    return priceChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result priceChanged(_PriceChanged value),
    Result deliveryChanged(_DeliveryChanged value),
    Result quantityChanged(_QuantityChanged value),
    Result purchasableChanged(_PurchasableChanged value),
    Result itemsChanged(_ItemsChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (priceChanged != null) {
      return priceChanged(this);
    }
    return orElse();
  }
}

abstract class _PriceChanged implements ItemFormEvent {
  const factory _PriceChanged(double price) = _$_PriceChanged;

  double get price;
  _$PriceChangedCopyWith<_PriceChanged> get copyWith;
}

/// @nodoc
abstract class _$DeliveryChangedCopyWith<$Res> {
  factory _$DeliveryChangedCopyWith(
          _DeliveryChanged value, $Res Function(_DeliveryChanged) then) =
      __$DeliveryChangedCopyWithImpl<$Res>;
  $Res call({double delivery});
}

/// @nodoc
class __$DeliveryChangedCopyWithImpl<$Res>
    extends _$ItemFormEventCopyWithImpl<$Res>
    implements _$DeliveryChangedCopyWith<$Res> {
  __$DeliveryChangedCopyWithImpl(
      _DeliveryChanged _value, $Res Function(_DeliveryChanged) _then)
      : super(_value, (v) => _then(v as _DeliveryChanged));

  @override
  _DeliveryChanged get _value => super._value as _DeliveryChanged;

  @override
  $Res call({
    Object delivery = freezed,
  }) {
    return _then(_DeliveryChanged(
      delivery == freezed ? _value.delivery : delivery as double,
    ));
  }
}

/// @nodoc
class _$_DeliveryChanged implements _DeliveryChanged {
  const _$_DeliveryChanged(this.delivery) : assert(delivery != null);

  @override
  final double delivery;

  @override
  String toString() {
    return 'ItemFormEvent.deliveryChanged(delivery: $delivery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeliveryChanged &&
            (identical(other.delivery, delivery) ||
                const DeepCollectionEquality()
                    .equals(other.delivery, delivery)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(delivery);

  @override
  _$DeliveryChangedCopyWith<_DeliveryChanged> get copyWith =>
      __$DeliveryChangedCopyWithImpl<_DeliveryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Item> initialItemOption),
    @required Result nameChanged(String name),
    @required Result descriptionChanged(String description),
    @required Result priceChanged(double price),
    @required Result deliveryChanged(double delivery),
    @required Result quantityChanged(int quantity),
    @required Result purchasableChanged(bool purchasable),
    @required Result itemsChanged(KtList<ImageItemPrimitive> items),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(priceChanged != null);
    assert(deliveryChanged != null);
    assert(quantityChanged != null);
    assert(purchasableChanged != null);
    assert(itemsChanged != null);
    assert(saved != null);
    return deliveryChanged(delivery);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Item> initialItemOption),
    Result nameChanged(String name),
    Result descriptionChanged(String description),
    Result priceChanged(double price),
    Result deliveryChanged(double delivery),
    Result quantityChanged(int quantity),
    Result purchasableChanged(bool purchasable),
    Result itemsChanged(KtList<ImageItemPrimitive> items),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deliveryChanged != null) {
      return deliveryChanged(delivery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result priceChanged(_PriceChanged value),
    @required Result deliveryChanged(_DeliveryChanged value),
    @required Result quantityChanged(_QuantityChanged value),
    @required Result purchasableChanged(_PurchasableChanged value),
    @required Result itemsChanged(_ItemsChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(priceChanged != null);
    assert(deliveryChanged != null);
    assert(quantityChanged != null);
    assert(purchasableChanged != null);
    assert(itemsChanged != null);
    assert(saved != null);
    return deliveryChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result priceChanged(_PriceChanged value),
    Result deliveryChanged(_DeliveryChanged value),
    Result quantityChanged(_QuantityChanged value),
    Result purchasableChanged(_PurchasableChanged value),
    Result itemsChanged(_ItemsChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deliveryChanged != null) {
      return deliveryChanged(this);
    }
    return orElse();
  }
}

abstract class _DeliveryChanged implements ItemFormEvent {
  const factory _DeliveryChanged(double delivery) = _$_DeliveryChanged;

  double get delivery;
  _$DeliveryChangedCopyWith<_DeliveryChanged> get copyWith;
}

/// @nodoc
abstract class _$QuantityChangedCopyWith<$Res> {
  factory _$QuantityChangedCopyWith(
          _QuantityChanged value, $Res Function(_QuantityChanged) then) =
      __$QuantityChangedCopyWithImpl<$Res>;
  $Res call({int quantity});
}

/// @nodoc
class __$QuantityChangedCopyWithImpl<$Res>
    extends _$ItemFormEventCopyWithImpl<$Res>
    implements _$QuantityChangedCopyWith<$Res> {
  __$QuantityChangedCopyWithImpl(
      _QuantityChanged _value, $Res Function(_QuantityChanged) _then)
      : super(_value, (v) => _then(v as _QuantityChanged));

  @override
  _QuantityChanged get _value => super._value as _QuantityChanged;

  @override
  $Res call({
    Object quantity = freezed,
  }) {
    return _then(_QuantityChanged(
      quantity == freezed ? _value.quantity : quantity as int,
    ));
  }
}

/// @nodoc
class _$_QuantityChanged implements _QuantityChanged {
  const _$_QuantityChanged(this.quantity) : assert(quantity != null);

  @override
  final int quantity;

  @override
  String toString() {
    return 'ItemFormEvent.quantityChanged(quantity: $quantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuantityChanged &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(quantity);

  @override
  _$QuantityChangedCopyWith<_QuantityChanged> get copyWith =>
      __$QuantityChangedCopyWithImpl<_QuantityChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Item> initialItemOption),
    @required Result nameChanged(String name),
    @required Result descriptionChanged(String description),
    @required Result priceChanged(double price),
    @required Result deliveryChanged(double delivery),
    @required Result quantityChanged(int quantity),
    @required Result purchasableChanged(bool purchasable),
    @required Result itemsChanged(KtList<ImageItemPrimitive> items),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(priceChanged != null);
    assert(deliveryChanged != null);
    assert(quantityChanged != null);
    assert(purchasableChanged != null);
    assert(itemsChanged != null);
    assert(saved != null);
    return quantityChanged(quantity);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Item> initialItemOption),
    Result nameChanged(String name),
    Result descriptionChanged(String description),
    Result priceChanged(double price),
    Result deliveryChanged(double delivery),
    Result quantityChanged(int quantity),
    Result purchasableChanged(bool purchasable),
    Result itemsChanged(KtList<ImageItemPrimitive> items),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (quantityChanged != null) {
      return quantityChanged(quantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result priceChanged(_PriceChanged value),
    @required Result deliveryChanged(_DeliveryChanged value),
    @required Result quantityChanged(_QuantityChanged value),
    @required Result purchasableChanged(_PurchasableChanged value),
    @required Result itemsChanged(_ItemsChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(priceChanged != null);
    assert(deliveryChanged != null);
    assert(quantityChanged != null);
    assert(purchasableChanged != null);
    assert(itemsChanged != null);
    assert(saved != null);
    return quantityChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result priceChanged(_PriceChanged value),
    Result deliveryChanged(_DeliveryChanged value),
    Result quantityChanged(_QuantityChanged value),
    Result purchasableChanged(_PurchasableChanged value),
    Result itemsChanged(_ItemsChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (quantityChanged != null) {
      return quantityChanged(this);
    }
    return orElse();
  }
}

abstract class _QuantityChanged implements ItemFormEvent {
  const factory _QuantityChanged(int quantity) = _$_QuantityChanged;

  int get quantity;
  _$QuantityChangedCopyWith<_QuantityChanged> get copyWith;
}

/// @nodoc
abstract class _$PurchasableChangedCopyWith<$Res> {
  factory _$PurchasableChangedCopyWith(
          _PurchasableChanged value, $Res Function(_PurchasableChanged) then) =
      __$PurchasableChangedCopyWithImpl<$Res>;
  $Res call({bool purchasable});
}

/// @nodoc
class __$PurchasableChangedCopyWithImpl<$Res>
    extends _$ItemFormEventCopyWithImpl<$Res>
    implements _$PurchasableChangedCopyWith<$Res> {
  __$PurchasableChangedCopyWithImpl(
      _PurchasableChanged _value, $Res Function(_PurchasableChanged) _then)
      : super(_value, (v) => _then(v as _PurchasableChanged));

  @override
  _PurchasableChanged get _value => super._value as _PurchasableChanged;

  @override
  $Res call({
    Object purchasable = freezed,
  }) {
    return _then(_PurchasableChanged(
      purchasable == freezed ? _value.purchasable : purchasable as bool,
    ));
  }
}

/// @nodoc
class _$_PurchasableChanged implements _PurchasableChanged {
  const _$_PurchasableChanged(this.purchasable) : assert(purchasable != null);

  @override
  final bool purchasable;

  @override
  String toString() {
    return 'ItemFormEvent.purchasableChanged(purchasable: $purchasable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PurchasableChanged &&
            (identical(other.purchasable, purchasable) ||
                const DeepCollectionEquality()
                    .equals(other.purchasable, purchasable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(purchasable);

  @override
  _$PurchasableChangedCopyWith<_PurchasableChanged> get copyWith =>
      __$PurchasableChangedCopyWithImpl<_PurchasableChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Item> initialItemOption),
    @required Result nameChanged(String name),
    @required Result descriptionChanged(String description),
    @required Result priceChanged(double price),
    @required Result deliveryChanged(double delivery),
    @required Result quantityChanged(int quantity),
    @required Result purchasableChanged(bool purchasable),
    @required Result itemsChanged(KtList<ImageItemPrimitive> items),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(priceChanged != null);
    assert(deliveryChanged != null);
    assert(quantityChanged != null);
    assert(purchasableChanged != null);
    assert(itemsChanged != null);
    assert(saved != null);
    return purchasableChanged(purchasable);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Item> initialItemOption),
    Result nameChanged(String name),
    Result descriptionChanged(String description),
    Result priceChanged(double price),
    Result deliveryChanged(double delivery),
    Result quantityChanged(int quantity),
    Result purchasableChanged(bool purchasable),
    Result itemsChanged(KtList<ImageItemPrimitive> items),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (purchasableChanged != null) {
      return purchasableChanged(purchasable);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result priceChanged(_PriceChanged value),
    @required Result deliveryChanged(_DeliveryChanged value),
    @required Result quantityChanged(_QuantityChanged value),
    @required Result purchasableChanged(_PurchasableChanged value),
    @required Result itemsChanged(_ItemsChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(priceChanged != null);
    assert(deliveryChanged != null);
    assert(quantityChanged != null);
    assert(purchasableChanged != null);
    assert(itemsChanged != null);
    assert(saved != null);
    return purchasableChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result priceChanged(_PriceChanged value),
    Result deliveryChanged(_DeliveryChanged value),
    Result quantityChanged(_QuantityChanged value),
    Result purchasableChanged(_PurchasableChanged value),
    Result itemsChanged(_ItemsChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (purchasableChanged != null) {
      return purchasableChanged(this);
    }
    return orElse();
  }
}

abstract class _PurchasableChanged implements ItemFormEvent {
  const factory _PurchasableChanged(bool purchasable) = _$_PurchasableChanged;

  bool get purchasable;
  _$PurchasableChangedCopyWith<_PurchasableChanged> get copyWith;
}

/// @nodoc
abstract class _$ItemsChangedCopyWith<$Res> {
  factory _$ItemsChangedCopyWith(
          _ItemsChanged value, $Res Function(_ItemsChanged) then) =
      __$ItemsChangedCopyWithImpl<$Res>;
  $Res call({KtList<ImageItemPrimitive> items});
}

/// @nodoc
class __$ItemsChangedCopyWithImpl<$Res>
    extends _$ItemFormEventCopyWithImpl<$Res>
    implements _$ItemsChangedCopyWith<$Res> {
  __$ItemsChangedCopyWithImpl(
      _ItemsChanged _value, $Res Function(_ItemsChanged) _then)
      : super(_value, (v) => _then(v as _ItemsChanged));

  @override
  _ItemsChanged get _value => super._value as _ItemsChanged;

  @override
  $Res call({
    Object items = freezed,
  }) {
    return _then(_ItemsChanged(
      items == freezed ? _value.items : items as KtList<ImageItemPrimitive>,
    ));
  }
}

/// @nodoc
class _$_ItemsChanged implements _ItemsChanged {
  const _$_ItemsChanged(this.items) : assert(items != null);

  @override
  final KtList<ImageItemPrimitive> items;

  @override
  String toString() {
    return 'ItemFormEvent.itemsChanged(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemsChanged &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(items);

  @override
  _$ItemsChangedCopyWith<_ItemsChanged> get copyWith =>
      __$ItemsChangedCopyWithImpl<_ItemsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Item> initialItemOption),
    @required Result nameChanged(String name),
    @required Result descriptionChanged(String description),
    @required Result priceChanged(double price),
    @required Result deliveryChanged(double delivery),
    @required Result quantityChanged(int quantity),
    @required Result purchasableChanged(bool purchasable),
    @required Result itemsChanged(KtList<ImageItemPrimitive> items),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(priceChanged != null);
    assert(deliveryChanged != null);
    assert(quantityChanged != null);
    assert(purchasableChanged != null);
    assert(itemsChanged != null);
    assert(saved != null);
    return itemsChanged(items);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Item> initialItemOption),
    Result nameChanged(String name),
    Result descriptionChanged(String description),
    Result priceChanged(double price),
    Result deliveryChanged(double delivery),
    Result quantityChanged(int quantity),
    Result purchasableChanged(bool purchasable),
    Result itemsChanged(KtList<ImageItemPrimitive> items),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (itemsChanged != null) {
      return itemsChanged(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result priceChanged(_PriceChanged value),
    @required Result deliveryChanged(_DeliveryChanged value),
    @required Result quantityChanged(_QuantityChanged value),
    @required Result purchasableChanged(_PurchasableChanged value),
    @required Result itemsChanged(_ItemsChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(priceChanged != null);
    assert(deliveryChanged != null);
    assert(quantityChanged != null);
    assert(purchasableChanged != null);
    assert(itemsChanged != null);
    assert(saved != null);
    return itemsChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result priceChanged(_PriceChanged value),
    Result deliveryChanged(_DeliveryChanged value),
    Result quantityChanged(_QuantityChanged value),
    Result purchasableChanged(_PurchasableChanged value),
    Result itemsChanged(_ItemsChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (itemsChanged != null) {
      return itemsChanged(this);
    }
    return orElse();
  }
}

abstract class _ItemsChanged implements ItemFormEvent {
  const factory _ItemsChanged(KtList<ImageItemPrimitive> items) =
      _$_ItemsChanged;

  KtList<ImageItemPrimitive> get items;
  _$ItemsChangedCopyWith<_ItemsChanged> get copyWith;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$ItemFormEventCopyWithImpl<$Res>
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
    return 'ItemFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Item> initialItemOption),
    @required Result nameChanged(String name),
    @required Result descriptionChanged(String description),
    @required Result priceChanged(double price),
    @required Result deliveryChanged(double delivery),
    @required Result quantityChanged(int quantity),
    @required Result purchasableChanged(bool purchasable),
    @required Result itemsChanged(KtList<ImageItemPrimitive> items),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(priceChanged != null);
    assert(deliveryChanged != null);
    assert(quantityChanged != null);
    assert(purchasableChanged != null);
    assert(itemsChanged != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Item> initialItemOption),
    Result nameChanged(String name),
    Result descriptionChanged(String description),
    Result priceChanged(double price),
    Result deliveryChanged(double delivery),
    Result quantityChanged(int quantity),
    Result purchasableChanged(bool purchasable),
    Result itemsChanged(KtList<ImageItemPrimitive> items),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result nameChanged(_NameChanged value),
    @required Result descriptionChanged(_DescriptionChanged value),
    @required Result priceChanged(_PriceChanged value),
    @required Result deliveryChanged(_DeliveryChanged value),
    @required Result quantityChanged(_QuantityChanged value),
    @required Result purchasableChanged(_PurchasableChanged value),
    @required Result itemsChanged(_ItemsChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(nameChanged != null);
    assert(descriptionChanged != null);
    assert(priceChanged != null);
    assert(deliveryChanged != null);
    assert(quantityChanged != null);
    assert(purchasableChanged != null);
    assert(itemsChanged != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result nameChanged(_NameChanged value),
    Result descriptionChanged(_DescriptionChanged value),
    Result priceChanged(_PriceChanged value),
    Result deliveryChanged(_DeliveryChanged value),
    Result quantityChanged(_QuantityChanged value),
    Result purchasableChanged(_PurchasableChanged value),
    Result itemsChanged(_ItemsChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements ItemFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$ItemFormStateTearOff {
  const _$ItemFormStateTearOff();

// ignore: unused_element
  _ItemFormState call(
      {@required
          Item item,
      @required
          AutovalidateMode showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Option<Either<ItemErrorFailure, Unit>> saveFailureOrSuccessOption}) {
    return _ItemFormState(
      item: item,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ItemFormState = _$ItemFormStateTearOff();

/// @nodoc
mixin _$ItemFormState {
  Item get item;
  AutovalidateMode get showErrorMessages;
  bool get isEditing;
  bool get isSaving;
  Option<Either<ItemErrorFailure, Unit>> get saveFailureOrSuccessOption;

  $ItemFormStateCopyWith<ItemFormState> get copyWith;
}

/// @nodoc
abstract class $ItemFormStateCopyWith<$Res> {
  factory $ItemFormStateCopyWith(
          ItemFormState value, $Res Function(ItemFormState) then) =
      _$ItemFormStateCopyWithImpl<$Res>;
  $Res call(
      {Item item,
      AutovalidateMode showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<ItemErrorFailure, Unit>> saveFailureOrSuccessOption});

  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class _$ItemFormStateCopyWithImpl<$Res>
    implements $ItemFormStateCopyWith<$Res> {
  _$ItemFormStateCopyWithImpl(this._value, this._then);

  final ItemFormState _value;
  // ignore: unused_field
  final $Res Function(ItemFormState) _then;

  @override
  $Res call({
    Object item = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      item: item == freezed ? _value.item : item as Item,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as AutovalidateMode,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption
              as Option<Either<ItemErrorFailure, Unit>>,
    ));
  }

  @override
  $ItemCopyWith<$Res> get item {
    if (_value.item == null) {
      return null;
    }
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc
abstract class _$ItemFormStateCopyWith<$Res>
    implements $ItemFormStateCopyWith<$Res> {
  factory _$ItemFormStateCopyWith(
          _ItemFormState value, $Res Function(_ItemFormState) then) =
      __$ItemFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Item item,
      AutovalidateMode showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<ItemErrorFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $ItemCopyWith<$Res> get item;
}

/// @nodoc
class __$ItemFormStateCopyWithImpl<$Res>
    extends _$ItemFormStateCopyWithImpl<$Res>
    implements _$ItemFormStateCopyWith<$Res> {
  __$ItemFormStateCopyWithImpl(
      _ItemFormState _value, $Res Function(_ItemFormState) _then)
      : super(_value, (v) => _then(v as _ItemFormState));

  @override
  _ItemFormState get _value => super._value as _ItemFormState;

  @override
  $Res call({
    Object item = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_ItemFormState(
      item: item == freezed ? _value.item : item as Item,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as AutovalidateMode,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption
              as Option<Either<ItemErrorFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_ItemFormState implements _ItemFormState {
  const _$_ItemFormState(
      {@required this.item,
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption})
      : assert(item != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final Item item;
  @override
  final AutovalidateMode showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<ItemErrorFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'ItemFormState(item: $item, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemFormState &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
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
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$ItemFormStateCopyWith<_ItemFormState> get copyWith =>
      __$ItemFormStateCopyWithImpl<_ItemFormState>(this, _$identity);
}

abstract class _ItemFormState implements ItemFormState {
  const factory _ItemFormState(
      {@required
          Item item,
      @required
          AutovalidateMode showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Option<Either<ItemErrorFailure, Unit>>
              saveFailureOrSuccessOption}) = _$_ItemFormState;

  @override
  Item get item;
  @override
  AutovalidateMode get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<ItemErrorFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  _$ItemFormStateCopyWith<_ItemFormState> get copyWith;
}
