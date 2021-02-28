import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:creatispace/app/user_messaging/user_conversation_watcher/user_conversation_bloc.dart';
import 'package:creatispace/injection.dart';
import 'package:creatispace/pages/messaging/messaging/messaging_builder.dart';
import 'package:creatispace/pages/messaging/messaging/widgets/build_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MessagingScaffold extends StatelessWidget {

  final String peerId;
  final String peerName;
  final String userId;
  final String imageUrl;

  const MessagingScaffold({Key key,
    @required this.peerId, @required this.peerName, @required this.userId, @required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<UserConversationBloc>(
        create: (context) =>
        getIt<UserConversationBloc>()
          ..add(
              UserConversationEvent.watchAllUserConversation(peerId, peerName)),
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              automaticallyImplyLeading: false,
              flexibleSpace: SafeArea(
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(right: 16),
                  child: Row(
                    children: [
                      IconButton(
                          icon: Icon(Icons.arrow_back, color: Colors.black),
                          onPressed: () =>
                          {
                            FocusManager.instance.primaryFocus.unfocus(),
                            Navigator.pop(context)
                          }
                      ),
                      SizedBox(width: 2),
                      CircularProfileAvatar('',
                          radius: 25,
                          child: CachedNetworkImage(
                            imageUrl: imageUrl,
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
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(peerName, style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),),
                          ],
                        ),
                      ),
                      //TODO Add delete message history and block user
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
                        child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              icon: Icon(Icons.settings),
                              items: ["Delete", "Block"]
                                  .map<DropdownMenuItem<String>>((
                                  String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                  onTap: () {},
                                );
                              }).toList(),
                              onChanged: (value) async {
                              },
                            )
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            body: Stack(
              children: [
                Column(
                  children: [
                    UserConversationBuilder(userId: userId),
                    Container(),
                    BuildInput(peerId: peerId)
                  ],
                )
              ]
              ,
            )
          // UserConversationBuilder(userId: userId)
        )
    );
  }
}