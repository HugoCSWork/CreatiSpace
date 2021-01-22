
import 'package:creatispace/app/user_messaging/user_conversation_watcher/user_conversation_bloc.dart';
import 'package:creatispace/pages/messaging/messaging/messaging_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserConversationBuilder extends StatefulWidget {

  final String userId;

  const UserConversationBuilder({Key key, this.userId}) : super(key: key);

  @override
  _UserConversationBuilderState createState() =>
      _UserConversationBuilderState(userId);
}

class _UserConversationBuilderState extends State<UserConversationBuilder> {

  final String userId;

  final ScrollController listScrollController = ScrollController();
  int _limit = 20;
  final int _limitIncrement = 20;

  _UserConversationBuilderState(this.userId);

  _scrollListener() {
    if (listScrollController.offset >=
        listScrollController.position.maxScrollExtent &&
        !listScrollController.position.outOfRange) {
      print("reach the bottom");
      setState(() {
        print("reach the bottom");
        _limit += _limitIncrement;
      });
    }
    if (listScrollController.offset <=
        listScrollController.position.minScrollExtent &&
        !listScrollController.position.outOfRange) {
      print("reach the top");
      setState(() {
        print("reach the top");
      });
    }
  }

  @override
  void initState() {
    super.initState();
    listScrollController.addListener(_scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserConversationBloc, UserConversationState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) =>
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 200,
                child: const Center(
                    child: CircularProgressIndicator()
                )
            ),
            loadSuccess: (state) {
              return Flexible(
                child: ListView.builder(
                  padding: EdgeInsets.all(10.0),
                  itemBuilder: (context, index) {
                    final item = state.items[index];
                    return BuildMessage(userId: userId, userConversation: item);
                  },
                  reverse: true,
                  controller: listScrollController,
                  itemCount: state.items.size,
                ),
              );
            },
            loadFailure: (state) {
              return Container(
                child: Center(
                  child: Text("Error loading messages, contact support if persists"),
                ),
              );
            });
      },
    );
  }
}