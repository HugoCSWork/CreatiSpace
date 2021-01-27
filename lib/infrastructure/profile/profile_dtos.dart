import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:creatispace/domain/items/item/item.dart';
import 'package:creatispace/domain/profile/profile_data/user_profile.dart';
import 'package:creatispace/domain/profile/value_objects.dart';
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
    @required String description,

  }) = _UserProfileDto;




  factory UserProfileDto.fromDomain(UserProfileData profile) {
    return UserProfileDto(
        username: profile.username.getOrCrash(),
        description: profile.description.getOrCrash(),
        followers: profile.followers.getOrCrash(),
        following: profile.following.getOrCrash(),
        profileImageURL: profile.profileImageURL.getOrCrash(),
        backgroundImageURL: profile.backgroundImageURL.getOrCrash()
    );
  }

  factory UserProfileDto.fromDomainUpdate(UserProfileData profile,
      String backgroundUrl, String profileUrl) {
    return UserProfileDto(
        username: profile.username.getOrCrash(),
        description: profile.description.getOrCrash(),
        followers: profile.followers.getOrCrash(),
        following: profile.following.getOrCrash(),
        profileImageURL: profileUrl ?? profile.profileImageURL.getOrCrash(),
        backgroundImageURL: backgroundUrl ?? profile.backgroundImageURL.getOrCrash()
    );
  }


  UserProfileData toDomain() {
    return UserProfileData(
      username: ProfileName(username),
      description: ProfileDescription(description),
      followers: ProfileFollowers(followers),
      following: ProfileFollowing(following),
      profileImageURL: ProfileImageURL(profileImageURL),
      backgroundImageURL: ProfileBackgroundImageURL(backgroundImageURL)
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