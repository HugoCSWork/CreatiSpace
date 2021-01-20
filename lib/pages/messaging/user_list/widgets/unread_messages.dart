
import 'package:flutter/material.dart';

Widget UnreadMessages(String unreadMessages ) {
  return Padding(
    padding: const EdgeInsets.only(right: 8),
    child: Align(
      alignment: Alignment.bottomRight,
      child: RichText(
        text: TextSpan(
          text: '${unreadMessages} Unread Message',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.red, fontSize: 12),
        ),
      ),
    ),
  );
}
