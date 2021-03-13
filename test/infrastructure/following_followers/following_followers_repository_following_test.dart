import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import 'package:creatispace/domain/core/value_objects.dart';
import 'package:creatispace/domain/following_followers/following_follower/following_follower.dart';
import 'package:creatispace/domain/following_followers/following_follower_error/following_follower_error_failures.dart';
import 'package:creatispace/infrastructure/following_followers/following_followers_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:rxdart/rxdart.dart';

Stream<Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>> mockFollowingUsers(MockFirestoreInstance instance, String userId) async* {
  yield* instance.collection('users').doc(userId).collection('following')
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

void main() {
  MockFirestoreInstance instance;
  UniqueId userId;

  setUp(() async {
    instance = MockFirestoreInstance();
    userId = UniqueId();
  });

  group('Test following followers repository for following ', () {
    test('Get following successfully', () async {
      await instance.collection('users').doc(userId.getOrCrash()).collection('following').add({
        'id' : userId.getOrCrash(),
        'username' : 'testname',
        'profileImageURL': 'testurl.com.jpeg',
      });
      Stream<Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>> results = await mockFollowingUsers(instance, userId.getOrCrash());
      results.listen(
        expectAsync1(
              (event) {
            event.fold(
                    (l) => expect(1, 2),
                    (r) {
                      expect(r[0].username, 'testname');
                      expect(r[0].profileImageURL, 'testurl.com.jpeg');
                }
            );
          },
        ),
      );
    });
  });
}