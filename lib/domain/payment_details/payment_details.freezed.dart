// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'payment_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PaymentDetailsTearOff {
  const _$PaymentDetailsTearOff();

// ignore: unused_element
  _PaymentDetails call(
      {@required String id,
      @required String userId,
      @required String username,
      @required String image,
      @required String quantity,
      @required String receiptEmail,
      @required String peerId,
      @required String itemId,
      @required String peerUsername,
      @required Map<String, dynamic> shipping,
      @required double amount,
      @required String deliveryStatus}) {
    return _PaymentDetails(
      id: id,
      userId: userId,
      username: username,
      image: image,
      quantity: quantity,
      receiptEmail: receiptEmail,
      peerId: peerId,
      itemId: itemId,
      peerUsername: peerUsername,
      shipping: shipping,
      amount: amount,
      deliveryStatus: deliveryStatus,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PaymentDetails = _$PaymentDetailsTearOff();

/// @nodoc
mixin _$PaymentDetails {
  String get id;
  String get userId;
  String get username;
  String get image;
  String get quantity;
  String get receiptEmail;
  String get peerId;
  String get itemId;
  String get peerUsername;
  Map<String, dynamic> get shipping;
  double get amount;
  String get deliveryStatus;

  @JsonKey(ignore: true)
  $PaymentDetailsCopyWith<PaymentDetails> get copyWith;
}

/// @nodoc
abstract class $PaymentDetailsCopyWith<$Res> {
  factory $PaymentDetailsCopyWith(
          PaymentDetails value, $Res Function(PaymentDetails) then) =
      _$PaymentDetailsCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String userId,
      String username,
      String image,
      String quantity,
      String receiptEmail,
      String peerId,
      String itemId,
      String peerUsername,
      Map<String, dynamic> shipping,
      double amount,
      String deliveryStatus});
}

/// @nodoc
class _$PaymentDetailsCopyWithImpl<$Res>
    implements $PaymentDetailsCopyWith<$Res> {
  _$PaymentDetailsCopyWithImpl(this._value, this._then);

  final PaymentDetails _value;
  // ignore: unused_field
  final $Res Function(PaymentDetails) _then;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object username = freezed,
    Object image = freezed,
    Object quantity = freezed,
    Object receiptEmail = freezed,
    Object peerId = freezed,
    Object itemId = freezed,
    Object peerUsername = freezed,
    Object shipping = freezed,
    Object amount = freezed,
    Object deliveryStatus = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      userId: userId == freezed ? _value.userId : userId as String,
      username: username == freezed ? _value.username : username as String,
      image: image == freezed ? _value.image : image as String,
      quantity: quantity == freezed ? _value.quantity : quantity as String,
      receiptEmail: receiptEmail == freezed
          ? _value.receiptEmail
          : receiptEmail as String,
      peerId: peerId == freezed ? _value.peerId : peerId as String,
      itemId: itemId == freezed ? _value.itemId : itemId as String,
      peerUsername: peerUsername == freezed
          ? _value.peerUsername
          : peerUsername as String,
      shipping: shipping == freezed
          ? _value.shipping
          : shipping as Map<String, dynamic>,
      amount: amount == freezed ? _value.amount : amount as double,
      deliveryStatus: deliveryStatus == freezed
          ? _value.deliveryStatus
          : deliveryStatus as String,
    ));
  }
}

/// @nodoc
abstract class _$PaymentDetailsCopyWith<$Res>
    implements $PaymentDetailsCopyWith<$Res> {
  factory _$PaymentDetailsCopyWith(
          _PaymentDetails value, $Res Function(_PaymentDetails) then) =
      __$PaymentDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String userId,
      String username,
      String image,
      String quantity,
      String receiptEmail,
      String peerId,
      String itemId,
      String peerUsername,
      Map<String, dynamic> shipping,
      double amount,
      String deliveryStatus});
}

