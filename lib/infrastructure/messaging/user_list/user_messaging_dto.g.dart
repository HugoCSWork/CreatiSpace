// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_messaging_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserMessagingDto _$_$_UserMessagingDtoFromJson(Map<String, dynamic> json) {
  return _$_UserMessagingDto(
    userMessagingName: json['userMessagingName'] as String,
    lastMessage: json['lastMessage'] as String,
    lastSeen: json['lastSeen'] as String,
    unreadMessages: json['unreadMessages'] as bool,
    userId: json['userId'] as String,
  );
}

Map<String, dynamic> _$_$_UserMessagingDtoToJson(
        _$_UserMessagingDto instance) =>
    <String, dynamic>{
      'userMessagingName': instance.userMessagingName,
      'lastMessage': instance.lastMessage,
      'lastSeen': instance.lastSeen,
      'unreadMessages': instance.unreadMessages,
      'userId': instance.userId,
    };
