import 'package:creatispace/domain/items/value_objects.dart';
import 'package:creatispace/domain/profile/value_objects.dart';
import 'package:test/test.dart';

import '../../helpers/generator.dart';

void main() {
  group('Profile Name', () {
    test('Invalid with characters less than 6', () {
      final ProfileName profileName = ProfileName('test');
      var errorType = profileName.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<String>.profile(i: ProfileValueFailure<String>.invalidProfileName(failedValue: test))'));
      expect(profileName.isValid(), equals(false));
    });

    test('Invalid with characters greater than 15', () {
      final ProfileName profileName = ProfileName('testtesttesttesttesttesttesttest');
      var errorType = profileName.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<String>.profile(i: ProfileValueFailure<String>.invalidProfileName(failedValue: testtesttesttesttesttesttesttest))'));
      expect(profileName.isValid(), equals(false));
    });

    test('Valid Profile Name', () {
      final ProfileName profileName = ProfileName('Bob Ross');
      var validType = profileName.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('Bob Ross'));
      expect(profileName.isValid(), equals(true));
    });
  });

  group('Profile Description', () {
    test('Invalid with characters less than 5', () {
      final ProfileDescription profileDescription = ProfileDescription('test');
      var errorType = profileDescription.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<String>.profile(i: ProfileValueFailure<String>.invalidProfileDescription(failedValue: test))'));
      expect(profileDescription.isValid(), equals(false));
    });

    test('Invalid with characters greater than 150', () {
      final randomWord = createRandomString(151);
      final ProfileDescription profileDescription = ProfileDescription(randomWord);
      var errorType = profileDescription.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<String>.profile(i: ProfileValueFailure<String>.invalidProfileDescription(failedValue: $randomWord))'));
      expect(profileDescription.isValid(), equals(false));
    });

    test('Valid Profile Description', () {
      final ProfileDescription profileDescription = ProfileDescription('Selling Wooden Clothing');
      var validType = profileDescription.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('Selling Wooden Clothing'));
      expect(profileDescription.isValid(), equals(true));
    });
  });

  group('Profile following', () {
    test('Invalid with less than 0', () {
      final ProfileFollowing profileFollowing = ProfileFollowing(-1);
      var errorType = profileFollowing.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<int>.profile(i: ProfileValueFailure<int>.invalidProfileFollowing(failedValue: -1))'));
      expect(profileFollowing.isValid(), equals(false));
    });

    test('Valid Profile Following', () {
      final ProfileFollowing profileFollowing = ProfileFollowing(5);
      var validType = profileFollowing.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('5'));
      expect(profileFollowing.isValid(), equals(true));
    });
  });

  group('Profile Followers', () {
    test('Invalid with less than 0', () {
      final ProfileFollowers profileFollowers = ProfileFollowers(-1);
      var errorType = profileFollowers.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<int>.profile(i: ProfileValueFailure<int>.invalidProfileFollowers(failedValue: -1))'));
      expect(profileFollowers.isValid(), equals(false));
    });

    test('Valid Profile Followers', () {
      final ProfileFollowers profileFollowers = ProfileFollowers(5);
      var validType = profileFollowers.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('5'));
      expect(profileFollowers.isValid(), equals(true));
    });
  });

  group('Profile Background Image', () {
    test('Invalid with no characters', () {
      final ProfileBackgroundImageURL backgroundImageURL = ProfileBackgroundImageURL('');
      var errorType = backgroundImageURL.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<String>.profile(i: ProfileValueFailure<String>.invalidBackgroundImageUrl(failedValue: ))'));
      expect(backgroundImageURL.isValid(), equals(false));
    });

    test('Valid Background Image Url', () {
      final ProfileBackgroundImageURL backgroundImageURL = ProfileBackgroundImageURL('test.url');
      var validType = backgroundImageURL.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('test.url'));
      expect(backgroundImageURL.isValid(), equals(true));
    });
  });

  group('Profile Image', () {
    test('Invalid with no characters', () {
      final ProfileImageURL profileImageURL = ProfileImageURL('');
      var errorType = profileImageURL.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<String>.profile(i: ProfileValueFailure<String>.invalidProfileImageUrl(failedValue: ))'));
      expect(profileImageURL.isValid(), equals(false));
    });

    test('Valid Background Image Url', () {
      final ProfileImageURL profileImageURL = ProfileImageURL('test.url');
      var validType = profileImageURL.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('test.url'));
      expect(profileImageURL.isValid(), equals(true));
    });
  });
}