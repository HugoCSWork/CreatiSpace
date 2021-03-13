import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import 'package:creatispace/domain/core/value_objects.dart';
import 'package:creatispace/domain/streaming/streaming_message.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:rxdart/rxdart.dart';

Stream<Either<String, KtList<StreamingMessage>>> mockWatchAllUserWorkshops(MockFirestoreInstance instance, String userId, String workshopId) async* {
  yield* instance.collection('users').doc(userId).collection('workshops').doc(workshopId).collection('conversation')
      .snapshots()
      .map(
        (snapshot) => right<String, KtList<StreamingMessage>>(
      snapshot.docs
          .map(
              (doc) => StreamingMessage.fromFirestore(doc).toDomain()
      ).toImmutableList(),
    ),
  ).onErrorReturnWith((error) {
    if (error is FirebaseException && error.message.contains('PERMISSION_DENIED')) {
      return left('Insufficient Permissions');
    } else {
      return left('Unexpected Error');
    }
  });
}

void main() {
  MockFirestoreInstance instance;
  UniqueId userId;
  UniqueId workshopId;

  setUp(() {
    instance = MockFirestoreInstance();
    userId = UniqueId();
    workshopId = UniqueId();
  });

  group('Test streaming repository', () {
    test('workshops messages successfully retrieved', () async {
      await instance.collection('users').doc(userId.getOrCrash()).collection('workshops').doc(workshopId.getOrCrash()).collection('conversation').doc(userId.getOrCrash()).set({
        'username' : 'testUsername',
        'image' : 'testImage',
        'message' : 'testMessage',

      });
      Stream<Either<String, KtList<StreamingMessage>>> results = await mockWatchAllUserWorkshops(instance, userId.getOrCrash(), workshopId.getOrCrash());
      results.listen(
        expectAsync1(
              (event) {
            event.fold(
                    (l) => expect(1, 2),
                    (r) {
                  expect(r[0].username, 'testUsername');
                  expect(r[0].image, 'testImage');
                  expect(r[0].message, 'testMessage');
                }
            );
          },
        ),
      );
    });

    test('workshops messages failed to retrieved', () async {
      await instance.collection('users').doc(userId.getOrCrash()).collection('workshops').doc(workshopId.getOrCrash()).collection('conversation').doc(userId.getOrCrash()).set({
        'username' : 'testUsername',
      });
      Stream<Either<String, KtList<StreamingMessage>>> results = await mockWatchAllUserWorkshops(instance, userId.getOrCrash(), workshopId.getOrCrash());
      results.listen(
        expectAsync1(
              (event) {
            event.fold(
                    (err) => expect(err, 'Unexpected Error'),
                    (r) => expect(1, 2)
            );
          },
        ),
      );
    });
  });
}