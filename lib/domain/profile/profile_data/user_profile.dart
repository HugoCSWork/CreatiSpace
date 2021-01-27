import 'package:auto_route/auto_route.dart';
import 'package:creatispace/domain/core/value_failures.dart';
import 'package:creatispace/domain/items/item/item.dart';
import 'package:creatispace/domain/profile/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'user_profile.freezed.dart';

@freezed
abstract class UserProfileData implements _$UserProfileData {
  const factory UserProfileData({
    @required ProfileName username,
    @required ProfileDescription description,
    @required ProfileFollowing following,
    @required ProfileFollowers followers,
    @required ProfileImageURL profileImageURL,
    @required ProfileBackgroundImageURL backgroundImageURL,
  }) = _UserProfileData;

  const UserProfileData._();

  factory UserProfileData.empty() => UserProfileData(
    username: ProfileName(""),
    following: ProfileFollowing(0),
    description: ProfileDescription(""),
    followers: ProfileFollowers(0),
    profileImageURL: ProfileImageURL(""),
    backgroundImageURL: ProfileBackgroundImageURL("")
  );

  Option<ValueFailure<dynamic>> get failureOption {
    return username.failureOrUnit
        .andThen(description.failureOrUnit)
        .andThen(following.failureOrUnit)
        .andThen(followers.failureOrUnit)
        .andThen(profileImageURL.failureOrUnit)
        .andThen(backgroundImageURL.failureOrUnit)
          .fold((l) => some(l), (_) => none());
  }

}