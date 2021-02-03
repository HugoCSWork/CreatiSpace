import 'package:creatispace/domain/following_followers/following_follower/following_follower.dart';
import 'package:creatispace/domain/following_followers/following_follower_error/following_follower_error_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

abstract class IFollowingFollowerFacade {
  Stream<Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>> getAllFollowing();
  Stream<Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>> getAllFollowers();
  Stream<Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>> getAllUsers();
  Future<Either<FollowingFollowerErrorFailure, Unit>> add(FollowingFollowers followingFollowers);
  Future<Either<FollowingFollowerErrorFailure, Unit>> remove(FollowingFollowers followingFollowers);
}