/// @nodoc
class __$PaymentDetailsCopyWithImpl<$Res>
    extends _$PaymentDetailsCopyWithImpl<$Res>
    implements _$PaymentDetailsCopyWith<$Res> {
  __$PaymentDetailsCopyWithImpl(
      _PaymentDetails _value, $Res Function(_PaymentDetails) _then)
      : super(_value, (v) => _then(v as _PaymentDetails));

  @override
  _PaymentDetails get _value => super._value as _PaymentDetails;

  @override
  $Res call({
    Object id = freezed,
    Object userId = freezed,
    Object username = freezed,
    Object image = freezed,
    Object quantity = freezed,
    Object receiptEmail = freezed,
    Object peerId = freezed,
    Object itemId = freezed,
    Object peerUsername = freezed,
    Object shipping = freezed,
    Object amount = freezed,
    Object deliveryStatus = freezed,
  }) {
    return _then(_PaymentDetails(
      id: id == freezed ? _value.id : id as String,
      userId: userId == freezed ? _value.userId : userId as String,
      username: username == freezed ? _value.username : username as String,
      image: image == freezed ? _value.image : image as String,
      quantity: quantity == freezed ? _value.quantity : quantity as String,
      receiptEmail: receiptEmail == freezed
          ? _value.receiptEmail
          : receiptEmail as String,
      peerId: peerId == freezed ? _value.peerId : peerId as String,
      itemId: itemId == freezed ? _value.itemId : itemId as String,
      peerUsername: peerUsername == freezed
          ? _value.peerUsername
          : peerUsername as String,
      shipping: shipping == freezed
          ? _value.shipping
          : shipping as Map<String, dynamic>,
      amount: amount == freezed ? _value.amount : amount as double,
      deliveryStatus: deliveryStatus == freezed
          ? _value.deliveryStatus
          : deliveryStatus as String,
    ));
  }
}

/// @nodoc
class _$_PaymentDetails extends _PaymentDetails {
  const _$_PaymentDetails(
      {@required this.id,
      @required this.userId,
      @required this.username,
      @required this.image,
      @required this.quantity,
      @required this.receiptEmail,
      @required this.peerId,
      @required this.itemId,
      @required this.peerUsername,
      @required this.shipping,
      @required this.amount,
      @required this.deliveryStatus})
      : assert(id != null),
        assert(userId != null),
        assert(username != null),
        assert(image != null),
        assert(quantity != null),
        assert(receiptEmail != null),
        assert(peerId != null),
        assert(itemId != null),
        assert(peerUsername != null),
        assert(shipping != null),
        assert(amount != null),
        assert(deliveryStatus != null),
        super._();

  @override
  final String id;
  @override
  final String userId;
  @override
  final String username;
  @override
  final String image;
  @override
  final String quantity;
  @override
  final String receiptEmail;
  @override
  final String peerId;
  @override
  final String itemId;
  @override
  final String peerUsername;
  @override
  final Map<String, dynamic> shipping;
  @override
  final double amount;
  @override
  final String deliveryStatus;

  @override
  String toString() {
    return 'PaymentDetails(id: $id, userId: $userId, username: $username, image: $image, quantity: $quantity, receiptEmail: $receiptEmail, peerId: $peerId, itemId: $itemId, peerUsername: $peerUsername, shipping: $shipping, amount: $amount, deliveryStatus: $deliveryStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentDetails &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.receiptEmail, receiptEmail) ||
                const DeepCollectionEquality()
                    .equals(other.receiptEmail, receiptEmail)) &&
            (identical(other.peerId, peerId) ||
                const DeepCollectionEquality().equals(other.peerId, peerId)) &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)) &&
            (identical(other.peerUsername, peerUsername) ||
                const DeepCollectionEquality()
                    .equals(other.peerUsername, peerUsername)) &&
            (identical(other.shipping, shipping) ||
                const DeepCollectionEquality()
                    .equals(other.shipping, shipping)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.deliveryStatus, deliveryStatus) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryStatus, deliveryStatus)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(receiptEmail) ^
      const DeepCollectionEquality().hash(peerId) ^
      const DeepCollectionEquality().hash(itemId) ^
      const DeepCollectionEquality().hash(peerUsername) ^
      const DeepCollectionEquality().hash(shipping) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(deliveryStatus);

  @JsonKey(ignore: true)
  @override
  _$PaymentDetailsCopyWith<_PaymentDetails> get copyWith =>
      __$PaymentDetailsCopyWithImpl<_PaymentDetails>(this, _$identity);
}

abstract class _PaymentDetails extends PaymentDetails {
  const _PaymentDetails._() : super._();
  const factory _PaymentDetails(
      {@required String id,
      @required String userId,
      @required String username,
      @required String image,
      @required String quantity,
      @required String receiptEmail,
      @required String peerId,
      @required String itemId,
      @required String peerUsername,
      @required Map<String, dynamic> shipping,
      @required double amount,
      @required String deliveryStatus}) = _$_PaymentDetails;

  @override
  String get id;
  @override
  String get userId;
  @override
  String get username;
  @override
  String get image;
  @override
  String get quantity;
  @override
  String get receiptEmail;
  @override
  String get peerId;
  @override
  String get itemId;
  @override
  String get peerUsername;
  @override
  Map<String, dynamic> get shipping;
  @override
  double get amount;
  @override
  String get deliveryStatus;
  @override
  @JsonKey(ignore: true)
  _$PaymentDetailsCopyWith<_PaymentDetails> get copyWith;
}
