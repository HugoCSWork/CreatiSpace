
import 'dart:io';

import 'package:creatispace/domain/items/item/item.dart';
import 'package:creatispace/domain/items/item_image/item_image.dart';
import 'package:creatispace/domain/items/value_objects.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:kt_dart/collection.dart';
import 'package:mime/mime.dart';

extension FirestorageX on FirebaseStorage {
  Future<KtList<IndividualImages>> updateImages(
      Item item, String userDoc) async {
    final imageList = item.images.getOrCrash();
    final itemId = item.id.getOrCrash();
    final List<IndividualImages> updatedImages = [];

    for (var i = 0; i < imageList.size; i++) {
      final imageURL = imageList[i].url.getOrCrash();
      final imageName = imageList[i].imageName.getOrCrash();
      if (!imageURL.startsWith('https://firebasestorage.googleapis.com')) {
        final uploadExtension = lookupMimeType(imageURL)
            .replaceAll('/', '.')
            .replaceAll('image', '');

        final uploadName = '$imageName$uploadExtension';
        final imageReference = FirebaseStorage.instance
            .ref()
            .child('user_posts/$userDoc/$itemId/$uploadName');

        await imageReference.putFile(File(imageURL));

        final downloadURL = await FirebaseStorage.instance
            .ref()
            .child('user_posts/$userDoc/$itemId/$uploadName')
            .getDownloadURL();

        updatedImages.add(IndividualImages(
            id: imageList[i].id,
            url: ItemImage(downloadURL),
            imageName: imageList[i].imageName));
      } else {
        updatedImages.add(IndividualImages(
            id: imageList[i].id,
            url: imageList[i].url,
            imageName: imageList[i].imageName));
      }
    }
    return KtList.from(updatedImages);
  }

  Future<void> deleteImagesFromCollection({String userId, Item item, bool deleteAll = false}) async {
    final itemId = item.id.getOrCrash();
    final imageList = item.images.getOrCrash();
    final itemList = [];
    for (var i = 0; i < imageList.size; i++) {
      itemList.add(imageList[i].imageName.getOrCrash());
    }

    await FirebaseStorage.instance
        .ref()
        .child('user_posts/$userId/$itemId')
        .listAll()
        .then((value) {
      value.items.forEach((element) {
        final elementName = element.name;
        final pos = elementName.lastIndexOf('.');
        final result =
            (pos != -1) ? elementName.substring(0, pos) : elementName;
        if (!itemList.contains(result) || deleteAll == true) {
          FirebaseStorage.instance.ref().child(element.fullPath).delete();
        }
      });
    });
  }
}