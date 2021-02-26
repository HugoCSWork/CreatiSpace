// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'home_item_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
HomeItemDto _$HomeItemDtoFromJson(Map<String, dynamic> json) {
  return _HomeItemDto.fromJson(json);
}

/// @nodoc
class _$HomeItemDtoTearOff {
  const _$HomeItemDtoTearOff();

// ignore: unused_element
  _HomeItemDto call(
      {@required String id,
      @required String item_id,
      @required String timestamp,
      @required String name,
      @required String username,
      @required String profileImageURL,
      @required String description,
      @required double price,
      @required double delivery,
      @required int quantity,
      @required bool purchasable,
      @required List<IndividualImagesDto> images}) {
    return _HomeItemDto(
      id: id,
      item_id: item_id,
      timestamp: timestamp,
      name: name,
      username: username,
      profileImageURL: profileImageURL,
      description: description,
      price: price,
      delivery: delivery,
      quantity: quantity,
      purchasable: purchasable,
      images: images,
    );
  }

// ignore: unused_element
  HomeItemDto fromJson(Map<String, Object> json) {
    return HomeItemDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $HomeItemDto = _$HomeItemDtoTearOff();

/// @nodoc
mixin _$HomeItemDto {
  String get id;
  String get item_id;
  String get timestamp;
  String get name;
  String get username;
  String get profileImageURL;
  String get description;
  double get price;
  double get delivery;
  int get quantity;
  bool get purchasable;
  List<IndividualImagesDto> get images;

  Map<String, dynamic> toJson();
  $HomeItemDtoCopyWith<HomeItemDto> get copyWith;
}

/// @nodoc
abstract class $HomeItemDtoCopyWith<$Res> {
  factory $HomeItemDtoCopyWith(
          HomeItemDto value, $Res Function(HomeItemDto) then) =
      _$HomeItemDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String item_id,
      String timestamp,
      String name,
      String username,
      String profileImageURL,
      String description,
      double price,
      double delivery,
      int quantity,
      bool purchasable,
      List<IndividualImagesDto> images});
}

/// @nodoc
class _$HomeItemDtoCopyWithImpl<$Res> implements $HomeItemDtoCopyWith<$Res> {
  _$HomeItemDtoCopyWithImpl(this._value, this._then);

  final HomeItemDto _value;
  // ignore: unused_field
  final $Res Function(HomeItemDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object item_id = freezed,
    Object timestamp = freezed,
    Object name = freezed,
    Object username = freezed,
    Object profileImageURL = freezed,
    Object description = freezed,
    Object price = freezed,
    Object delivery = freezed,
    Object quantity = freezed,
    Object purchasable = freezed,
    Object images = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      item_id: item_id == freezed ? _value.item_id : item_id as String,
      timestamp: timestamp == freezed ? _value.timestamp : timestamp as String,
      name: name == freezed ? _value.name : name as String,
      username: username == freezed ? _value.username : username as String,
      profileImageURL: profileImageURL == freezed
          ? _value.profileImageURL
          : profileImageURL as String,
      description:
          description == freezed ? _value.description : description as String,
      price: price == freezed ? _value.price : price as double,
      delivery: delivery == freezed ? _value.delivery : delivery as double,
      quantity: quantity == freezed ? _value.quantity : quantity as int,
      purchasable:
          purchasable == freezed ? _value.purchasable : purchasable as bool,
      images: images == freezed
          ? _value.images
          : images as List<IndividualImagesDto>,
    ));
  }
}

/// @nodoc
abstract class _$HomeItemDtoCopyWith<$Res>
    implements $HomeItemDtoCopyWith<$Res> {
  factory _$HomeItemDtoCopyWith(
          _HomeItemDto value, $Res Function(_HomeItemDto) then) =
      __$HomeItemDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String item_id,
      String timestamp,
      String name,
      String username,
      String profileImageURL,
      String description,
      double price,
      double delivery,
      int quantity,
      bool purchasable,
      List<IndividualImagesDto> images});
}

