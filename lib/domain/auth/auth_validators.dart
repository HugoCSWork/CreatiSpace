import 'package:creatispace/domain/auth/auth_value_failures/auth_value_failures.dart';
import 'package:creatispace/domain/core/value_failures.dart';
import 'package:creatispace/shared/profanity.dart';
import 'package:dartz/dartz.dart';
import 'package:profanity_filter/profanity_filter.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(
        ValueFailure.auth(AuthValueFailure.invalidEmail(failedValue: input)));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  /// Minimum of 8 Characters, 1 capital, 1 lower case and 1 special character
  const passwordRegex =
      r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$";
  if (RegExp(passwordRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.auth(
        AuthValueFailure.invalidPassword(failedValue: input)));
  }
}

Either<ValueFailure<String>, String> validateUsername(String input) {
  /// Minimum of 8 Characters, 1 capital, 1 lower case and 1 special character
  
  if (input.length >= 6 && input.length <= 15) {
    if (!ProfanityFilter().hasProfanity(input) && !isProfanity(input)) {
      return right(input);
    } else {
      return left(ValueFailure.auth(
          AuthValueFailure.offensiveUsername(failedValue: input)));
    }
  } else {
    return left(
        ValueFailure.auth(AuthValueFailure.shortUsername(failedValue: input)));
  }
}
