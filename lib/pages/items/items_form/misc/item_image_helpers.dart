import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

Future<String> getImage() async {
    final pickedFile =
        await ImagePicker().getImage(source: ImageSource.gallery);
    return pickedFile.path;
  }

  Widget getImages(BuildContext context, String url) {
    return CachedNetworkImage(
      imageUrl: url,
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(6.0),
        ),
      ),
      placeholder: (context, url) => Center(
        child: Container(
            width: 30,
            height: 30,
            margin: const EdgeInsets.all(5),
            child: const CircularProgressIndicator()),
      ),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
