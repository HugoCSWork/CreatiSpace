import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:creatispace/domain/items/i_item_facade.dart';
import 'package:creatispace/domain/items/item/item.dart';
import 'package:creatispace/domain/items/item_error/item_error_failures.dart';
import 'package:creatispace/domain/items/value_objects.dart';
import 'package:creatispace/infrastructure/core/firestore_helpers.dart';
import 'package:creatispace/infrastructure/core/firebase_storage_helpers.dart';
import 'package:creatispace/infrastructure/items/item_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IItemFacade)
class ItemRepository implements IItemFacade {
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseStorage _firebaseStorage;

  ItemRepository(this._firebaseFirestore, this._firebaseStorage);

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

      await userDoc.itemCollection.doc(itemDto.id).set(itemDto.toJson());

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
}
