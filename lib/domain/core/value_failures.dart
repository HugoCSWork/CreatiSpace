import 'package:creatispace/domain/auth/auth_value_failures/auth_value_failures.dart';
import 'package:creatispace/domain/items/item_value_failures/item_value_failures.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.auth(AuthValueFailure<T> f) = _Auth<T>;

  const factory ValueFailure.item(ItemValueFailure<T> i) = _Item<T>;
}