
import 'package:flutter/material.dart';

Widget UserName(String name) {

  return Padding(
    padding: const EdgeInsets.only(left: 8),
    child: Align(
      alignment: Alignment.centerLeft,
      child: RichText(
          text: TextSpan(
            text: name,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
          )
      ),
    ),
  );
}