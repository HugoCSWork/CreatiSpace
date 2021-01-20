// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_conversation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserConversationDto _$_$_UserConversationDtoFromJson(
    Map<String, dynamic> json) {
  return _$_UserConversationDto(
    content: json['content'] as String,
    idFrom: json['idFrom'] as String,
    idTo: json['idTo'] as String,
    timestamp: json['timestamp'] as String,
    type: json['type'] as int,
  );
}

Map<String, dynamic> _$_$_UserConversationDtoToJson(
        _$_UserConversationDto instance) =>
    <String, dynamic>{
      'content': instance.content,
      'idFrom': instance.idFrom,
      'idTo': instance.idTo,
      'timestamp': instance.timestamp,
      'type': instance.type,
    };
