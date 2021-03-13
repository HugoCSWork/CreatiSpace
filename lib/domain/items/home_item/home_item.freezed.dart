// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'home_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$HomeItemTearOff {
  const _$HomeItemTearOff();

// ignore: unused_element
  _HomeItem call(
      {@required String id,
      @required String item_id,
      @required String timestamp,
      @required ItemName name,
      @required ItemDescription description,
      @required ItemPrice price,
      @required ItemDeliveryFee delivery,
      @required ItemQuantity quantity,
      @required ItemPurchasable purchasable,
      @required String username,
      @required String profileImageURL,
      @required ItemImageList<IndividualImages> images}) {
    return _HomeItem(
      id: id,
      item_id: item_id,
      timestamp: timestamp,
      name: name,
      description: description,
      price: price,
      delivery: delivery,
      quantity: quantity,
      purchasable: purchasable,
      username: username,
      profileImageURL: profileImageURL,
      images: images,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $HomeItem = _$HomeItemTearOff();

/// @nodoc
mixin _$HomeItem {
  String get id;
  String get item_id;
  String get timestamp;
  ItemName get name;
  ItemDescription get description;
  ItemPrice get price;
  ItemDeliveryFee get delivery;
  ItemQuantity get quantity;
  ItemPurchasable get purchasable;
  String get username;
  String get profileImageURL;
  ItemImageList<IndividualImages> get images;

  @JsonKey(ignore: true)
  $HomeItemCopyWith<HomeItem> get copyWith;
}

/// @nodoc
abstract class $HomeItemCopyWith<$Res> {
  factory $HomeItemCopyWith(HomeItem value, $Res Function(HomeItem) then) =
      _$HomeItemCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String item_id,
      String timestamp,
      ItemName name,
      ItemDescription description,
      ItemPrice price,
      ItemDeliveryFee delivery,
      ItemQuantity quantity,
      ItemPurchasable purchasable,
      String username,
      String profileImageURL,
      ItemImageList<IndividualImages> images});
}

/// @nodoc
class _$HomeItemCopyWithImpl<$Res> implements $HomeItemCopyWith<$Res> {
  _$HomeItemCopyWithImpl(this._value, this._then);

  final HomeItem _value;
  // ignore: unused_field
  final $Res Function(HomeItem) _then;

  @override
  $Res call({
    Object id = freezed,
    Object item_id = freezed,
    Object timestamp = freezed,
    Object name = freezed,
    Object description = freezed,
    Object price = freezed,
    Object delivery = freezed,
    Object quantity = freezed,
    Object purchasable = freezed,
    Object username = freezed,
    Object profileImageURL = freezed,
    Object images = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      item_id: item_id == freezed ? _value.item_id : item_id as String,
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
      username: username == freezed ? _value.username : username as String,
      profileImageURL: profileImageURL == freezed
          ? _value.profileImageURL
          : profileImageURL as String,
      images: images == freezed
          ? _value.images
          : images as ItemImageList<IndividualImages>,
    ));
  }
}

/// @nodoc
abstract class _$HomeItemCopyWith<$Res> implements $HomeItemCopyWith<$Res> {
  factory _$HomeItemCopyWith(_HomeItem value, $Res Function(_HomeItem) then) =
      __$HomeItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String item_id,
      String timestamp,
      ItemName name,
      ItemDescription description,
      ItemPrice price,
      ItemDeliveryFee delivery,
      ItemQuantity quantity,
      ItemPurchasable purchasable,
      String username,
      String profileImageURL,
      ItemImageList<IndividualImages> images});
}

/// @nodoc
class __$HomeItemCopyWithImpl<$Res> extends _$HomeItemCopyWithImpl<$Res>
    implements _$HomeItemCopyWith<$Res> {
  __$HomeItemCopyWithImpl(_HomeItem _value, $Res Function(_HomeItem) _then)
      : super(_value, (v) => _then(v as _HomeItem));

  @override
  _HomeItem get _value => super._value as _HomeItem;

  @override
  $Res call({
    Object id = freezed,
    Object item_id = freezed,
    Object timestamp = freezed,
    Object name = freezed,
    Object description = freezed,
    Object price = freezed,
    Object delivery = freezed,
    Object quantity = freezed,
    Object purchasable = freezed,
    Object username = freezed,
    Object profileImageURL = freezed,
    Object images = freezed,
  }) {
    return _then(_HomeItem(
      id: id == freezed ? _value.id : id as String,
      item_id: item_id == freezed ? _value.item_id : item_id as String,
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
      username: username == freezed ? _value.username : username as String,
      profileImageURL: profileImageURL == freezed
          ? _value.profileImageURL
          : profileImageURL as String,
      images: images == freezed
          ? _value.images
          : images as ItemImageList<IndividualImages>,
    ));
  }
}

/// @nodoc
class _$_HomeItem extends _HomeItem {
  const _$_HomeItem(
      {@required this.id,
      @required this.item_id,
      @required this.timestamp,
      @required this.name,
      @required this.description,
      @required this.price,
      @required this.delivery,
      @required this.quantity,
      @required this.purchasable,
      @required this.username,
      @required this.profileImageURL,
      @required this.images})
      : assert(id != null),
        assert(item_id != null),
        assert(timestamp != null),
        assert(name != null),
        assert(description != null),
        assert(price != null),
        assert(delivery != null),
        assert(quantity != null),
        assert(purchasable != null),
        assert(username != null),
        assert(profileImageURL != null),
        assert(images != null),
        super._();

  @override
  final String id;
  @override
  final String item_id;
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
  final String username;
  @override
  final String profileImageURL;
  @override
  final ItemImageList<IndividualImages> images;

  @override
  String toString() {
    return 'HomeItem(id: $id, item_id: $item_id, timestamp: $timestamp, name: $name, description: $description, price: $price, delivery: $delivery, quantity: $quantity, purchasable: $purchasable, username: $username, profileImageURL: $profileImageURL, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.item_id, item_id) ||
                const DeepCollectionEquality()
                    .equals(other.item_id, item_id)) &&
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
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.profileImageURL, profileImageURL) ||
                const DeepCollectionEquality()
                    .equals(other.profileImageURL, profileImageURL)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(item_id) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(delivery) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(purchasable) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(profileImageURL) ^
      const DeepCollectionEquality().hash(images);

  @JsonKey(ignore: true)
  @override
  _$HomeItemCopyWith<_HomeItem> get copyWith =>
      __$HomeItemCopyWithImpl<_HomeItem>(this, _$identity);
}

abstract class _HomeItem extends HomeItem {
  const _HomeItem._() : super._();
  const factory _HomeItem(
      {@required String id,
      @required String item_id,
      @required String timestamp,
      @required ItemName name,
      @required ItemDescription description,
      @required ItemPrice price,
      @required ItemDeliveryFee delivery,
      @required ItemQuantity quantity,
      @required ItemPurchasable purchasable,
      @required String username,
      @required String profileImageURL,
      @required ItemImageList<IndividualImages> images}) = _$_HomeItem;

  @override
  String get id;
  @override
  String get item_id;
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
  String get username;
  @override
  String get profileImageURL;
  @override
  ItemImageList<IndividualImages> get images;
  @override
  @JsonKey(ignore: true)
  _$HomeItemCopyWith<_HomeItem> get copyWith;
}
