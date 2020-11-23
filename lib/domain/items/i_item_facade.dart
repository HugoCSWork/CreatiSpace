import 'package:creatispace/domain/items/item/item.dart';
import 'package:creatispace/domain/items/item_error/item_error_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

abstract class IItemFacade {
  Stream<Either<ItemErrorFailure, KtList<Item>>> watchAllUserItems();
  Stream<Either<ItemErrorFailure, KtList<Item>>> watchUnpurchasable();
  Stream<Either<ItemErrorFailure, KtList<Item>>> watchPurchasable();
  Future<Either<ItemErrorFailure, Unit>> create(Item item);
  Future<Either<ItemErrorFailure, Unit>> update(Item item);
  Future<Either<ItemErrorFailure, Unit>> delete(Item item); 
}