/// @nodoc
class __$HomeItemDtoCopyWithImpl<$Res> extends _$HomeItemDtoCopyWithImpl<$Res>
    implements _$HomeItemDtoCopyWith<$Res> {
  __$HomeItemDtoCopyWithImpl(
      _HomeItemDto _value, $Res Function(_HomeItemDto) _then)
      : super(_value, (v) => _then(v as _HomeItemDto));

  @override
  _HomeItemDto get _value => super._value as _HomeItemDto;

  @override
  $Res call({
    Object id = freezed,
    Object item_id = freezed,
    Object timestamp = freezed,
    Object name = freezed,
    Object username = freezed,
    Object profileImageURL = freezed,
    Object description = freezed,
    Object price = freezed,
    Object delivery = freezed,
    Object quantity = freezed,
    Object purchasable = freezed,
    Object images = freezed,
  }) {
    return _then(_HomeItemDto(
      id: id == freezed ? _value.id : id as String,
      item_id: item_id == freezed ? _value.item_id : item_id as String,
      timestamp: timestamp == freezed ? _value.timestamp : timestamp as String,
      name: name == freezed ? _value.name : name as String,
      username: username == freezed ? _value.username : username as String,
      profileImageURL: profileImageURL == freezed
          ? _value.profileImageURL
          : profileImageURL as String,
      description:
          description == freezed ? _value.description : description as String,
      price: price == freezed ? _value.price : price as double,
      delivery: delivery == freezed ? _value.delivery : delivery as double,
      quantity: quantity == freezed ? _value.quantity : quantity as int,
      purchasable:
          purchasable == freezed ? _value.purchasable : purchasable as bool,
      images: images == freezed
          ? _value.images
          : images as List<IndividualImagesDto>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_HomeItemDto extends _HomeItemDto {
  const _$_HomeItemDto(
      {@required this.id,
      @required this.item_id,
      @required this.timestamp,
      @required this.name,
      @required this.username,
      @required this.profileImageURL,
      @required this.description,
      @required this.price,
      @required this.delivery,
      @required this.quantity,
      @required this.purchasable,
      @required this.images})
      : assert(id != null),
        assert(item_id != null),
        assert(timestamp != null),
        assert(name != null),
        assert(username != null),
        assert(profileImageURL != null),
        assert(description != null),
        assert(price != null),
        assert(delivery != null),
        assert(quantity != null),
        assert(purchasable != null),
        assert(images != null),
        super._();

  factory _$_HomeItemDto.fromJson(Map<String, dynamic> json) =>
      _$_$_HomeItemDtoFromJson(json);

  @override
  final String id;
  @override
  final String item_id;
  @override
  final String timestamp;
  @override
  final String name;
  @override
  final String username;
  @override
  final String profileImageURL;
  @override
  final String description;
  @override
  final double price;
  @override
  final double delivery;
  @override
  final int quantity;
  @override
  final bool purchasable;
  @override
  final List<IndividualImagesDto> images;

  @override
  String toString() {
    return 'HomeItemDto(id: $id, item_id: $item_id, timestamp: $timestamp, name: $name, username: $username, profileImageURL: $profileImageURL, description: $description, price: $price, delivery: $delivery, quantity: $quantity, purchasable: $purchasable, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeItemDto &&
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
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.profileImageURL, profileImageURL) ||
                const DeepCollectionEquality()
                    .equals(other.profileImageURL, profileImageURL)) &&
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
      const DeepCollectionEquality().hash(item_id) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(profileImageURL) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(price) ^
      const DeepCollectionEquality().hash(delivery) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(purchasable) ^
      const DeepCollectionEquality().hash(images);

  @override
  _$HomeItemDtoCopyWith<_HomeItemDto> get copyWith =>
      __$HomeItemDtoCopyWithImpl<_HomeItemDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_HomeItemDtoToJson(this);
  }
}

abstract class _HomeItemDto extends HomeItemDto {
  const _HomeItemDto._() : super._();
  const factory _HomeItemDto(
      {@required String id,
      @required String item_id,
      @required String timestamp,
      @required String name,
      @required String username,
      @required String profileImageURL,
      @required String description,
      @required double price,
      @required double delivery,
      @required int quantity,
      @required bool purchasable,
      @required List<IndividualImagesDto> images}) = _$_HomeItemDto;

  factory _HomeItemDto.fromJson(Map<String, dynamic> json) =
      _$_HomeItemDto.fromJson;

  @override
  String get id;
  @override
  String get item_id;
  @override
  String get timestamp;
  @override
  String get name;
  @override
  String get username;
  @override
  String get profileImageURL;
  @override
  String get description;
  @override
  double get price;
  @override
  double get delivery;
  @override
  int get quantity;
  @override
  bool get purchasable;
  @override
  List<IndividualImagesDto> get images;
  @override
  _$HomeItemDtoCopyWith<_HomeItemDto> get copyWith;
}

IndividualImagesDto _$IndividualImagesDtoFromJson(Map<String, dynamic> json) {
  return _IndividualImagesDto.fromJson(json);
}

/// @nodoc
class _$IndividualImagesDtoTearOff {
  const _$IndividualImagesDtoTearOff();

// ignore: unused_element
  _IndividualImagesDto call(
      {@required String id, @required String url, @required String imageName}) {
    return _IndividualImagesDto(
      id: id,
      url: url,
      imageName: imageName,
    );
  }

// ignore: unused_element
  IndividualImagesDto fromJson(Map<String, Object> json) {
    return IndividualImagesDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $IndividualImagesDto = _$IndividualImagesDtoTearOff();

/// @nodoc
mixin _$IndividualImagesDto {
  String get id;
  String get url;
  String get imageName;

  Map<String, dynamic> toJson();
  $IndividualImagesDtoCopyWith<IndividualImagesDto> get copyWith;
}

/// @nodoc
abstract class $IndividualImagesDtoCopyWith<$Res> {
  factory $IndividualImagesDtoCopyWith(
          IndividualImagesDto value, $Res Function(IndividualImagesDto) then) =
      _$IndividualImagesDtoCopyWithImpl<$Res>;
  $Res call({String id, String url, String imageName});
}

/// @nodoc
class _$IndividualImagesDtoCopyWithImpl<$Res>
    implements $IndividualImagesDtoCopyWith<$Res> {
  _$IndividualImagesDtoCopyWithImpl(this._value, this._then);

  final IndividualImagesDto _value;
  // ignore: unused_field
  final $Res Function(IndividualImagesDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object url = freezed,
    Object imageName = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      url: url == freezed ? _value.url : url as String,
      imageName: imageName == freezed ? _value.imageName : imageName as String,
    ));
  }
}

/// @nodoc
abstract class _$IndividualImagesDtoCopyWith<$Res>
    implements $IndividualImagesDtoCopyWith<$Res> {
  factory _$IndividualImagesDtoCopyWith(_IndividualImagesDto value,
          $Res Function(_IndividualImagesDto) then) =
      __$IndividualImagesDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String url, String imageName});
}

