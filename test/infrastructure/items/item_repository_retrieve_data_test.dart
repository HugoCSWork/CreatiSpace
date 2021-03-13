
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import 'package:creatispace/domain/core/value_objects.dart';
import 'package:creatispace/domain/items/item/item.dart';
import 'package:creatispace/domain/items/item_error/item_error_failures.dart';
import 'package:creatispace/domain/items/item_image/item_image.dart';
import 'package:creatispace/domain/items/value_objects.dart';
import 'package:creatispace/infrastructure/items/item_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

/// CANT MOCK EXTENSION METHODS SO HAVE TO RE-WRITE FUNCTION WITHOUT IT
/// IN FUTURE DO NOT USE EXTENSION METHODS UNLESS IT BECOMES POSSIBLE
/// Mocking one of the streams as all item streams have the same functionality
/// just different paths
Stream<Either<ItemErrorFailure, KtList<Item>>> mockWatchAllUserItems(MockFirestoreInstance instance, String userId) async* {
  yield* instance.collection('users').doc(userId).collection('items')
      .snapshots()
      .map(
        (snapshot) => right<ItemErrorFailure, KtList<Item>>(
      snapshot.docs
          .map((doc) => ItemDto.fromFirestore(doc).toDomain())
          .toImmutableList(),
    ),
  )
      .onErrorReturnWith((error) {
    if (error is FirebaseException &&
        error.message.contains('PERMISSION_DENIED')) {
      return left(const ItemErrorFailure.insufficientPermissions());
    } else {
      return left(const ItemErrorFailure.unexpected());
    }
  });
}

void main() {
  MockFirestoreInstance instance;
  UniqueId userId ;
  UniqueId itemId;
  UniqueId imageId;
  setUp(() {
    instance = MockFirestoreInstance();
    userId = UniqueId();
    itemId = UniqueId();
    imageId = UniqueId();
  });
  group('Test item repository', () {
    test('test retrieving data from database success', () async {

      await instance.collection('users').doc(userId.getOrCrash()).collection('items').add({
        'delivery': 1.50,
        'description': 'testerino',
        'images' : [
          {
            'id': imageId.getOrCrash(),
            'imageName' : 'randomName',
            'url' : 'testurl.com',
          }
        ],
        'item_id': itemId.getOrCrash(),
        'name' : 'testerino',
        'price': 2.50,
        'profileImageUrl' : 'testerinonono',
        'quantity': 1,
        'timestamp' : '1614961405300',
        'username': 'testname',
        'purchasable': true
      });
      Stream<Either<ItemErrorFailure, KtList<Item>>> results = await mockWatchAllUserItems(instance, userId.getOrCrash());
      results.listen(
        expectAsync1(
              (event) {
            event.fold(
                    (l) => expect(1, 2),
                    (r) {
                  expect(r[0].delivery.getOrCrash(), 1.5);
                  expect(r[0].description.getOrCrash(), 'testerino');
                  expect(r[0].images.getOrCrash(), KtList<IndividualImages>.of(
                      IndividualImages(
                          id: UniqueId.fromUniqueString(imageId.getOrCrash()),
                          url: ItemImage('testurl.com'),
                          imageName: ItemImageName('randomName')
                      )
                  ));
                  expect(r[0].name.getOrCrash(), 'testerino');
                  expect(r[0].price.getOrCrash(), 2.50);
                  expect(r[0].purchasable.getOrCrash(), true);
                  expect(r[0].quantity.getOrCrash(), 1);
                  expect(r[0].timestamp, '1614961405300');
                }
            );
          },
        ),
      );
    });
    test('test retrieving data from database failed', () async {

      await instance.collection('users').doc(userId.getOrCrash()).collection('items').add({
        'delivery': 1.50,
        'description': 'testerino',
        'images' : [
          {
            'id': imageId.getOrCrash(),
            'imageName' : 'randomName',
            'url' : 'testurl.com',
          }
        ],
        'item_id': itemId.getOrCrash(),
        'name' : 'testerino',
        'price': 2.50,
        'profileImageUrl' : 'testerinonono',
        'quantity': 1,
        'timestamp' : '1614961405300',
        'username': 'testname',
      });
      Stream<Either<ItemErrorFailure, KtList<Item>>> results = await mockWatchAllUserItems(instance, userId.getOrCrash());
      results.listen(
        expectAsync1(
              (event) {
            event.fold(
                    (err) => expect(err, ItemErrorFailure.unexpected()),
                    (r) => expect(1, 2)
            );
          },
        ),
      );
    });
  });
}