import 'package:creatispace/domain/items/value_objects.dart';
import 'package:test/test.dart';

void main() {
  group('ItemName', () {
    test('Invalid with characters less than 5', () {
      final ItemName itemName = ItemName('Val3');
      var errorType = itemName.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals('ValueFailure<String>.item(i: ItemValueFailure<String>.invalidName(failedValue: Val3))'));
      expect(itemName.isValid(), equals(false));
    });

    test('Invalid with characters greater than 30', () {
      final ItemName itemName = ItemName('testingtestingtestingtestingtesting');
      var errorType = itemName.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals('ValueFailure<String>.item(i: ItemValueFailure<String>.invalidName(failedValue: testingtestingtestingtestingtesting))'));
      expect(itemName.isValid(), equals(false));
    });

    test('Valid ItemName', () {
      final ItemName itemName = ItemName('Picasso Painting');
      var validType = itemName.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('Picasso Painting'));
      expect(itemName.isValid(), equals(true));
    });
  });

  group('ItemDescription', () {
    test('Invalid with characters less than 5', () {
      final ItemDescription itemName = ItemDescription('Val3');
      var errorType = itemName.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals('ValueFailure<String>.item(i: ItemValueFailure<String>.invalidDescription(failedValue: Val3))'));
      expect(itemName.isValid(), equals(false));
    });

    test('Invalid with characters greater than 100', () {
      final ItemDescription itemDescription = ItemDescription('testingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtesting');
      var errorType = itemDescription.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals('ValueFailure<String>.item(i: ItemValueFailure<String>.invalidDescription(failedValue: testingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtestingtesting))'));
      expect(itemDescription.isValid(), equals(false));
    });

    test('Valid ItemDescription', () {
      final ItemDescription itemDescription = ItemDescription('Picasso Painting from 1965');
      var validType = itemDescription.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('Picasso Painting from 1965'));
      expect(itemDescription.isValid(), equals(true));
    });
  });

  group('ItemPrice', () {
    test('Invalid with price less than 0', () {
      final ItemPrice itemPrice = ItemPrice(-1);
      var errorType = itemPrice.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals('ValueFailure<double>.item(i: ItemValueFailure<double>.invalidPrice(failedValue: -1.0))'));
      expect(itemPrice.isValid(), equals(false));
    });

    test('Invalid with price greater than 10000000', () {
      final ItemPrice itemPrice = ItemPrice(10000001);
      var errorType = itemPrice.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals('ValueFailure<double>.item(i: ItemValueFailure<double>.invalidPrice(failedValue: 10000001.0))'));
      expect(itemPrice.isValid(), equals(false));
    });


    test('Valid ItemPrice', () {
      final ItemPrice itemPrice = ItemPrice(5.55);
      var validType = itemPrice.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('5.55'));
      expect(itemPrice.isValid(), equals(true));
    });
  });

  group('ItemQuantity', () {
    test('Invalid with quantity less than 1', () {
      final ItemQuantity itemQuantity = ItemQuantity(0);
      var errorType = itemQuantity.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals('ValueFailure<int>.item(i: ItemValueFailure<int>.invalidQuantity(failedValue: 0))'));
      expect(itemQuantity.isValid(), equals(false));
    });

    test('Invalid with quantity greater than 100000', () {
      final ItemQuantity itemQuantity = ItemQuantity(100000);
      var errorType = itemQuantity.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals('ValueFailure<int>.item(i: ItemValueFailure<int>.invalidQuantity(failedValue: 100000))'));
      expect(itemQuantity.isValid(), equals(false));
    });

    test('Valid ItemQuantity', () {
      final ItemQuantity itemQuantity = ItemQuantity(5);
      var validType = itemQuantity.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('5'));
      expect(itemQuantity.isValid(), equals(true));
    });
  });

  group('ItemDeliveryFee', () {
    test('Invalid with delivery fee less than 0', () {
      final ItemDeliveryFee itemDelivery = ItemDeliveryFee(-1);
      var errorType = itemDelivery.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals('ValueFailure<double>.item(i: ItemValueFailure<double>.invalidDeliveryFee(failedValue: -1.0))'));
      expect(itemDelivery.isValid(), equals(false));
    });

    test('Invalid with delivery fee greater than 1000', () {
      final ItemDeliveryFee itemDelivery = ItemDeliveryFee(1000);
      var errorType = itemDelivery.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals('ValueFailure<double>.item(i: ItemValueFailure<double>.invalidDeliveryFee(failedValue: 1000.0))'));
      expect(itemDelivery.isValid(), equals(false));
    });

    test('Valid ItemDeliveryFee', () {
      final ItemDeliveryFee itemDelivery = ItemDeliveryFee(2.25);
      var validType = itemDelivery.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('2.25'));
      expect(itemDelivery.isValid(), equals(true));
    });
  });

  group('ItemImage', () {
    test('Invalid with string not containing JPG, JPEG or PNG', () {
      final ItemImage itemImage = ItemImage('test_image.test');
      var errorType = itemImage.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals('ValueFailure<String>.item(i: ItemValueFailure<String>.invalidImage(failedValue: test_image.test))'));
      expect(itemImage.isValid(), equals(false));
    });

    test('Valid Item Image', () {
      final ItemImage itemImage = ItemImage('test_image.JPEG');
      var validType = itemImage.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('test_image.JPEG'));
      expect(itemImage.isValid(), equals(true));
    });
  });

  group('ItemImageName', () {
    test('Invalid with no characters', () {
      final ItemImageName itemImageName = ItemImageName('');
      var errorType = itemImageName.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals('ValueFailure<String>.item(i: ItemValueFailure<String>.invalidImageName(failedValue: ))'));
      expect(itemImageName.isValid(), equals(false));
    });

    test('Invalid with characters greater than 50', () {
      final ItemImageName itemImageName = ItemImageName('FrontImageFrontImageFrontImageFrontImageFrontImageFrontImage');
      var errorType = itemImageName.value.fold((l) => l, (r) => r);
      expect(errorType.toString(), equals('ValueFailure<String>.item(i: ItemValueFailure<String>.invalidImageName(failedValue: FrontImageFrontImageFrontImageFrontImageFrontImageFrontImage))'));
      expect(itemImageName.isValid(), equals(false));
    });

    test('Valid Item Image Name', () {
      final ItemImageName itemImage = ItemImageName('Image of Picasso');
      var validType = itemImage.value.fold((l) => l, (r) => r);
      expect(validType.toString(), equals('Image of Picasso'));
      expect(itemImage.isValid(), equals(true));
    });
  });
}
