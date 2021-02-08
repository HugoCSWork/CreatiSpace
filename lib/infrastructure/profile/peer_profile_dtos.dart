import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:creatispace/domain/profile/profile_data/peer_profile.dart';
import 'package:creatispace/domain/profile/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'peer_profile_dtos.freezed.dart';
part 'peer_profile_dtos.g.dart';


@freezed
abstract class PeerProfileDto implements _$PeerProfileDto {
  const PeerProfileDto._();

  const factory PeerProfileDto({
    @required int following,
    @required int followers,
    @required String profileImageURL,
    @required String backgroundImageURL,
    @required String username,
    @required String description,
    @required bool isFollowing,

  }) = _PeerProfileDto;




  factory PeerProfileDto.fromDomain(PeerProfileData profile) {
    return PeerProfileDto(
        username: profile.username.getOrCrash(),
        description: profile.description.getOrCrash(),
        followers: profile.followers.getOrCrash(),
        following: profile.following.getOrCrash(),
        profileImageURL: profile.profileImageURL.getOrCrash(),
        backgroundImageURL: profile.backgroundImageURL.getOrCrash(),
        isFollowing: profile.isFollowing
    );
  }

  factory PeerProfileDto.fromDomainUpdate(PeerProfileData profile,
      String backgroundUrl, String profileUrl) {
    return PeerProfileDto(
        username: profile.username.getOrCrash(),
        description: profile.description.getOrCrash(),
        followers: profile.followers.getOrCrash(),
        following: profile.following.getOrCrash(),
        profileImageURL: profileUrl ?? profile.profileImageURL.getOrCrash(),
        backgroundImageURL: backgroundUrl ?? profile.backgroundImageURL.getOrCrash(),
        isFollowing: profile.isFollowing
    );
  }


  PeerProfileData toDomain() {
    return PeerProfileData(
        username: ProfileName(username),
        description: ProfileDescription(description),
        followers: ProfileFollowers(followers),
        following: ProfileFollowing(following),
        profileImageURL: ProfileImageURL(profileImageURL),
        backgroundImageURL: ProfileBackgroundImageURL(backgroundImageURL),
        isFollowing: isFollowing
    );
  }


  factory PeerProfileDto.fromJson(Map<String, dynamic> json) =>
      _$PeerProfileDtoFromJson(json);

  factory PeerProfileDto.fromFirestore(DocumentSnapshot doc, bool isFollowing) {
    var data = doc.data();
    data["isFollowing"] = isFollowing;
    return PeerProfileDto.fromJson(data);
  }
}