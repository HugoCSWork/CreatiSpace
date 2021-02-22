import 'dart:io';

import 'package:creatispace/domain/core/value_objects.dart';
import 'package:creatispace/domain/items/item/item.dart';
import 'package:creatispace/domain/items/item_image/item_image.dart';
import 'package:creatispace/domain/items/value_objects.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:kt_dart/collection.dart';
import 'package:mime/mime.dart';

extension FirestorageX on FirebaseStorage {
  // For Uploading Files
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

  Future<String> uploadPaymentImage(
      String imageUrl, String imageName, String userDoc, String type) async {
    if (!imageUrl.startsWith('https://firebasestorage.googleapis.com')) {
      final uploadExtension =
          lookupMimeType(imageUrl).replaceAll('/', '.').replaceAll('image', '');

      final uploadName = '$imageName$uploadExtension';
      final imageReference = FirebaseStorage.instance
          .ref()
          .child('payment/$userDoc/$type');

      await imageReference.putFile(File(imageUrl));

      final downloadURL = await FirebaseStorage.instance
          .ref()
          .child('payment/$userDoc/$type')
          .getDownloadURL();

      return downloadURL;
    } else {
      return imageUrl;
    }
  }

  // For Deleting Files
  Future<void> deleteImagesFromCollection(
      {String userId, Item item, bool deleteAll = false}) async {
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
      for (final element in value.items) {
        final elementName = element.name;
        final pos = elementName.lastIndexOf('.');
        final result =
            (pos != -1) ? elementName.substring(0, pos) : elementName;
        if (!itemList.contains(result) || deleteAll == true) {
          FirebaseStorage.instance.ref().child(element.fullPath).delete();
        }
      }
    });
  }

  // upload image for messages
  Future<String> uploadImage(String uploadPath, String imageLocation) async {
    final imageReference = FirebaseStorage.instance.ref().child(uploadPath);

    await imageReference.putFile(File(imageLocation));
    return await FirebaseStorage.instance
        .ref()
        .child(uploadPath)
        .getDownloadURL();
  }
}
