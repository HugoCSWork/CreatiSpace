import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import 'package:creatispace/domain/core/value_objects.dart';
import 'package:creatispace/domain/profile/profile_data/peer_profile.dart';
import 'package:creatispace/domain/profile/profile_error/profile_error_failures.dart';
import 'package:creatispace/infrastructure/profile/peer_profile_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

Stream<Either<ProfileErrorFailure, PeerProfileData>> mockProfilePeerUser(MockFirestoreInstance instance, String userId, String peerId) async* {
  try {
    var followingRef = await instance.collection('users').doc(userId).collection('following').doc(peerId).get();
    PeerProfileData dto = await PeerProfileDto.fromFirestore(
        await instance.collection('users').doc(peerId).get(), followingRef.exists ? true : false).toDomain();
    yield right(dto);
  } catch (error) {
    if (error is FirebaseException &&
        error.message.contains('PERMISSION_DENIED')) {
      yield left(const ProfileErrorFailure.insufficientPermissions());
    } else {
      yield left(const ProfileErrorFailure.unexpected());
    }
  }
}

void main() {
  MockFirestoreInstance instance;
  UniqueId userId;
  UniqueId peerId;

  setUp(() async {
    instance = MockFirestoreInstance();
    userId = UniqueId();
    peerId = UniqueId();
  });

  group('Test Profile repository for Peer Users ', () {
    test('Get peer user information successfully with following user', () async {

      await instance.collection('users').doc(peerId.getOrCrash()).set({
        'id' : peerId.getOrCrash(),
        'username' : 'testname',
        'profileImageURL': 'testurl.com.jpeg',
        'backgroundImageURL': 'testurl.com.jpeg',
        'following': 0,
        'followers': 0,
        'description' : 'neee description',
      });

      await instance.collection('users').doc(userId.getOrCrash()).collection('following').doc(peerId.getOrCrash()).set({
        'id' : peerId.getOrCrash(),
      });

      Stream<Either<ProfileErrorFailure, PeerProfileData>> results = await mockProfilePeerUser(instance, userId.getOrCrash(), peerId.getOrCrash());
      results.listen(
        expectAsync1(
              (event) {
            event.fold(
                    (l) => expect(1, 2),
                    (r) {
                  expect(r.isFollowing, true);
                  expect(r.username.getOrCrash(), 'testname');
                  expect(r.description.getOrCrash(), 'neee description');
                  expect(r.followers.getOrCrash(), 0);
                  expect(r.following.getOrCrash(), 0);
                  expect(r.profileImageURL.getOrCrash(), 'testurl.com.jpeg');
                  expect(r.backgroundImageURL.getOrCrash(), 'testurl.com.jpeg');
                  expect(r.backgroundImageURL.getOrCrash(), 'testurl.com.jpeg');
                }
            );
          },
        ),
      );
    });

    test('Get peer user information successfully with not following user', () async {

      await instance.collection('users').doc(peerId.getOrCrash()).set({
        'id' : peerId.getOrCrash(),
        'username' : 'testname',
        'profileImageURL': 'testurl.com.jpeg',
        'backgroundImageURL': 'testurl.com.jpeg',
        'following': 0,
        'followers': 0,
        'description' : 'neee description',
      });

      Stream<Either<ProfileErrorFailure, PeerProfileData>> results = await mockProfilePeerUser(instance, userId.getOrCrash(), peerId.getOrCrash());
      results.listen(
        expectAsync1(
              (event) {
            event.fold(
                    (l) => expect(1, 2),
                    (r) {
                  expect(r.isFollowing, false);
                  expect(r.username.getOrCrash(), 'testname');
                  expect(r.description.getOrCrash(), 'neee description');
                  expect(r.followers.getOrCrash(), 0);
                  expect(r.following.getOrCrash(), 0);
                  expect(r.profileImageURL.getOrCrash(), 'testurl.com.jpeg');
                  expect(r.backgroundImageURL.getOrCrash(), 'testurl.com.jpeg');
                  expect(r.backgroundImageURL.getOrCrash(), 'testurl.com.jpeg');
                }
            );
          },
        ),
      );
    });
    test('Get peer user information successfully with not following user', () async {

      await instance.collection('users').doc(peerId.getOrCrash()).set({
        'id' : peerId.getOrCrash(),
      });

      Stream<Either<ProfileErrorFailure, PeerProfileData>> results = await mockProfilePeerUser(instance, userId.getOrCrash(), peerId.getOrCrash());
      results.listen(
        expectAsync1(
              (event) {
            event.fold(
                    (err) => expect(err, ProfileErrorFailure.unexpected()),
                    (r) => expect(1, 2),
            );
          },
        ),
      );
    });
  });
}