import 'package:flutter/material.dart';

Widget UserMessageDescription(String description, String lastSeen) {
  return  Align(
    alignment: Alignment.centerLeft,
    child: Padding(
      padding: EdgeInsets.only(left: 15),
      child: Row(
        children: [
          RichText(
            textAlign: TextAlign.left,
            softWrap: true,
            text: TextSpan(
              text: description,
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
              ),
            //   children: <TextSpan>[
            //     TextSpan(
            //         text: "\nLast seen ${lastSeen}",
            //         style: TextStyle(
            //             color: Colors.grey,
            //             fontSize: 15,
            //             fontWeight: FontWeight.bold)),
            //   ],
            ),
          ),
        ],
      ),
    ),
  );
}