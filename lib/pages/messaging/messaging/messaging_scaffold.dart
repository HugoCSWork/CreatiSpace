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

  const MessagingScaffold({Key key,
    @required this.peerId, @required this.peerName, @required this.userId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${peerName}',
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
        body: MultiBlocProvider(
            providers: [
              BlocProvider<UserConversationBloc>(
                create: (context) => getIt<UserConversationBloc>()
                  ..add(UserConversationEvent.watchAllUserConversation(peerId)),
              ),
            ],
            child: Stack(
              children: [
                Column(
                  children: [
                    UserConversationBuilder(userId: userId),
                    Container(),
                    BuildInput(peerId: peerId)
                  ],
                )
              ],
            )
            // UserConversationBuilder(userId: userId)
        )
    );
  }
}
//
// child: Stack(
// children: <Widget>[
// Column(
// children: [
// UserListBuilder(),
// Container(),
// // buildInput(),
// ],
// )
// ],
// )