import 'package:creatispace/domain/core/value_failures.dart';
import 'package:creatispace/domain/profile/profile_value_failures/profile_value_failures.dart';
import 'package:dartz/dartz.dart';

Either<ValueFailure<String>, String> validateProfileName(String input) {
  if (input.length >= 6 && input.length <= 15) {
    return right(input);
  } else {
    return left(
        ValueFailure.profile(ProfileValueFailure.invalidProfileName(failedValue: input)));
  }
}

Either<ValueFailure<String>, String> validateProfileDescription(String input) {
  if (input.length >= 5 && input.length <= 150) {
    return right(input);
  } else {
    return left(
        ValueFailure.profile(ProfileValueFailure.invalidProfileDescription(failedValue: input)));
  }
}


Either<ValueFailure<int>, int> validateProfileFollowing(int input) {
  if (input >= 0) {
    return right(input);
  } else {
    return left(
        ValueFailure.profile(ProfileValueFailure.invalidProfileFollowing(failedValue: input)));
  }
}

Either<ValueFailure<int>, int> validateProfileFollowers(int input) {
  if (input >= 0) {
    return right(input);
  } else {
    return left(
        ValueFailure.profile(ProfileValueFailure.invalidProfileFollowers(failedValue: input)));
  }
}

Either<ValueFailure<String>, String> validateBackgroundImageUrl(String input) {
  if (input.length > 0) {
    return right(input);
  } else {
    return left(
        ValueFailure.profile(ProfileValueFailure.invalidBackgroundImageUrl(failedValue: input)));
  }
}

Either<ValueFailure<String>, String> validateProfileImageUrl(String input) {
  if (input.length > 0) {
    return right(input);
  } else {
    return left(
        ValueFailure.profile(ProfileValueFailure.invalidProfileImageUrl(failedValue: input)));
  }
}