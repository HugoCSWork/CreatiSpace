import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:creatispace/domain/following_followers/following_follower/following_follower.dart';
import 'package:creatispace/domain/following_followers/following_follower_error/following_follower_error_failures.dart';
import 'package:creatispace/domain/following_followers/i_following_followers_facade.dart';
import 'package:creatispace/infrastructure/core/firestore_helpers.dart';
import 'package:creatispace/infrastructure/following_followers/following_followers_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:kt_dart/kt.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IFollowingFollowerFacade)
class FollowingFollowerRepository implements IFollowingFollowerFacade {
  final FirebaseFirestore _firebaseFirestore;

  FollowingFollowerRepository(this._firebaseFirestore);


  @override
  Stream<Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>>
    getAllFollowing() async* {
    var userDoc = await _firebaseFirestore.userDocument();

    yield* userDoc.UserFollowingCollection
        .snapshots()
        .map(
          (snapshot) => right<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>(
        snapshot.docs
            .map(
                (doc) {
              FollowingFollowers dto = FollowingFollowerDto.fromFirestore(doc).toDomain();
              return dto;
            })
            .toImmutableList(),
      ),
    ).onErrorReturnWith((error) {
      if (error is FirebaseException && error.message.contains('PERMISSION_DENIED')) {
        return left(const FollowingFollowerErrorFailure.insufficientPermissions());
      } else {
        return left(const FollowingFollowerErrorFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>>
  getAllFollowers() async* {
    var userDoc = await _firebaseFirestore.userDocument();

    yield* userDoc.UserFollowersCollection
        .snapshots()
        .map(
          (snapshot) => right<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>(
        snapshot.docs
            .map(
                (doc) {
              FollowingFollowers dto = FollowingFollowerDto.fromFirestore(doc).toDomain();
              return dto;
            })
            .toImmutableList(),
      ),
    ).onErrorReturnWith((error) {
      if (error is FirebaseException && error.message.contains('PERMISSION_DENIED')) {
        return left(const FollowingFollowerErrorFailure.insufficientPermissions());
      } else {
        return left(const FollowingFollowerErrorFailure.unexpected());
      }
    });
  }

}