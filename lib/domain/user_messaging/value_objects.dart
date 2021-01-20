import 'package:creatispace/domain/core/value_failures.dart';
import 'package:creatispace/domain/core/value_objects.dart';
import 'package:creatispace/domain/user_messaging/user_messages_validator.dart';
import 'package:dartz/dartz.dart';

class UserMessagingName extends ValueObject<String>{
  @override
  final Either<ValueFailure<String>, String> value;

  factory UserMessagingName(String input) {
    assert(input != null);
    return UserMessagingName._(validateUserMessagingName(input));
  }

  const UserMessagingName._(this.value);
}