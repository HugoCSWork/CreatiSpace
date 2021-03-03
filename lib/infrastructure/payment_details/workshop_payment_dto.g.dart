// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workshop_payment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkshopPaymentDto _$_$_WorkshopPaymentDtoFromJson(
    Map<String, dynamic> json) {
  return _$_WorkshopPaymentDto(
    workshop: json['workshop'] as Map<String, dynamic>,
    paymentIntentRes: json['paymentIntentRes'] as Map<String, dynamic>,
    hasStarted: json['hasStarted'] as String,
  );
}

Map<String, dynamic> _$_$_WorkshopPaymentDtoToJson(
        _$_WorkshopPaymentDto instance) =>
    <String, dynamic>{
      'workshop': instance.workshop,
      'paymentIntentRes': instance.paymentIntentRes,
      'hasStarted': instance.hasStarted,
    };
