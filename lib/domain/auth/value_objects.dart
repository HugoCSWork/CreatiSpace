import 'package:creatispace/domain/auth/auth_validators.dart';
import 'package:creatispace/domain/core/value_failures.dart';
import 'package:creatispace/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';

class EmailAddress extends ValueObject<String>{
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(validateEmailAddress(input));
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String>{
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);
    return Password._(validatePassword(input));
  }

  const Password._(this.value);
}


class Username extends ValueObject<String>{
  @override
  final Either<ValueFailure<String>, String> value;

  factory Username(String input) {
    assert(input != null);
    return Username._(validateUsername(input));
  }

  const Username._(this.value);
}