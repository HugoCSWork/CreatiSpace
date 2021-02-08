import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:creatispace/app/profile/profile_form/profile_form_bloc.dart';
import 'package:creatispace/pages/items/items_form/misc/item_image_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BackgroundImage extends StatefulWidget {
  final String backgroundImageUrl;

  BackgroundImage(this.backgroundImageUrl);

  @override
  _BackgroundImageState createState() => _BackgroundImageState();
}

class _BackgroundImageState extends State<BackgroundImage> {
  String backgroundImage;

  @override
  Widget build(BuildContext context) {
    Widget displayImage() {
      if(backgroundImage == null) {
        return CachedNetworkImage(
          imageUrl: widget.backgroundImageUrl,
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          height: 200,
          placeholder: (context, url) => Center(
            child: Container(
                width: 30,
                height: 30,
                margin: const EdgeInsets.all(5),
                child: const CircularProgressIndicator()
            ),
          ),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        );
      }
      return Image.file(
        File(backgroundImage),
        fit: BoxFit.cover,
        width: MediaQuery.of(context).size.width,
        height: 200,
      );
    }

    return
       Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 60),
        child: GestureDetector(
          onTap: () async {
            final url = await getImage();
            if(url != null) {
              setState(() {
                backgroundImage = url;
              });
              context.read<ProfileFormBloc>().add(ProfileFormEvent.backgroundImageURLChanged(url));
            }
          },
          child: Container(
            height: 200,
            color: Colors.blue,
            child: Center(
                child: displayImage(),
            ),
          ),
        ),
    );
  }
}
