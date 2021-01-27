import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:creatispace/app/profile/profile_form/profile_form_bloc.dart';
import 'package:creatispace/domain/profile/profile_data/user_profile.dart';
import 'package:creatispace/pages/items/items_form/misc/item_image_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ProfileImage extends StatefulWidget {
  final String profileImageUrl;

  ProfileImage(this.profileImageUrl);

  @override
  _ProfileImageState createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  String profileImage;

  @override
  Widget build(BuildContext context) {
    Widget displayImage() {
      if(profileImage == null) {
        return
             CircularProfileAvatar('',
                radius: 45,
                child: CachedNetworkImage(
                  imageUrl: widget.profileImageUrl,
                  fit: BoxFit.fitWidth,
                  placeholder: (context, url) => Center(
                    child: Container(
                        width: 30,
                        height: 30,
                        margin: const EdgeInsets.all(5),
                        child: const CircularProgressIndicator()
                    ),
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                )

        );
      }
      return CircularProfileAvatar(
          '',
          radius: 45,
          child: Image.file(
            File(profileImage),
            fit: BoxFit.fitWidth,
          ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      );
    }
    return
      Padding(
        padding: const EdgeInsets.all(10),
        child: GestureDetector(
          onTap: () async {
            final url = await getImage();
            if(url != null) {
              setState(() {
                profileImage = url;
              });
              context.read<ProfileFormBloc>().add(ProfileFormEvent.profileImageURLChanged(url));
            }
          },
          child: Container(
            padding: EdgeInsets.only(top: 150),
            alignment: Alignment.topCenter,
              child: displayImage(),
          ),
        ),
      );
  }
}
