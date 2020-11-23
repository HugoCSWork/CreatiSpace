import 'package:creatispace/domain/core/value_failures.dart';
import 'package:creatispace/domain/items/item_value_failures/item_value_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

Either<ValueFailure<String>, String> validateItemName(String input) {
  if (input.length >= 5 && input.length <= 30) {
    return right(input);
  } else {
    return left(
        ValueFailure.item(ItemValueFailure.invalidName(failedValue: input)));
  }
}

Either<ValueFailure<String>, String> validateSingleLine(String input) {
  if (input.contains('\n')) {
    return left(ValueFailure.item(ItemValueFailure.multiline(failedValue: input)));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateItemDescription(String input) {
  if (input.length >= 5 && input.length <= 100) {
    return right(input);
  } else {
    return left(ValueFailure.item(
        ItemValueFailure.invalidDescription(failedValue: input)));
  }
}

Either<ValueFailure<double>, double> validateItemPrice(double input) {
  if (input >= 0 && input < 10000000) {
    return right(input);
  } else {
    return left(ValueFailure.item(
        ItemValueFailure.invalidPrice(failedValue: input)));
  }
}

Either<ValueFailure<int>, int> validateItemQuantity(int input) {
  if (input >= 0 && input < 100000) {
    return right(input);
  } else {
    return left(ValueFailure.item(
        ItemValueFailure.invalidQuantity(failedValue: input)));
  }
}

Either<ValueFailure<double>, double> validateItemDeliveryFee(double input) {
  if (input >= 0 && input < 1000) {
    return right(input);
  } else {
    return left(ValueFailure.item(
        ItemValueFailure.invalidDeliveryFee(failedValue: input)));
  }
}


Either<ValueFailure<bool>, bool> validateItemPurchasable(bool input) {
  if (input is bool) {
    return right(input);
  } else {
    return left(ValueFailure.item(
        ItemValueFailure.invalidPurchasable(failedValue: input)));
  }
}



Either<ValueFailure<String>, String> validateItemImage(String input) {
  final String image = input.toUpperCase();
  if (image.contains("JPG") || image.contains("JPEG") || image.contains("PNG")) {
    return right(input);
  } else {
    return left(ValueFailure.item(
        ItemValueFailure.invalidImage(failedValue: input)));
  }
}

Either<ValueFailure<String>, String> validateItemImageName(String input) {
  if (input.isNotEmpty && input.length <= 1000) {
    return right(input);
  } else {
    return left(ValueFailure.item(
        ItemValueFailure.invalidImageName(failedValue: input)));
  }
}


Either<ValueFailure<KtList<T>>, KtList<T>> validateCustomKtList<T>(
  KtList<T> input,
  int maxLength,
) {
  if (input.size <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.item(ItemValueFailure.invalidImageLength(
      failedValue: input,
      max: maxLength,
    )));
  }
}


