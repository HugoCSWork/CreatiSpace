// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workshop_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkshopDto _$_$_WorkshopDtoFromJson(Map<String, dynamic> json) {
  return _$_WorkshopDto(
    id: json['id'] as String,
    userId: json['userId'] as String,
    timestamp: json['timestamp'] as String,
    workshopName: json['workshopName'] as String,
    workshopDescription: json['workshopDescription'] as String,
    workshopDate: json['workshopDate'] as String,
    workshopRequirements: json['workshopRequirements'] as String,
    workshopPrice: (json['workshopPrice'] as num)?.toDouble(),
    workshopDuration: (json['workshopDuration'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_WorkshopDtoToJson(_$_WorkshopDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'timestamp': instance.timestamp,
      'workshopName': instance.workshopName,
      'workshopDescription': instance.workshopDescription,
      'workshopDate': instance.workshopDate,
      'workshopRequirements': instance.workshopRequirements,
      'workshopPrice': instance.workshopPrice,
      'workshopDuration': instance.workshopDuration,
    };
