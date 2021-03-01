import 'package:creatispace/domain/auth/auth_value_failures/auth_value_failures.dart';
import 'package:creatispace/domain/items/item_value_failures/item_value_failures.dart';
import 'package:creatispace/domain/payment_form/payment_form_validation_errors/payment_form_value_failures.dart';
import 'package:creatispace/domain/payment_setup/payment_setup_value_failures/payment_setup_value_failures.dart';
import 'package:creatispace/domain/profile/profile_value_failures/profile_value_failures.dart';
import 'package:creatispace/domain/user_messaging/user_list_value_failures/user_value_failures.dart';
import 'package:creatispace/domain/workshop/workshop_value_failures/workshop_value_failures.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.auth(AuthValueFailure<T> f) = _Auth<T>;

  const factory ValueFailure.paymentSetup(PaymentSetupValueFailures<T> f) = _PaymentSetup<T>;

  const factory ValueFailure.paymentForm(PaymentFormValueFailure<T> f) = _PaymentForm<T>;

  const factory ValueFailure.item(ItemValueFailure<T> i) = _Item<T>;

  const factory ValueFailure.workshop(WorkshopValueFailure<T> i) = _Workshop<T>;

  const factory ValueFailure.messaging(UserValueFailure<T> i) = _UserMessaging<T>;

  const factory ValueFailure.profile(ProfileValueFailure<T> i) = _Profile<T>;
}
