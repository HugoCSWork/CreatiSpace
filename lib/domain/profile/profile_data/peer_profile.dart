import 'package:auto_route/auto_route.dart';
import 'package:creatispace/domain/core/value_failures.dart';
import 'package:creatispace/domain/profile/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'peer_profile.freezed.dart';

@freezed
abstract class PeerProfileData implements _$PeerProfileData {
  const factory PeerProfileData({
    @required ProfileName username,
    @required ProfileDescription description,
    @required ProfileFollowing following,
    @required ProfileFollowers followers,
    @required ProfileImageURL profileImageURL,
    @required ProfileBackgroundImageURL backgroundImageURL,
    @required bool isFollowing
  }) = _PeerProfileData;

  const PeerProfileData._();

  factory PeerProfileData.empty() => PeerProfileData(
    username: ProfileName(""),
    following: ProfileFollowing(0),
    description: ProfileDescription(""),
    followers: ProfileFollowers(0),
    profileImageURL: ProfileImageURL(""),
    backgroundImageURL: ProfileBackgroundImageURL(""),
    isFollowing: false
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