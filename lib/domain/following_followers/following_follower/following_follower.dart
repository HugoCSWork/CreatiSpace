
import 'package:creatispace/domain/following_followers/following_follower_error/following_follower_error_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'following_follower.freezed.dart';

@freezed
abstract class FollowingFollowers implements _$FollowingFollowers {

  const factory FollowingFollowers({
    @required String id,
    @required String username,
    @required String profileImageURL,
  }) = _FollowingFollowers;

  const FollowingFollowers._();
}


@freezed
abstract class FollowingFollowersGrouped implements _$FollowingFollowersGrouped {
  const factory FollowingFollowersGrouped({
    @required Stream<Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>> followers,
    @required Stream<Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>> following,
  }) = _FollowingFollowersGrouped;

  const FollowingFollowersGrouped._();
}