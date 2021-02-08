// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peer_profile_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PeerProfileDto _$_$_PeerProfileDtoFromJson(Map<String, dynamic> json) {
  return _$_PeerProfileDto(
    following: json['following'] as int,
    followers: json['followers'] as int,
    profileImageURL: json['profileImageURL'] as String,
    backgroundImageURL: json['backgroundImageURL'] as String,
    username: json['username'] as String,
    description: json['description'] as String,
    isFollowing: json['isFollowing'] as bool,
  );
}

Map<String, dynamic> _$_$_PeerProfileDtoToJson(_$_PeerProfileDto instance) =>
    <String, dynamic>{
      'following': instance.following,
      'followers': instance.followers,
      'profileImageURL': instance.profileImageURL,
      'backgroundImageURL': instance.backgroundImageURL,
      'username': instance.username,
      'description': instance.description,
      'isFollowing': instance.isFollowing,
    };
