
import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import 'package:creatispace/domain/core/value_objects.dart';
import 'package:flutter_test/flutter_test.dart';

/// CANT MOCK EXTENSION METHODS SO HAVE TO RE-WRITE FUNCTION WITHOUT IT
/// IN FUTURE DO NOT USE EXTENSION METHODS UNLESS IT BECOMES POSSIBLE
/// Mocking one of the streams as all item streams have the same functionality
/// just different paths


void main() {
  MockFirestoreInstance instance;
  UniqueId userId ;
  UniqueId itemId;
  UniqueId imageId;
  setUp(() {
    instance = MockFirestoreInstance();
    userId = UniqueId();
    itemId = UniqueId();
    imageId = UniqueId();
  });
  group('Test add item to items collection', ()
  {
    test('adding item to database', () async {
      await instance.collection('users').doc(userId.getOrCrash()).collection(
          'items').add({
        'delivery': 1.50,
        'description': 'testerino',
        'images': [
          {
            'id': imageId.getOrCrash(),
            'imageName': 'randomName',
            'url': 'testurl.com',
          }
        ],
        'item_id': itemId.getOrCrash(),
        'name': 'testerino',
        'price': 2.50,
        'profileImageUrl': 'testerinonono',
        'quantity': 1,
        'timestamp': '1614961405300',
        'username': 'testname',
        'purchasable': true
      });

      final snapshot = await instance.collection('users').doc(
          userId.getOrCrash()).collection('items').get();
      print(snapshot.docs.length); // 1
      var document = snapshot.docs.first.data();
      expect(document["delivery"], 1.5);
      expect(document["description"], 'testerino');
      expect(document["name"], 'testerino');
      expect(document["price"], 2.50);
      expect(document["purchasable"], true);
      expect(document["quantity"], 1);
      expect(document["timestamp"], '1614961405300');
    });
  });
}