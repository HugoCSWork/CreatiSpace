// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workshop_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkshopDto _$_$_WorkshopDtoFromJson(Map<String, dynamic> json) {
  return _$_WorkshopDto(
    id: json['id'] as String,
    userId: json['userId'] as String,
    username: json['username'] as String,
    imageUrl: json['imageUrl'] as String,
    timestamp: json['timestamp'] as String,
    workshopName: json['workshopName'] as String,
    hasStarted: json['hasStarted'] as String,
    workshopDescription: json['workshopDescription'] as String,
    workshopDate: json['workshopDate'] as String,
    workshopTime: json['workshopTime'] as String,
    workshopRequirements: json['workshopRequirements'] as String,
    workshopPrice: (json['workshopPrice'] as num)?.toDouble(),
    workshopDuration: (json['workshopDuration'] as num)?.toDouble(),
    attendees: (json['attendees'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$_$_WorkshopDtoToJson(_$_WorkshopDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'username': instance.username,
      'imageUrl': instance.imageUrl,
      'timestamp': instance.timestamp,
      'workshopName': instance.workshopName,
      'hasStarted': instance.hasStarted,
      'workshopDescription': instance.workshopDescription,
      'workshopDate': instance.workshopDate,
      'workshopTime': instance.workshopTime,
      'workshopRequirements': instance.workshopRequirements,
      'workshopPrice': instance.workshopPrice,
      'workshopDuration': instance.workshopDuration,
      'attendees': instance.attendees,
    };
