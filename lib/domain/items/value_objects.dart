import 'package:creatispace/domain/core/value_failures.dart';
import 'package:creatispace/domain/core/value_objects.dart';
import 'package:creatispace/domain/items/item_validators.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

class ItemName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ItemName(String input) {
    assert(input != null);
    return ItemName._(validateItemName(input));
  }

  const ItemName._(this.value);
}

class ItemDescription extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ItemDescription(String input) {
    assert(input != null);
    return ItemDescription._(validateItemDescription(input));
  }

  const ItemDescription._(this.value);

}

class ItemPrice extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory ItemPrice(double input) {
    assert(input != null);
    return ItemPrice._(validateItemPrice(input));
  }

  const ItemPrice._(this.value);

}

class ItemQuantity extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory ItemQuantity(int input) {
    assert(input != null);
    return ItemQuantity._(validateItemQuantity(input));
  }

  const ItemQuantity._(this.value);

}


class ItemDeliveryFee extends ValueObject<double> {
  @override
  final Either<ValueFailure<double>, double> value;

  factory ItemDeliveryFee(double input) {
    assert(input != null);
    return ItemDeliveryFee._(validateItemDeliveryFee(input));
  }

  const ItemDeliveryFee._(this.value);

}

class ItemPurchasable extends ValueObject<bool> {
  @override
  final Either<ValueFailure<bool>, bool> value;

  factory ItemPurchasable(bool input) {
    assert(input != null);
    return ItemPurchasable._(validateItemPurchasable(input));
  }

  const ItemPurchasable._(this.value);
  
}

class ItemImage extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ItemImage(String input) {
    assert(input != null);
    return ItemImage._(validateItemImage(input));
  }

  const ItemImage._(this.value);

}

class ItemImageName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 500;

  factory ItemImageName(String input) {
    assert(input != null);
    return ItemImageName._(
      validateItemImageName(input)
        .flatMap(validateSingleLine)
    );
  }

  const ItemImageName._(this.value);

}


class ItemImageList<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  static const maxLength = 3;

  factory ItemImageList(KtList<T> input) {
    assert(input != null);
    return ItemImageList._(
      validateCustomKtList(input, maxLength),
    );
  }

  const ItemImageList._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }

  bool get isFull {
    return length == maxLength;
  }
}

