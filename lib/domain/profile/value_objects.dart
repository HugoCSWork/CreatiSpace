import 'package:creatispace/domain/core/value_failures.dart';
import 'package:creatispace/domain/core/value_objects.dart';
import 'package:creatispace/domain/profile/profile_validators.dart';
import 'package:dartz/dartz.dart';

class ProfileName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ProfileName(String input) {
    assert(input != null);
    return ProfileName._(validateProfileName(input));
  }

  const ProfileName._(this.value);
}

class ProfileDescription extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ProfileDescription(String input) {
    assert(input != null);
    return ProfileDescription._(validateProfileDescription(input));
  }

  const ProfileDescription._(this.value);
}

class ProfileFollowing extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory ProfileFollowing(int input) {
    assert(input != null);
    return ProfileFollowing._(validateProfileFollowing(input));
  }

  const ProfileFollowing._(this.value);
}

class ProfileFollowers extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory ProfileFollowers(int input) {
    assert(input != null);
    return ProfileFollowers._(validateProfileFollowers(input));
  }

  const ProfileFollowers._(this.value);
}

class ProfileImageURL extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ProfileImageURL(String input) {
    assert(input != null);
    return ProfileImageURL._(validateProfileImageUrl(input));
  }

  const ProfileImageURL._(this.value);
}

class ProfileBackgroundImageURL extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ProfileBackgroundImageURL(String input) {
    assert(input != null);
    return ProfileBackgroundImageURL._(validateBackgroundImageUrl(input));
  }

  const ProfileBackgroundImageURL._(this.value);
}
