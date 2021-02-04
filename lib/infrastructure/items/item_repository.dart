import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:creatispace/domain/items/home_item/home_item.dart';
import 'package:creatispace/domain/items/i_item_facade.dart';
import 'package:creatispace/domain/items/item/item.dart';
import 'package:creatispace/domain/items/item_error/item_error_failures.dart';
import 'package:creatispace/domain/items/value_objects.dart';
import 'package:creatispace/infrastructure/core/firestore_helpers.dart';
import 'package:creatispace/infrastructure/core/firebase_storage_helpers.dart';
import 'package:creatispace/infrastructure/items/home_item_dtos.dart';
import 'package:creatispace/infrastructure/items/item_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IItemFacade)
class ItemRepository implements IItemFacade {
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseStorage _firebaseStorage;
  final FirebaseAuth _firebaseAuth;

  ItemRepository(this._firebaseFirestore, this._firebaseStorage, this._firebaseAuth);

  @override
  Stream<Either<ItemErrorFailure, KtList<Item>>> watchAllUserItems() async* {
    final userDoc = await _firebaseFirestore.userDocument();
    yield* userDoc.itemCollection
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

  @override
  Stream<Either<ItemErrorFailure, KtList<Item>>> watchUnpurchasable() async* {
    final userDoc = await _firebaseFirestore.userDocument();
    yield* userDoc.itemCollection
        .snapshots()
        .map(
          (snapshot) =>
              snapshot.docs.map((doc) => ItemDto.fromFirestore(doc).toDomain()),
        )
        .map(
          (item) => right<ItemErrorFailure, KtList<Item>>(
            item
                .where((item) => item.purchasable.getOrCrash() == false)
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const ItemErrorFailure.insufficientPermissions());
      } else {
        return left(const ItemErrorFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<ItemErrorFailure, KtList<Item>>> watchPurchasable() async* {
    final userDoc = await _firebaseFirestore.userDocument();
    yield* userDoc.itemCollection
        .snapshots()
        .map(
          (snapshot) =>
              snapshot.docs.map((doc) => ItemDto.fromFirestore(doc).toDomain()),
        )
        .map(
          (item) => right<ItemErrorFailure, KtList<Item>>(
            item
                .where((item) => item.purchasable.getOrCrash() == true)
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const ItemErrorFailure.insufficientPermissions());
      } else {
        // log.error(e.toString());
        return left(const ItemErrorFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<ItemErrorFailure, Unit>> create(Item item) async {
    try {
      final userDoc = await _firebaseFirestore.userDocument();
      final String username = await _firebaseFirestore.userDocumentName(await _firebaseAuth.currentUser.uid);
      final String profileImageURL = await _firebaseFirestore.userDocumentProfileImage(await _firebaseAuth.currentUser.uid);
      final timestamp = DateTime.now().millisecondsSinceEpoch.toString();

      final updatedImages =
          await _firebaseStorage.updateImages(item, userDoc.id);
      final Item newItem = Item(
          id: item.id,
          description: item.description,
          price: item.price,
          quantity: item.quantity,
          delivery: item.delivery,
          purchasable: item.purchasable,
          name: item.name,
          images: ItemImageList(updatedImages));

      final HomeItem newHomeItem = HomeItem(
          id: item.id.getOrCrash(),
          description: item.description,
          price: item.price,
          quantity: item.quantity,
          delivery: item.delivery,
          purchasable: item.purchasable,
          name: item.name,
          images: ItemImageList(updatedImages),
          profileImageURL: profileImageURL,
          username: username
    );

      final itemDto = ItemDto.fromDomain(newItem);
      final homeItemDto = HomeItemDto.fromDomain(newHomeItem);

      // document to their collection
      await userDoc.itemCollection.doc(itemDto.id).set(itemDto.toJson());
      // document to posts collection
      await _firebaseFirestore.collection('posts').doc(timestamp).set(homeItemDto.toJson());
      // document to all followers collections
      var data = await userDoc.collection('followers').get();
      var dataFromFirebase = await data.docs.map((e) => e.id);
      var batch = _firebaseFirestore.batch();
      await dataFromFirebase.forEach((element) {
        var docRef = _firebaseFirestore
            .collection('users')
            .doc(element)
            .collection('home')
            .doc(timestamp);
        batch.set(docRef, homeItemDto.toJson());
      });
      batch.commit();

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ItemErrorFailure.insufficientPermissions());
      } else {
        return left(const ItemErrorFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ItemErrorFailure, Unit>> update(Item item) async {
    try {
      final userDoc = await _firebaseFirestore.userDocument();

      await _firebaseStorage.deleteImagesFromCollection(userId: userDoc.id, item: item);

      final updatedImages =
          await _firebaseStorage.updateImages(item, userDoc.id);

      final Item newItem = Item(
          id: item.id,
          description: item.description,
          price: item.price,
          quantity: item.quantity,
          delivery: item.delivery,
          purchasable: item.purchasable,
          name: item.name,
          images: ItemImageList(updatedImages));

      final itemDto = ItemDto.fromDomain(newItem);

      await userDoc.itemCollection.doc(itemDto.id).update(itemDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ItemErrorFailure.insufficientPermissions());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const ItemErrorFailure.notFound());
      } else {
        return left(const ItemErrorFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<ItemErrorFailure, Unit>> delete(Item item) async {
    try {
      final userDoc = await _firebaseFirestore.userDocument();
      final itemId = item.id.getOrCrash();

      await _firebaseStorage.deleteImagesFromCollection(userId: userDoc.id, item: item, deleteAll: true);
      await userDoc.itemCollection.doc(itemId).delete();

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ItemErrorFailure.insufficientPermissions());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const ItemErrorFailure.notFound());
      } else {
        return left(const ItemErrorFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<ItemErrorFailure, KtList<HomeItem>>> watchAllUserHomeItems() async* {
    final userDoc = await _firebaseFirestore.userDocument();
    yield* userDoc.homeItemCollection
        .snapshots()
        .map(
          (snapshot) => right<ItemErrorFailure, KtList<HomeItem>>(
            snapshot.docs
                .map((doc) => HomeItemDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
         )
        .onErrorReturnWith((e) {
          if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
            return left(const ItemErrorFailure.insufficientPermissions());
          } else {
            // log.error(e.toString());
            return left(const ItemErrorFailure.unexpected());
          }
        });
  }
}
