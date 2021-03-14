// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'payment_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PaymentDetailsDto _$PaymentDetailsDtoFromJson(Map<String, dynamic> json) {
  return _PaymentDetailsDto.fromJson(json);
}

/// @nodoc
class _$PaymentDetailsDtoTearOff {
  const _$PaymentDetailsDtoTearOff();

// ignore: unused_element
  _PaymentDetailsDto call(
      {@required String id,
      @required String quantity,
      @required String user_id,
      @required String peer_id,
      @required String item_id,
      @required String peer_username,
      @required String image,
      @required String username,
      @required String receipt_email,
      @required Map<String, dynamic> shipping,
      @required double amount,
      @required String delivery_status}) {
    return _PaymentDetailsDto(
      id: id,
      quantity: quantity,
      user_id: user_id,
      peer_id: peer_id,
      item_id: item_id,
      peer_username: peer_username,
      image: image,
      username: username,
      receipt_email: receipt_email,
      shipping: shipping,
      amount: amount,
      delivery_status: delivery_status,
    );
  }

// ignore: unused_element
  PaymentDetailsDto fromJson(Map<String, Object> json) {
    return PaymentDetailsDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PaymentDetailsDto = _$PaymentDetailsDtoTearOff();

/// @nodoc
mixin _$PaymentDetailsDto {
  String get id;
  String get quantity;
  String get user_id;
  String get peer_id;
  String get item_id;
  String get peer_username;
  String get image;
  String get username;
  String get receipt_email;
  Map<String, dynamic> get shipping;
  double get amount;
  String get delivery_status;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $PaymentDetailsDtoCopyWith<PaymentDetailsDto> get copyWith;
}

/// @nodoc
abstract class $PaymentDetailsDtoCopyWith<$Res> {
  factory $PaymentDetailsDtoCopyWith(
          PaymentDetailsDto value, $Res Function(PaymentDetailsDto) then) =
      _$PaymentDetailsDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String quantity,
      String user_id,
      String peer_id,
      String item_id,
      String peer_username,
      String image,
      String username,
      String receipt_email,
      Map<String, dynamic> shipping,
      double amount,
      String delivery_status});
}

/// @nodoc
class _$PaymentDetailsDtoCopyWithImpl<$Res>
    implements $PaymentDetailsDtoCopyWith<$Res> {
  _$PaymentDetailsDtoCopyWithImpl(this._value, this._then);

  final PaymentDetailsDto _value;
  // ignore: unused_field
  final $Res Function(PaymentDetailsDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object quantity = freezed,
    Object user_id = freezed,
    Object peer_id = freezed,
    Object item_id = freezed,
    Object peer_username = freezed,
    Object image = freezed,
    Object username = freezed,
    Object receipt_email = freezed,
    Object shipping = freezed,
    Object amount = freezed,
    Object delivery_status = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      quantity: quantity == freezed ? _value.quantity : quantity as String,
      user_id: user_id == freezed ? _value.user_id : user_id as String,
      peer_id: peer_id == freezed ? _value.peer_id : peer_id as String,
      item_id: item_id == freezed ? _value.item_id : item_id as String,
      peer_username: peer_username == freezed
          ? _value.peer_username
          : peer_username as String,
      image: image == freezed ? _value.image : image as String,
      username: username == freezed ? _value.username : username as String,
      receipt_email: receipt_email == freezed
          ? _value.receipt_email
          : receipt_email as String,
      shipping: shipping == freezed
          ? _value.shipping
          : shipping as Map<String, dynamic>,
      amount: amount == freezed ? _value.amount : amount as double,
      delivery_status: delivery_status == freezed
          ? _value.delivery_status
          : delivery_status as String,
    ));
  }
}

/// @nodoc
abstract class _$PaymentDetailsDtoCopyWith<$Res>
    implements $PaymentDetailsDtoCopyWith<$Res> {
  factory _$PaymentDetailsDtoCopyWith(
          _PaymentDetailsDto value, $Res Function(_PaymentDetailsDto) then) =
      __$PaymentDetailsDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String quantity,
      String user_id,
      String peer_id,
      String item_id,
      String peer_username,
      String image,
      String username,
      String receipt_email,
      Map<String, dynamic> shipping,
      double amount,
      String delivery_status});
}

