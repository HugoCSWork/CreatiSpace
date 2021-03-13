import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import 'package:creatispace/domain/core/value_objects.dart';
import 'package:creatispace/domain/profile/profile_data/user_profile.dart';
import 'package:creatispace/domain/profile/profile_error/profile_error_failures.dart';
import 'package:creatispace/infrastructure/profile/profile_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

Stream<Either<ProfileErrorFailure, UserProfileData>> mockProfileLoggedInUser(MockFirestoreInstance instance, String userId) async* {
  try {
    UserProfileData dto = await UserProfileDto.fromFirestore(
        await instance.collection('users').doc(userId).get()).toDomain();
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

  setUp(() async {
    instance = MockFirestoreInstance();
    userId = UniqueId();
  });

  group('Test Profile repository for Current Logged In Users ', () {
    test('Get Logged in user information successfully', () async {
      await instance.collection('users').doc(userId.getOrCrash()).set({
        'id' : userId.getOrCrash(),
        'username' : 'testname',
        'profileImageURL': 'testurl.com.jpeg',
        'backgroundImageURL': 'testurl.com.jpeg',
        'following': 0,
        'followers': 0,
        'description' : 'neee description'
      });
      Stream<Either<ProfileErrorFailure, UserProfileData>> results = await mockProfileLoggedInUser(instance, userId.getOrCrash());
      results.listen(
        expectAsync1(
              (event) {
            event.fold(
                    (l) => expect(1, 2),
                    (r) {
                      expect(r.id, userId.getOrCrash());
                      expect(r.username.getOrCrash(), 'testname');
                      expect(r.description.getOrCrash(), 'neee description');
                      expect(r.followers.getOrCrash(), 0);
                      expect(r.following.getOrCrash(), 0);
                      expect(r.profileImageURL.getOrCrash(), 'testurl.com.jpeg');
                      expect(r.backgroundImageURL.getOrCrash(), 'testurl.com.jpeg');
                }
            );
          },
        ),
      );
    });
    test('Get Logged in user information error', () async {
      await instance.collection('users').doc(userId.getOrCrash()).set({
        'id' : userId.getOrCrash(),
        'description' : 'neee description'
      });
      Stream<Either<ProfileErrorFailure, UserProfileData>> results = await mockProfileLoggedInUser(instance, userId.getOrCrash());
      results.listen(
        expectAsync1(
              (event) {
            event.fold(
                    (err) => expect(err, ProfileErrorFailure.unexpected()),
                    (r) => expect(1, 2)
            );
          },
        ),
      );
    });
  });
}