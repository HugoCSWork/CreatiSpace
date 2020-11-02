import 'package:creatispace/domain/auth/value_objects.dart';
import 'package:test/test.dart';

void main() {
  group('Password', () {
    test('Invalid without 1 capital letter', () {
      final Password password = Password('invalidpassword123!');
      expect(password.isValid(), equals(false));
    });

    test('Invalid without 1 number', () {
      final Password password = Password('Invalidpassword!');
      expect(password.isValid(), equals(false));
    });

    test('Invalid without 1 special character', () {
      final Password password = Password('Invalidpassword123');
      expect(password.isValid(), equals(false));
    });

    test('Invalid without 8 characters', () {
      final Password password = Password('Val3!');
      expect(password.isValid(), equals(false));
    });

    test('Valid', () {
      final Password password = Password('Validpassword123!');
      expect(password.isValid(), equals(true));
    });
  });

  group('Username', () {
    test('Invalid with characters less than 8', () {
      final Username username = Username('Val3!');
      expect(username.isValid(), equals(false));
    });

    test('Invalid with characters greater than 15', () {
      final Username username = Username('ValueGreaterThan15!');
      expect(username.isValid(), equals(false));
    });

    test('Invalid with profanity word', () {
      final Username username = Username('booooooobs');
      expect(username.isValid(), equals(false));
    });

    test('Valid', () {
      final Username username = Username('validUsername');
      expect(username.isValid(), equals(true));
    });

  });

  
}
