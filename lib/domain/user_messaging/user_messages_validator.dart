
import 'package:creatispace/domain/core/value_failures.dart';
import 'package:creatispace/domain/user_messaging/user_list_value_failures/user_value_failures.dart';
import 'package:dartz/dartz.dart';

Either<ValueFailure<String>, String> validateUserMessagingName(String input) {
  if (input.length >= 1) {
    return right(input);
  } else {
    return left(
        ValueFailure.messaging(UserValueFailure.invalidName(failedValue: input)));
  }
}