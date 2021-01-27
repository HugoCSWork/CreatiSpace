import 'package:auto_route/auto_route.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:creatispace/domain/user_messaging/user_list/user_messaging.dart';
import 'package:creatispace/pages/routes/router.gr.dart';
import 'package:flutter/material.dart';

class UserList extends StatelessWidget {

  final UserMessaging userMessaging;
  const UserList({Key key, this.userMessaging}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
        width: double.maxFinite,
        child: Card(
          elevation: 2,
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
                Container(
                  padding: EdgeInsets.only(left: 4, right: 16, top: 12, bottom: 8),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            CircularProfileAvatar(
                              '',
                              radius: 25,
                              child: Image(
                                image: AssetImage(
                                  'assets/images/placeholder_profile_male.jpg'
                                ),
                              )
                            ),
                            SizedBox(width: 16,),
                            Expanded(
                              child: Container(
                                color: Colors.transparent,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      userMessaging.userMessagingName, style: TextStyle(
                                        fontSize: 16,
                                        fontWeight:  userMessaging.unreadMessages
                                        ? FontWeight.bold
                                        : FontWeight.normal),),
                                    SizedBox(height: 4,),
                                    Text(userMessaging.lastMessage, style: TextStyle(
                                        fontSize: 13,
                                        color: userMessaging.unreadMessages
                                        ? Colors.grey.shade900
                                        : Colors.grey.shade600,
                                        fontWeight: userMessaging.unreadMessages
                                            ? FontWeight.bold
                                            : FontWeight.normal),),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(userMessaging.lastSeen, style: TextStyle(fontSize: 12,
                          fontWeight: userMessaging.unreadMessages
                              ? FontWeight
                              .bold : FontWeight.normal),),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}