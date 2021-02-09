// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ItemTearOff {
  const _$ItemTearOff();

// ignore: unused_element
  _Item call(
      {@required UniqueId id,
      String timestamp,
      @required ItemName name,
      @required ItemDescription description,
      @required ItemPrice price,
      @required ItemDeliveryFee delivery,
      @required ItemQuantity quantity,
      @required ItemPurchasable purchasable,
      @required ItemImageList<IndividualImages> images}) {
    return _Item(
      id: id,
      timestamp: timestamp,
      name: name,
      description: description,
      price: price,
      delivery: delivery,
      quantity: quantity,
      purchasable: purchasable,
      images: images,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Item = _$ItemTearOff();

/// @nodoc
mixin _$Item {
  UniqueId get id;
  String get timestamp;
  ItemName get name;
  ItemDescription get description;
  ItemPrice get price;
  ItemDeliveryFee get delivery;
  ItemQuantity get quantity;
  ItemPurchasable get purchasable;
  ItemImageList<IndividualImages> get images;

  $ItemCopyWith<Item> get copyWith;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      String timestamp,
      ItemName name,
      ItemDescription description,
      ItemPrice price,
      ItemDeliveryFee delivery,
      ItemQuantity quantity,
      ItemPurchasable purchasable,
      ItemImageList<IndividualImages> images});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res> implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  final Item _value;
  // ignore: unused_field
  final $Res Function(Item) _then;

  @override
  $Res call({
    Object id = freezed,
    Object timestamp = freezed,
    Object name = freezed,
    Object description = freezed,
    Object price = freezed,
    Object delivery = freezed,
    Object quantity = freezed,
    Object purchasable = freezed,
    Object images = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      timestamp: timestamp == freezed ? _value.timestamp : timestamp as String,
      name: name == freezed ? _value.name : name as ItemName,
      description: description == freezed
          ? _value.description
          : description as ItemDescription,
      price: price == freezed ? _value.price : price as ItemPrice,
      delivery:
          delivery == freezed ? _value.delivery : delivery as ItemDeliveryFee,
      quantity:
          quantity == freezed ? _value.quantity : quantity as ItemQuantity,
      purchasable: purchasable == freezed
          ? _value.purchasable
          : purchasable as ItemPurchasable,
      images: images == freezed
          ? _value.images
          : images as ItemImageList<IndividualImages>,
    ));
  }
}

/// @nodoc
abstract class _$ItemCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$ItemCopyWith(_Item value, $Res Function(_Item) then) =
      __$ItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      String timestamp,
      ItemName name,
      ItemDescription description,
      ItemPrice price,
      ItemDeliveryFee delivery,
      ItemQuantity quantity,
      ItemPurchasable purchasable,
      ItemImageList<IndividualImages> images});
}

/// @nodoc
class __$ItemCopyWithImpl<$Res> extends _$ItemCopyWithImpl<$Res>
    implements _$ItemCopyWith<$Res> {
  __$ItemCopyWithImpl(_Item _value, $Res Function(_Item) _then)
      : super(_value, (v) => _then(v as _Item));

  @override
  _Item get _value => super._value as _Item;

  @override
  $Res call({
    Object id = freezed,
    Object timestamp = freezed,
    Object name = freezed,
    Object description = freezed,
    Object price = freezed,
    Object delivery = freezed,
    Object quantity = freezed,
    Object purchasable = freezed,
    Object images = freezed,
  }) {
    return _then(_Item(
      id: id == freezed ? _value.id : id as UniqueId,
      timestamp: timestamp == freezed ? _value.timestamp : timestamp as String,
      name: name == freezed ? _value.name : name as ItemName,
      description: description == freezed
          ? _value.description
          : description as ItemDescription,
      price: price == freezed ? _value.price : price as ItemPrice,
      delivery:
          delivery == freezed ? _value.delivery : delivery as ItemDeliveryFee,
      quantity:
          quantity == freezed ? _value.quantity : quantity as ItemQuantity,
      purchasable: purchasable == freezed
          ? _value.purchasable
          : purchasable as ItemPurchasable,
      images: images == freezed
          ? _value.images
          : images as ItemImageList<IndividualImages>,
    ));
  }
}

/// @nodoc
class _$_Item extends _Item {
  const _$_Item(
      {@required this.id,
      this.timestamp,
      @required this.name,
      @required this.description,
      @required this.price,
      @required this.delivery,
      @required this.quantity,
      @required this.purchasable,
      @required this.images})
      : assert(id != null),
        assert(name != null),
        assert(description != null),
        assert(price != null),
        assert(delivery != null),
        assert(quantity != null),
        assert(purchasable != null),
        assert(images != null),
        super._();

  @override
  final UniqueId id;
  @override
  final String timestamp;
  @override
  final ItemName name;
  @override
  final ItemDescription description;
  @override
  final ItemPrice price;
  @override
  final ItemDeliveryFee delivery;
  @override
  final ItemQuantity quantity;
  @override
  final ItemPurchasable purchasable;
  @override
  final ItemImageList<IndividualImages> images;

  @override
  String toString() {
    return 'Item(id: $id, timestamp: $timestamp, name: $name, description: $description, price: $price, delivery: $delivery, quantity: $quantity, purchasable: $purchasable, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Item &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.price, price) ||
                const DeepCollectionEquality().equals(other.price, price)) &&
            (identical(other.delivery, delivery) ||
                const DeepCollectionEquality()
                    .equals(other.delivery, delivery)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.purchasable, purchasable) ||
                const DeepCollectionEquality()
                    .equals(other.purchasable, purchasable)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(delivery) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(purchasable) ^
      const DeepCollectionEquality().hash(images);

  @override
  _$ItemCopyWith<_Item> get copyWith =>
      __$ItemCopyWithImpl<_Item>(this, _$identity);
}

abstract class _Item extends Item {
  const _Item._() : super._();
  const factory _Item(
      {@required UniqueId id,
      String timestamp,
      @required ItemName name,
      @required ItemDescription description,
      @required ItemPrice price,
      @required ItemDeliveryFee delivery,
      @required ItemQuantity quantity,
      @required ItemPurchasable purchasable,
      @required ItemImageList<IndividualImages> images}) = _$_Item;

  @override
  UniqueId get id;
  @override
  String get timestamp;
  @override
  ItemName get name;
  @override
  ItemDescription get description;
  @override
  ItemPrice get price;
  @override
  ItemDeliveryFee get delivery;
  @override
  ItemQuantity get quantity;
  @override
  ItemPurchasable get purchasable;
  @override
  ItemImageList<IndividualImages> get images;
  @override
  _$ItemCopyWith<_Item> get copyWith;
}
