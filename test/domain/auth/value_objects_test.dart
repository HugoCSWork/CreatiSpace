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

  group('Email', () {
    test('Invalid email format', () {
      final EmailAddress password = EmailAddress('invalid@v!');
      expect(password.isValid(), equals(false));
    });
    test('Valid', () {
      final EmailAddress password = EmailAddress('Validemail@gmail.com');
      expect(password.isValid(), equals(true));
    });
  });
}
