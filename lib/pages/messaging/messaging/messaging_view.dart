import 'package:creatispace/domain/user_messaging/user_conversation/user_conversation.dart';
import 'package:creatispace/pages/messaging/messaging/widgets/build_peer_messages.dart';
import 'package:creatispace/pages/messaging/messaging/widgets/build_user_messages.dart';
import 'package:flutter/material.dart';

class BuildMessage extends StatelessWidget {

  final UserConversation userConversation;
  final String userId;

  const BuildMessage({Key key, this.userConversation, this.userId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: userConversation.idFrom.trim() == userId.trim()
          ? UserMessages(userConversation: userConversation)
          : PeerMessages(userConversation: userConversation),

    );
  }
}