/// @nodoc
class __$IndividualImagesDtoCopyWithImpl<$Res>
    extends _$IndividualImagesDtoCopyWithImpl<$Res>
    implements _$IndividualImagesDtoCopyWith<$Res> {
  __$IndividualImagesDtoCopyWithImpl(
      _IndividualImagesDto _value, $Res Function(_IndividualImagesDto) _then)
      : super(_value, (v) => _then(v as _IndividualImagesDto));

  @override
  _IndividualImagesDto get _value => super._value as _IndividualImagesDto;

  @override
  $Res call({
    Object id = freezed,
    Object url = freezed,
    Object imageName = freezed,
  }) {
    return _then(_IndividualImagesDto(
      id: id == freezed ? _value.id : id as String,
      url: url == freezed ? _value.url : url as String,
      imageName: imageName == freezed ? _value.imageName : imageName as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_IndividualImagesDto extends _IndividualImagesDto {
  const _$_IndividualImagesDto(
      {@required this.id, @required this.url, @required this.imageName})
      : assert(id != null),
        assert(url != null),
        assert(imageName != null),
        super._();

  factory _$_IndividualImagesDto.fromJson(Map<String, dynamic> json) =>
      _$_$_IndividualImagesDtoFromJson(json);

  @override
  final String id;
  @override
  final String url;
  @override
  final String imageName;

  @override
  String toString() {
    return 'IndividualImagesDto(id: $id, url: $url, imageName: $imageName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IndividualImagesDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.imageName, imageName) ||
                const DeepCollectionEquality()
                    .equals(other.imageName, imageName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(imageName);

  @override
  _$IndividualImagesDtoCopyWith<_IndividualImagesDto> get copyWith =>
      __$IndividualImagesDtoCopyWithImpl<_IndividualImagesDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_IndividualImagesDtoToJson(this);
  }
}

abstract class _IndividualImagesDto extends IndividualImagesDto {
  const _IndividualImagesDto._() : super._();
  const factory _IndividualImagesDto(
      {@required String id,
      @required String url,
      @required String imageName}) = _$_IndividualImagesDto;

  factory _IndividualImagesDto.fromJson(Map<String, dynamic> json) =
      _$_IndividualImagesDto.fromJson;

  @override
  String get id;
  @override
  String get url;
  @override
  String get imageName;
  @override
  _$IndividualImagesDtoCopyWith<_IndividualImagesDto> get copyWith;
}
