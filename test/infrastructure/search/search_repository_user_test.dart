import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import 'package:creatispace/domain/core/value_objects.dart';
import 'package:creatispace/domain/items/item_error/item_error_failures.dart';
import 'package:creatispace/domain/profile/profile_data/user_profile.dart';
import 'package:creatispace/infrastructure/profile/profile_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:rxdart/rxdart.dart';

Stream<Either<ItemErrorFailure, KtList<UserProfileData>>> mockSearchForUsers(MockFirestoreInstance instance, String username, String search) async* {
  yield* instance.collection('users')
      .snapshots()
      .map(
        (snapshot) =>
        snapshot.docs.map((doc) => UserProfileDto.fromFirestore(doc).toDomain()),
  )
      .map(
        (user) => right<ItemErrorFailure, KtList<UserProfileData>>(
        user
            .where((user) => user.username.getOrCrash().toLowerCase().contains(search.toLowerCase()))
            .where((user) => !user.username.getOrCrash().toLowerCase().contains(username.toLowerCase()))
            .toImmutableList()
    ),
  ).onErrorReturnWith((error) {
    if (error is FirebaseException && error.message.contains('PERMISSION_DENIED')) {
      return left(const ItemErrorFailure.insufficientPermissions());
    } else {
      return left(const ItemErrorFailure.unexpected());
    }
  });
}

void main() {
  MockFirestoreInstance instance;
  UniqueId userId;

  setUp(() async {
    instance = MockFirestoreInstance();
    userId = UniqueId();
    await instance.collection('users').add({
      'id' : userId.getOrCrash(),
      'username' : 'testname',
      'description' : 'testdescription',
      'following' : 0,
      'followers': 0,
      'profileImageURL': 'testurl.com.jpeg',
      'backgroundImageURL' : 'testurl.com.jpeg'
    });
  });

  group('Test search repository for users', () {
    test('Search for user successfully', () async {
      Stream<Either<ItemErrorFailure, KtList<UserProfileData>>> results = await mockSearchForUsers(instance, 'dasdasdsdasd', 'testname');
      results.listen(
        expectAsync1(
              (event) {
            event.fold(
                    (l) => expect(1, 2),
                    (r) {
                      expect(r[0].description.getOrCrash(), 'testdescription');
                      expect(r[0].username.getOrCrash(), 'testname');
                      expect(r[0].following.getOrCrash(), 0);
                      expect(r[0].followers.getOrCrash(), 0);
                      expect(r[0].profileImageURL.getOrCrash(), 'testurl.com.jpeg');
                      expect(r[0].backgroundImageURL.getOrCrash(), 'testurl.com.jpeg');
                      expect(r[0].id,  userId.getOrCrash());
                }
            );
          },
        ),
      );
    });
    test('Search for user returns empty if no user is found with that name', () async {
      Stream<Either<ItemErrorFailure, KtList<UserProfileData>>> results = await mockSearchForUsers(instance, 'dasdasdsdasd', 'randombasicname');
      results.listen(
        expectAsync1(
              (event) {
            event.fold(
                    (l) => expect(1, 2),
                    (r) {
                      expect(r.size, 0);
                }
            );
          },
        ),
      );
    });
    test('Search for user returns empty if item is found but has the same username', () async {
      Stream<Either<ItemErrorFailure, KtList<UserProfileData>>> results = await mockSearchForUsers(instance, 'testname', 'testname');
      results.listen(
        expectAsync1(
              (event) {
            event.fold(
                    (l) => expect(1, 2),
                    (r) {
                  expect(r.size, 0);
                }
            );
          },
        ),
      );
    });
    test('Search for user returns error if data is bad format', () async {
      await instance.collection('users').add({
        'id' : userId.getOrCrash(),
        'description' : 'testdescription',
        'followers': 0,
        'profileImageURL': 'testurl.com.jpeg',
        'backgroundImageURL' : 'testurl.com.jpeg'
      });
      Stream<Either<ItemErrorFailure, KtList<UserProfileData>>> results = await mockSearchForUsers(instance, 'testname', 'testname');
      results.listen(
        expectAsync1(
              (event) {
            event.fold(
                    (err) => expect(err, ItemErrorFailure.unexpected()),
                    (r) => expect(1, 2),
            );
          },
        ),
      );
    });
  });
}