import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:creatispace/domain/following_followers/following_follower/following_follower.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'following_followers_dtos.freezed.dart';
part 'following_followers_dtos.g.dart';


@freezed
abstract class FollowingFollowerDto implements _$FollowingFollowerDto {
  const FollowingFollowerDto._();

  const factory FollowingFollowerDto({
    @JsonKey(ignore: true) String id,
    @required String username,
    @required String profileImageURL,
  }) = _FollowingFollowerDto;

  factory FollowingFollowerDto.fromDomain(FollowingFollowers followingFollowers) {
    return FollowingFollowerDto(
        id: followingFollowers.id,
        username: followingFollowers.username,
        profileImageURL: followingFollowers.profileImageURL
    );
  }

  FollowingFollowers toDomain() {
    return FollowingFollowers(
        id: id,
        username: username,
        profileImageURL: profileImageURL
    );
  }

  factory FollowingFollowerDto.fromJson(Map<String, dynamic> json) =>
      _$FollowingFollowerDtoFromJson(json);

  factory FollowingFollowerDto.fromFirestore(DocumentSnapshot doc) =>
      FollowingFollowerDto.fromJson(doc.data()).copyWith(id: doc.id);
}
