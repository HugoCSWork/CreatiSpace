import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import 'package:creatispace/domain/core/value_objects.dart';
import 'package:creatispace/domain/workshop/workshop.dart';
import 'package:creatispace/domain/workshop/workshop_error_failures/workshop_error_failures.dart';
import 'package:creatispace/infrastructure/workshop/workshop_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:rxdart/rxdart.dart';

Stream<Either<WorkshopErrorFailures, KtList<Workshop>>> mockWatchAllUserWorkshops(MockFirestoreInstance instance, String userId) async* {
  yield* await instance.collection('users').doc(userId).collection('workshops')
      .snapshots()
      .map(
        (snapshot) => right<WorkshopErrorFailures, KtList<Workshop>>(
      snapshot.docs
          .map((doc) => WorkshopDto.fromFirestore(doc).toDomain())
          .toImmutableList(),
    ),
  ).onErrorReturnWith((error) {
    if (error is FirebaseException &&
        error.message.contains('PERMISSION_DENIED')) {
      return left(const WorkshopErrorFailures.insufficientPermissions());
    } else {
      return left(const WorkshopErrorFailures.unexpected());
    }
  });
}

void main() {
  MockFirestoreInstance instance;
  UniqueId userId;
  UniqueId ownerId;
  UniqueId attendeeId;

  setUp(() {
    instance = MockFirestoreInstance();
    userId = UniqueId();
    ownerId = UniqueId();
    attendeeId = UniqueId();
  });

  group('Test workshop repository', () {
    test('Search for users workshops successfully', () async {
      await instance.collection('users').doc(userId.getOrCrash()).collection('workshops').doc(ownerId.getOrCrash()).set({
        'id' : ownerId.getOrCrash(),
        'workshopName' : 'WorkshopName',
        'workshopDescription' : 'WorkshopDescription',
        'workshopDate' : '2025-02-02',
        'workshopTime': '14:53',
        'workshopRequirements': 'WorkshopRequirements',
        'workshopPrice' : 15.34,
        'workshopDuration' : 30,
        'userId': userId.getOrCrash(),
        'timestamp': 'WorkshopRequirements',
        'hasStarted': "pending",
        'username': 'username',
        'imageUrl' : 'profileImage',
        'attendees': [
          {
            'id': attendeeId.getOrCrash(),
            'username' : 'testusername'
          }
        ],
      });
      Stream<Either<WorkshopErrorFailures, KtList<Workshop>>> results = await mockWatchAllUserWorkshops(instance, userId.getOrCrash());
      results.listen(
        expectAsync1(
              (event) {
            event.fold(
                    (l) => expect(1, 2),
                    (r) {
                  expect(r[0].username, 'username');
                  expect(r[0].profileImage, 'profileImage');
                  expect(r[0].hasStarted, "pending");
                  expect(r[0].workshopName.getOrCrash(), 'WorkshopName');
                  expect(r[0].workshopDuration.getOrCrash(), 30);
                  expect(r[0].workshopPrice.getOrCrash(), 15.34);
                  expect(r[0].workshopRequirements.getOrCrash(), 'WorkshopRequirements');
                  expect(r[0].workshopDescription.getOrCrash(), 'WorkshopDescription');
                  expect(r[0].workshopTime.getOrCrash(), '14:53');
                  expect(r[0].workshopDate.getOrCrash(), '2025-02-02');
                }
            );
          },
        ),
      );
    });


    test('Search for users workshops successfully', () async {
      await instance.collection('users').doc(userId.getOrCrash()).collection('workshops').doc(ownerId.getOrCrash()).set({
        'id' : ownerId.getOrCrash(),
        'workshopName' : 'WorkshopName',
        'workshopDescription' : 'WorkshopDescription',
        'attendees': [
          {
            'id': attendeeId.getOrCrash(),
            'username' : 'testusername'
          }
        ],
      });
      Stream<Either<WorkshopErrorFailures, KtList<Workshop>>> results = await mockWatchAllUserWorkshops(instance, userId.getOrCrash());
      results.listen(
        expectAsync1(
              (event) {
            event.fold(
                    (err) => expect(err, WorkshopErrorFailures.unexpected()),
                    (r) => expect(1, 2),
            );
          },
        ),
      );
    });
  });
}