
import 'package:creatispace/domain/core/value_failures.dart';
import 'package:creatispace/domain/items/item_image/item_image.dart';
import 'package:creatispace/domain/items/value_objects.dart';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'home_item.freezed.dart';

@freezed
abstract class HomeItem implements _$HomeItem {
  const factory HomeItem({
    @required String id,
    @required String timestamp,
    @required ItemName name,
    @required ItemDescription description,
    @required ItemPrice price,
    @required ItemDeliveryFee delivery,
    @required ItemQuantity quantity,
    @required ItemPurchasable purchasable,
    @required String username,
    @required String profileImageURL,
    @required ItemImageList<IndividualImages> images,
  }) = _HomeItem;

  const HomeItem._();

  factory HomeItem.empty() => HomeItem(
      id: '',
      timestamp: '',
      name: ItemName(''),
      description: ItemDescription(''),
      price: ItemPrice(0.00),
      delivery: ItemDeliveryFee(0.00),
      quantity: ItemQuantity(0),
      purchasable: ItemPurchasable(false),
      username: '',
      profileImageURL: '',
      images: ItemImageList(emptyList()));

  Option<ValueFailure<dynamic>> get failureOption {
    return description.failureOrUnit
        .andThen(price.failureOrUnit)
        .andThen(quantity.failureOrUnit)
        .andThen(delivery.failureOrUnit)
        .andThen(purchasable.failureOrUnit)
        .andThen(images.getOrCrash()
        .map((image) => image.failureOption)
        .filter((o) => o.isSome())
        .getOrElse(0, (_) => none())
        .fold(() => right(unit), (f) => left(f))
    ).fold((l) => some(l), (_) => none());
  }
}
