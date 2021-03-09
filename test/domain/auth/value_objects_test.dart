import 'package:creatispace/domain/auth/value_objects.dart';
import 'package:test/test.dart';

void main() {
  group('Password', () {
    test('Invalid without 1 capital letter', () {
      final Password password = Password('invalidpassword123!');
      var errorType = password.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals('ValueFailure<String>.auth(f: AuthValueFailure<String>.invalidPassword(failedValue: invalidpassword123!))'));
      expect(password.isValid(), equals(false));
    });

    test('Invalid without 1 number', () {
      final Password password = Password('Invalidpassword!');
      var errorType = password.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals('ValueFailure<String>.auth(f: AuthValueFailure<String>.invalidPassword(failedValue: Invalidpassword!))'));
      expect(password.isValid(), equals(false));
    });

    test('Invalid without 1 special character', () {
      final Password password = Password('Invalidpassword123');
      var errorType = password.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals('ValueFailure<String>.auth(f: AuthValueFailure<String>.invalidPassword(failedValue: Invalidpassword123))'));

      expect(password.isValid(), equals(false));
    });

    test('Invalid without 8 characters', () {
      final Password password = Password('Val3!');
      var errorType = password.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals('ValueFailure<String>.auth(f: AuthValueFailure<String>.invalidPassword(failedValue: Val3!))'));
      expect(password.isValid(), equals(false));
    });

    test('Valid Password', () {
      final Password password = Password('Validpassword123!');
      var validType = password.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('Validpassword123!'));
      expect(password.isValid(), equals(true));
    });
  });

  group('Username', () {
    test('Invalid with characters less than 8', () {
      final Username username = Username('Val3!');
      var errorType = username.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals('ValueFailure<String>.auth(f: AuthValueFailure<String>.shortUsername(failedValue: Val3!))'));
      expect(username.isValid(), equals(false));
    });

    test('Invalid with characters greater than 15', () {
      final Username username = Username('ValueGreaterThan15!');
      var errorType = username.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals('ValueFailure<String>.auth(f: AuthValueFailure<String>.shortUsername(failedValue: ValueGreaterThan15!))'));
      expect(username.isValid(), equals(false));
    });

    test('Invalid with profanity word', () {
      final Username username = Username('booooooobs');
      var errorType = username.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals('ValueFailure<String>.auth(f: AuthValueFailure<String>.offensiveUsername(failedValue: booooooobs))'));
      expect(username.isValid(), equals(false));
    });

    test('Valid Username', () {
      final Username username = Username('validUsername');
      var validType = username.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('validUsername'));
      expect(username.isValid(), equals(true));
    });

  });

  
}
