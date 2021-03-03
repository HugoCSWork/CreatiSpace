// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workshop_payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkshopPayment _$_$_WorkshopPaymentFromJson(Map<String, dynamic> json) {
  return _$_WorkshopPayment(
    workshop: json['workshop'] as Map<String, dynamic>,
    paymentIntentRes: json['paymentIntentRes'] as Map<String, dynamic>,
    hasStarted: json['hasStarted'] as String,
  );
}

Map<String, dynamic> _$_$_WorkshopPaymentToJson(_$_WorkshopPayment instance) =>
    <String, dynamic>{
      'workshop': instance.workshop,
      'paymentIntentRes': instance.paymentIntentRes,
      'hasStarted': instance.hasStarted,
    };
