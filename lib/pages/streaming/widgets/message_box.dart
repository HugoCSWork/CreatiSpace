import 'package:creatispace/app/streaming/stream_conversation_watcher/stream_conversation_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class StreamMessagingInput extends StatefulWidget {
  final String peerId;
  final String workshopId;

  const StreamMessagingInput({Key key, this.peerId, this.workshopId}) : super(key: key);

  @override
  _StreamMessagingInputState createState() => _StreamMessagingInputState();
}

class _StreamMessagingInputState extends State<StreamMessagingInput> {
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StreamConversationWatcherBloc, StreamConversationWatcherState>(
        builder: (context, state) {
          return state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => Container(),
              loadSuccess: (state) {
                return Container(
                  child: Row(
                    children: <Widget>[
                      // Edit text
                      Flexible(
                        child: Container(
                          child: TextField(
                            controller: textEditingController,
                            onSubmitted: (value) {},
                            style: TextStyle(color: Colors.blue, fontSize: 15.0),
                            decoration: InputDecoration.collapsed(
                              hintText: 'Type your message...',
                              hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                      ),
                      Material(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 8.0),
                          child: IconButton(
                            icon: Icon(Icons.send),
                            onPressed: () {
                              context.read<StreamConversationWatcherBloc>().add(
                                  StreamConversationWatcherEvent.sendMessage(widget.peerId, textEditingController.text,
                                      widget.workshopId));
                              textEditingController.clear();
                            },
                            color: Colors.blue,
                          ),
                        ),
                        color: Colors.white,
                      ),
                    ],
                  ),
                  width: double.infinity,
                  height: 50.0,
                  decoration: BoxDecoration(
                      border: Border(top: BorderSide(color: Colors.grey, width: 0.5)),
                      color: Colors.white),
                );
              },
              loadFailure: (state) => Container()
          );
        }
    );
    //

  }
}
