

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:creatispace/pages/routes/router.gr.dart';
import 'package:flutter/material.dart';

Widget homePostImageIcon({ String url }) {
  return CircularProfileAvatar('',
      radius: 15,
      child: CachedNetworkImage(
        imageUrl: url,
        fit: BoxFit.fill,
        placeholder: (context, url) => Center(
          child: Container(
              width: 30,
              height: 30,
              margin: const EdgeInsets.all(1),
              child: Container()
          ),
        ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      )
  );
}

Widget homePostUsername({  BuildContext context, String username, String id}) {
  return GestureDetector(
    child: Text(username),
    onTap: (){
      ExtendedNavigator.of(context).push(Routes.peerProfileScaffold, arguments: PeerProfileScaffoldArguments(
          id: id
      ));
    },
  );
}

Widget homePostItemName({ String name }) {
  return Container(
      padding: EdgeInsets.fromLTRB(10, 8, 0, 5),
      alignment: Alignment.centerLeft,
      child: Text(
        name,
        style: TextStyle(
            fontSize: 20
        ),
      )
  );
}

Widget homePostItemDescription({ String description }) {
  return Container(
    padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
    alignment: Alignment.centerLeft,
    child: Text(description),
  );
}

Widget homePostIsPurchasable({bool isPurchasable, double price}) {
  String getTextValue() {
    if (isPurchasable)
      return '£${price.toStringAsFixed(2)}';
    else
      return 'Non-Purchasable';
  }
  return Padding(
    padding: const EdgeInsets.only(right: 10.0),
    child: Text(
      getTextValue(),
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16
      ),
    ),
  );
}