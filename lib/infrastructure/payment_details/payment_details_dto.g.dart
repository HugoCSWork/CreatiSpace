// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentDetailsDto _$_$_PaymentDetailsDtoFromJson(Map<String, dynamic> json) {
  return _$_PaymentDetailsDto(
    id: json['id'] as String,
    quantity: json['quantity'] as String,
    user_id: json['user_id'] as String,
    peer_id: json['peer_id'] as String,
    item_id: json['item_id'] as String,
    peer_username: json['peer_username'] as String,
    image: json['image'] as String,
    username: json['username'] as String,
    receipt_email: json['receipt_email'] as String,
    shipping: json['shipping'] as Map<String, dynamic>,
    amount: (json['amount'] as num)?.toDouble(),
    delivery_status: json['delivery_status'] as String,
  );
}

Map<String, dynamic> _$_$_PaymentDetailsDtoToJson(
        _$_PaymentDetailsDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'quantity': instance.quantity,
      'user_id': instance.user_id,
      'peer_id': instance.peer_id,
      'item_id': instance.item_id,
      'peer_username': instance.peer_username,
      'image': instance.image,
      'username': instance.username,
      'receipt_email': instance.receipt_email,
      'shipping': instance.shipping,
      'amount': instance.amount,
      'delivery_status': instance.delivery_status,
    };
