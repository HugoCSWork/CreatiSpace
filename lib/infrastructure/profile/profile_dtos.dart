import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:creatispace/domain/items/item/item.dart';
import 'package:creatispace/domain/profile/profile_data/user_profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'profile_dtos.freezed.dart';
part 'profile_dtos.g.dart';


@freezed
abstract class UserProfileDto implements _$UserProfileDto {
  const UserProfileDto._();

  const factory UserProfileDto({
    @required int following,
    @required int followers,
    @required String profileImageURL,
    @required String backgroundImageURL,
    @required String username,

  }) = _UserProfileDto;

  factory UserProfileDto.fromDomain(UserProfileData profile) {
    return UserProfileDto(
        username: profile.username,
        followers: profile.followers,
        following: profile.following,
        profileImageURL: profile.profileImageURL,
        backgroundImageURL: profile.backgroundImageURL
    );
  }

  UserProfileData toDomain() {
    return UserProfileData(
      username: username,
      followers: followers,
      following: following,
      profileImageURL: profileImageURL,
      backgroundImageURL: backgroundImageURL
    );
  }


  factory UserProfileDto.fromJson(Map<String, dynamic> json) =>
      _$UserProfileDtoFromJson(json);

  factory UserProfileDto.fromFirestore(DocumentSnapshot doc, String profileImage) {
    var data = doc.data();
    // data["profileImageURL"] = profileImage;
    return UserProfileDto.fromJson(data);
  }
}