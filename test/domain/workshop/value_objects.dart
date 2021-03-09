import 'package:creatispace/domain/workshop/value_objects.dart';
import 'package:test/test.dart';

import '../../helpers/generator.dart';

void main() {
  group('WorkshopName', () {
    test('Invalid with characters less than 5', () {
      final WorkshopName workshopName = WorkshopName('Val3');
      var errorType = workshopName.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<String>.workshop(i: WorkshopValueFailure<String>.invalidWorkshopName(failedValue: Val3))'));
      expect(workshopName.isValid(), equals(false));
    });

    test('Invalid with characters greater than 30', () {
      final randomWord = createRandomString(31);

      final WorkshopName workshopName = WorkshopName(randomWord);
      var errorType = workshopName.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<String>.workshop(i: WorkshopValueFailure<String>.invalidWorkshopName(failedValue: $randomWord))'));
      expect(workshopName.isValid(), equals(false));
    });

    test('Valid WorkshopName', () {
      final WorkshopName workshopName = WorkshopName('Picasso Painting');
      var validType = workshopName.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('Picasso Painting'));
      expect(workshopName.isValid(), equals(true));
    });
  });

  group('WorkshopDescription', () {
    test('Invalid with characters less than 5', () {
      final WorkshopDescription workshopDescription = WorkshopDescription('Val3');
      var errorType = workshopDescription.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<String>.workshop(i: WorkshopValueFailure<String>.invalidWorkshopDescription(failedValue: Val3))'));
      expect(workshopDescription.isValid(), equals(false));
    });

    test('Invalid with characters greater than 100', () {
      final randomWord = createRandomString(101);

      final WorkshopDescription workshopDescription = WorkshopDescription(randomWord);
      var errorType = workshopDescription.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<String>.workshop(i: WorkshopValueFailure<String>.invalidWorkshopDescription(failedValue: $randomWord))'));
      expect(workshopDescription.isValid(), equals(false));
    });

    test('Valid WorkshopDescription', () {
      final WorkshopDescription workshopDescription = WorkshopDescription('Picasso Painting');
      var validType = workshopDescription.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('Picasso Painting'));
      expect(workshopDescription.isValid(), equals(true));
    });
  });

  group('WorkshopRequirements', () {
    test('Invalid with characters less than 5', () {
      final WorkshopRequirements workshopRequirements = WorkshopRequirements('Val3');
      var errorType = workshopRequirements.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<String>.workshop(i: WorkshopValueFailure<String>.invalidWorkshopRequirements(failedValue: Val3))'));
      expect(workshopRequirements.isValid(), equals(false));
    });

    test('Invalid with characters greater than 100', () {
      final randomWord = createRandomString(101);

      final WorkshopRequirements workshopRequirements = WorkshopRequirements(randomWord);
      var errorType = workshopRequirements.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<String>.workshop(i: WorkshopValueFailure<String>.invalidWorkshopRequirements(failedValue: $randomWord))'));
      expect(workshopRequirements.isValid(), equals(false));
    });

    test('Valid WorkshopRequirements', () {
      final WorkshopRequirements workshopRequirements = WorkshopRequirements('Picasso Painting');
      var validType = workshopRequirements.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('Picasso Painting'));
      expect(workshopRequirements.isValid(), equals(true));
    });
  });

  group('WorkshopPrice', () {
    test('Invalid with price less than 0', () {
      final WorkshopPrice workshopPrice = WorkshopPrice(-1);
      var errorType = workshopPrice.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals('ValueFailure<double>.workshop(i: WorkshopValueFailure<double>.invalidWorkshopPrice(failedValue: -1.0))'));
      expect(workshopPrice.isValid(), equals(false));
    });

    test('Invalid with price greater than than 10000000', () {
      final WorkshopPrice workshopPrice = WorkshopPrice(10000001);
      var errorType = workshopPrice.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals('ValueFailure<double>.workshop(i: WorkshopValueFailure<double>.invalidWorkshopPrice(failedValue: 10000001.0))'));
      expect(workshopPrice.isValid(), equals(false));
    });

    test('Valid WorkshopPrice', () {
      final WorkshopPrice workshopPrice = WorkshopPrice(5.55);
      var validType = workshopPrice.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('5.55'));
      expect(workshopPrice.isValid(), equals(true));
    });
  });

  group('WorkshopDuration', () {
    test('Invalid if duration is not [0, 30, 60, 90, 120]', () {
      final WorkshopDuration workshopDuration = WorkshopDuration(15);
      var errorType = workshopDuration.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals('ValueFailure<double>.workshop(i: WorkshopValueFailure<double>.invalidWorkshopDuration(failedValue: 15.0))'));
      expect(workshopDuration.isValid(), equals(false));
    });

    test('Valid WorkshopDuration', () {
      final WorkshopDuration workshopDuration = WorkshopDuration(30);
      var validType = workshopDuration.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('30.0'));
      expect(workshopDuration.isValid(), equals(true));
    });
  });

  group('Workshop Date', () {
    test('Invalid if empty', () {
      final WorkshopDate workshopTime = WorkshopDate('');
      var errorType = workshopTime.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<String>.workshop(i: WorkshopValueFailure<String>.invalidWorkshopDate(failedValue: ))'));
      expect(workshopTime.isValid(), equals(false));
    });

    test('Invalid Date if before today', () {

      final WorkshopDate date = WorkshopDate('2020-02-12');
      var errorType = date.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<String>.workshop(i: WorkshopValueFailure<String>.invalidWorkshopDate(failedValue: 2020-02-12))'));
      expect(date.isValid(), equals(false));
    });

    test('Valid Workshop Date', () {
      DateTime currentDate = DateTime.now();
      String testDate = '${currentDate.year + 1}-01-01';

      final WorkshopDate date = WorkshopDate(testDate.toString());
      var validType = date.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('${currentDate.year + 1}-01-01'));
      expect(date.isValid(), equals(true));
    });
  });

  group('WorkshopTime', () {
    test('Invalid if empty', () {
      final WorkshopTime workshopTime = WorkshopTime('');
      var errorType = workshopTime.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals(
          'ValueFailure<String>.workshop(i: WorkshopValueFailure<String>.invalidWorkshopTime(failedValue: ))'));
      expect(workshopTime.isValid(), equals(false));
    });

    test('Valid WorkshopTime', () {
      final WorkshopTime workshopTime = WorkshopTime('14:45');
      var validType = workshopTime.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('14:45'));
      expect(workshopTime.isValid(), equals(true));
    });
  });

}