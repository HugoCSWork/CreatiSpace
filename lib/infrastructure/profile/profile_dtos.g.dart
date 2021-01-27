// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfileDto _$_$_UserProfileDtoFromJson(Map<String, dynamic> json) {
  return _$_UserProfileDto(
    following: json['following'] as int,
    followers: json['followers'] as int,
    profileImageURL: json['profileImageURL'] as String,
    backgroundImageURL: json['backgroundImageURL'] as String,
    username: json['username'] as String,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$_$_UserProfileDtoToJson(_$_UserProfileDto instance) =>
    <String, dynamic>{
      'following': instance.following,
      'followers': instance.followers,
      'profileImageURL': instance.profileImageURL,
      'backgroundImageURL': instance.backgroundImageURL,
      'username': instance.username,
      'description': instance.description,
    };