/// @nodoc
class __$PaymentDetailsDtoCopyWithImpl<$Res>
    extends _$PaymentDetailsDtoCopyWithImpl<$Res>
    implements _$PaymentDetailsDtoCopyWith<$Res> {
  __$PaymentDetailsDtoCopyWithImpl(
      _PaymentDetailsDto _value, $Res Function(_PaymentDetailsDto) _then)
      : super(_value, (v) => _then(v as _PaymentDetailsDto));

  @override
  _PaymentDetailsDto get _value => super._value as _PaymentDetailsDto;

  @override
  $Res call({
    Object id = freezed,
    Object quantity = freezed,
    Object user_id = freezed,
    Object peer_id = freezed,
    Object item_id = freezed,
    Object peer_username = freezed,
    Object image = freezed,
    Object username = freezed,
    Object receipt_email = freezed,
    Object shipping = freezed,
    Object amount = freezed,
    Object delivery_status = freezed,
  }) {
    return _then(_PaymentDetailsDto(
      id: id == freezed ? _value.id : id as String,
      quantity: quantity == freezed ? _value.quantity : quantity as String,
      user_id: user_id == freezed ? _value.user_id : user_id as String,
      peer_id: peer_id == freezed ? _value.peer_id : peer_id as String,
      item_id: item_id == freezed ? _value.item_id : item_id as String,
      peer_username: peer_username == freezed
          ? _value.peer_username
          : peer_username as String,
      image: image == freezed ? _value.image : image as String,
      username: username == freezed ? _value.username : username as String,
      receipt_email: receipt_email == freezed
          ? _value.receipt_email
          : receipt_email as String,
      shipping: shipping == freezed
          ? _value.shipping
          : shipping as Map<String, dynamic>,
      amount: amount == freezed ? _value.amount : amount as double,
      delivery_status: delivery_status == freezed
          ? _value.delivery_status
          : delivery_status as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PaymentDetailsDto extends _PaymentDetailsDto {
  const _$_PaymentDetailsDto(
      {@required this.id,
      @required this.quantity,
      @required this.user_id,
      @required this.peer_id,
      @required this.item_id,
      @required this.peer_username,
      @required this.image,
      @required this.username,
      @required this.receipt_email,
      @required this.shipping,
      @required this.amount,
      @required this.delivery_status})
      : assert(id != null),
        assert(quantity != null),
        assert(user_id != null),
        assert(peer_id != null),
        assert(item_id != null),
        assert(peer_username != null),
        assert(image != null),
        assert(username != null),
        assert(receipt_email != null),
        assert(shipping != null),
        assert(amount != null),
        assert(delivery_status != null),
        super._();

  factory _$_PaymentDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$_$_PaymentDetailsDtoFromJson(json);

  @override
  final String id;
  @override
  final String quantity;
  @override
  final String user_id;
  @override
  final String peer_id;
  @override
  final String item_id;
  @override
  final String peer_username;
  @override
  final String image;
  @override
  final String username;
  @override
  final String receipt_email;
  @override
  final Map<String, dynamic> shipping;
  @override
  final double amount;
  @override
  final String delivery_status;

  @override
  String toString() {
    return 'PaymentDetailsDto(id: $id, quantity: $quantity, user_id: $user_id, peer_id: $peer_id, item_id: $item_id, peer_username: $peer_username, image: $image, username: $username, receipt_email: $receipt_email, shipping: $shipping, amount: $amount, delivery_status: $delivery_status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentDetailsDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.user_id, user_id) ||
                const DeepCollectionEquality()
                    .equals(other.user_id, user_id)) &&
            (identical(other.peer_id, peer_id) ||
                const DeepCollectionEquality()
                    .equals(other.peer_id, peer_id)) &&
            (identical(other.item_id, item_id) ||
                const DeepCollectionEquality()
                    .equals(other.item_id, item_id)) &&
            (identical(other.peer_username, peer_username) ||
                const DeepCollectionEquality()
                    .equals(other.peer_username, peer_username)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.receipt_email, receipt_email) ||
                const DeepCollectionEquality()
                    .equals(other.receipt_email, receipt_email)) &&
            (identical(other.shipping, shipping) ||
                const DeepCollectionEquality()
                    .equals(other.shipping, shipping)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.delivery_status, delivery_status) ||
                const DeepCollectionEquality()
                    .equals(other.delivery_status, delivery_status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(user_id) ^
      const DeepCollectionEquality().hash(peer_id) ^
      const DeepCollectionEquality().hash(item_id) ^
      const DeepCollectionEquality().hash(peer_username) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(receipt_email) ^
      const DeepCollectionEquality().hash(shipping) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(delivery_status);

  @JsonKey(ignore: true)
  @override
  _$PaymentDetailsDtoCopyWith<_PaymentDetailsDto> get copyWith =>
      __$PaymentDetailsDtoCopyWithImpl<_PaymentDetailsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PaymentDetailsDtoToJson(this);
  }
}

abstract class _PaymentDetailsDto extends PaymentDetailsDto {
  const _PaymentDetailsDto._() : super._();
  const factory _PaymentDetailsDto(
      {@required String id,
      @required String quantity,
      @required String user_id,
      @required String peer_id,
      @required String item_id,
      @required String peer_username,
      @required String image,
      @required String username,
      @required String receipt_email,
      @required Map<String, dynamic> shipping,
      @required double amount,
      @required String delivery_status}) = _$_PaymentDetailsDto;

  factory _PaymentDetailsDto.fromJson(Map<String, dynamic> json) =
      _$_PaymentDetailsDto.fromJson;

  @override
  String get id;
  @override
  String get quantity;
  @override
  String get user_id;
  @override
  String get peer_id;
  @override
  String get item_id;
  @override
  String get peer_username;
  @override
  String get image;
  @override
  String get username;
  @override
  String get receipt_email;
  @override
  Map<String, dynamic> get shipping;
  @override
  double get amount;
  @override
  String get delivery_status;
  @override
  @JsonKey(ignore: true)
  _$PaymentDetailsDtoCopyWith<_PaymentDetailsDto> get copyWith;
}
