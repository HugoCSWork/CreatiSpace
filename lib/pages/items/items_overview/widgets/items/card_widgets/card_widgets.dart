

import 'package:cached_network_image/cached_network_image.dart';
import 'package:creatispace/domain/items/value_objects.dart';
import 'package:flutter/material.dart';


Widget getItemCardImage(BuildContext context, ItemImage imageName) {
  return CachedNetworkImage(
    imageUrl: imageName.value.fold((l) => 'ERROR', (r) => r),
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

Widget itemCardName({ String name }) {
  return Text(
   name,
    style: const TextStyle(
      color: Colors.black,
      fontSize: 14.0,
      fontWeight: FontWeight.bold,
    ),
    overflow: TextOverflow.ellipsis,
  );
}

Widget itemCardDescription({ BuildContext context, String description }) {
  return SizedBox(
    width: MediaQuery.of(context).size.width / 1.5,
    child: Text(
      description,
      style: const TextStyle(
        color: Color(0xFFBBCCCC),
        fontSize: 15.0,
      ),
    ),
  );
}

Widget itemCardPrice({double price}) {
  return Text(
    price == 0 ? 'Non Purchasable' : '£${price.toStringAsFixed(2)}',
    style: TextStyle(
      color: Colors.black,
      fontSize: 14.0,
      fontWeight: FontWeight.bold,
    ),
  );
}
