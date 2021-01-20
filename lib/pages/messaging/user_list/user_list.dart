import 'package:auto_route/auto_route.dart';
import 'package:creatispace/domain/user_messaging/user_list/user_messaging.dart';
import 'package:creatispace/pages/messaging/user_list/widgets/unread_messages.dart';
import 'package:creatispace/pages/messaging/user_list/widgets/user_image.dart';
import 'package:creatispace/pages/messaging/user_list/widgets/user_message_description.dart';
import 'package:creatispace/pages/messaging/user_list/widgets/user_name.dart';
import 'package:creatispace/pages/routes/router.gr.dart';
import 'package:flutter/material.dart';

class UserList extends StatelessWidget {

  final UserMessaging userMessaging;
  const UserList({Key key, this.userMessaging}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
        height: 125,
        width: double.maxFinite,
        child: Card(
          elevation: 5,
          child: InkWell(
            splashColor: Colors.blue,
            onTap: () {
              ExtendedNavigator.of(context).push(Routes.messagingScaffold,
                  arguments: MessagingScaffoldArguments(
                      peerId: userMessaging.id,
                      peerName: userMessaging.userMessagingName,
                      userId: userMessaging.userId
                  )
              );
            },
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 5),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          UserImage(),
                          UserName(userMessaging.userMessagingName),
                          Spacer(),
                          UnreadMessages(userMessaging.unreadMessages),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          UserMessageDescription(userMessaging.lastMessage,
                              userMessaging.lastSeen)
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }
}
