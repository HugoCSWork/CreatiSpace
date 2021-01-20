
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';

Widget UserImage() {
  return Padding(
    padding: EdgeInsets.only(left: 5),
    child: Align(
      alignment: Alignment.centerLeft,
      child: CircularProfileAvatar(
        '',
        radius: 20,
        borderWidth: 2,
        elevation: 5.0,
        borderColor: Colors.blue[100],
        child: Icon(Icons.account_box_outlined, size: 35,),
      )
      // Icon(
      //   Icons.chat,
      //   size: 40,
      // ),
    ),
  );
}