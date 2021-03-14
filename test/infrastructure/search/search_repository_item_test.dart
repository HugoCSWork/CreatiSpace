import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import 'package:creatispace/domain/core/value_objects.dart';
import 'package:creatispace/domain/items/home_item/home_item.dart';
import 'package:creatispace/domain/items/item_error/item_error_failures.dart';
import 'package:creatispace/domain/items/item_image/item_image.dart';
import 'package:creatispace/domain/items/value_objects.dart';
import 'package:creatispace/infrastructure/items/home_item_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:rxdart/rxdart.dart';

Stream<Either<ItemErrorFailure, KtList<HomeItem>>> mockSearchForItems(MockFirestoreInstance instance, String userId, String search) async* {
  yield* instance.collection('posts')
      .snapshots()
      .map(
        (snapshot) =>
        snapshot.docs.map((doc) => HomeItemDto.fromFirestore(doc).toDomain()),
  )
      .map(
        (item) => right<ItemErrorFailure, KtList<HomeItem>>(
        item
            .where((item) => item.name.getOrCrash().toLowerCase().contains(search.toLowerCase()) || item.description.getOrCrash().toLowerCase().contains(search.toLowerCase()))
            .where((item) => item.id != userId)
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
  UniqueId userId ;
  UniqueId itemId;
  UniqueId imageId;
  setUp(() {
    instance = MockFirestoreInstance();
    userId = UniqueId();
    itemId = UniqueId();
    imageId = UniqueId();
  });
  group('Test search repository for items', () {
    test('Search for item successfully', () async {
      await instance.collection('posts').add({
        'delivery': 1.50,
        'description': 'testerino',
        'images' : [
          {
            'id': imageId.getOrCrash(),
            'imageName' : 'randomName',
            'url' : 'testurl.com',
          }
        ],
        'id' : userId.getOrCrash(),
        'item_id': itemId.getOrCrash(),
        'name' : 'testerino',
        'price': 2.50,
        'profileImageURL' : 'testerinonono',
        'quantity': 1,
        'timestamp' : '1614961405300',
        'username': 'testname',
        'purchasable': true
      });
      Stream<Either<ItemErrorFailure, KtList<HomeItem>>> results = await mockSearchForItems(instance, 'dasdasdsdasd', 'testerino');
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
    test('Search for item returns empty if id is the same', () async {
      await instance.collection('posts').add({
        'delivery': 1.50,
        'description': 'testerino',
        'images' : [
          {
            'id': imageId.getOrCrash(),
            'imageName' : 'randomName',
            'url' : 'testurl.com',
          }
        ],
        'id' : userId.getOrCrash(),
        'item_id': itemId.getOrCrash(),
        'name' : 'testerino',
        'price': 2.50,
        'profileImageURL' : 'testerinonono',
        'quantity': 1,
        'timestamp' : '1614961405300',
        'username': 'testname',
        'purchasable': true
      });
      Stream<Either<ItemErrorFailure, KtList<HomeItem>>> results = await mockSearchForItems(instance, userId.getOrCrash(), 'testerino');
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

    test('Search for item fails if item is broken', () async {
      await instance.collection('posts').add({
        'delivery': 1.50,
        'images' : [
          {
            'id': imageId.getOrCrash(),
            'imageName' : 'randomName',
            'url' : 'testurl.com',
          }
        ],
        'id' : userId.getOrCrash(),
        'item_id': itemId.getOrCrash(),
        'name' : 'testerino',
        'price': 2.50,
        'profileImageURL' : 'testerinonono',
        'quantity': 1,
        'timestamp' : '1614961405300',
        'username': 'testname',
        'purchasable': true
      });
      Stream<Either<ItemErrorFailure, KtList<HomeItem>>> results = await mockSearchForItems(instance, userId.getOrCrash(), 'testerino');
      results.listen(
        expectAsync1(
              (event) {
            event.fold(
                    (err) => expect(err, ItemErrorFailure.unexpected()),
                    (r) {
                      expect(1, 2);
                }
            );
          },
        ),
      );
    });

  });
}