import 'package:creatispace/app/user_messaging/user_conversation_watcher/user_conversation_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class BuildInput extends StatefulWidget {
  final String peerId;

  const BuildInput({Key key, this.peerId}) : super(key: key);

  @override
  _BuildInputState createState() => _BuildInputState(peerId);
}

class _BuildInputState extends State<BuildInput> {
  final TextEditingController textEditingController = TextEditingController();

  final String peerId;

  _BuildInputState(this.peerId);

  Future<String> getImage() async {
    ImagePicker imagePicker = ImagePicker();
    PickedFile pickedFile;

    pickedFile = await imagePicker.getImage(source: ImageSource.gallery);
    return pickedFile.path;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserConversationBloc, UserConversationState>(
    builder: (context, state) {
      return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) => Container(),
          loadSuccess: (state) {
              return Container(
              child: Row(
                children: <Widget>[
                  // Button send image
                  Material(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 1.0),
                      child: IconButton(
                        icon: Icon(Icons.image),
                        onPressed: () async {
                          var imageUrl = await getImage();
                          if(imageUrl != null) {
                            context.read<UserConversationBloc>().add(
                                UserConversationEvent.sendMessage(peerId, imageUrl,
                                    1));
                          }
                        },
                        color: Colors.blue,
                      ),
                    ),
                    color: Colors.white,
                  ),

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

                  // Button send message
                  Material(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 8.0),
                      child: IconButton(
                        icon: Icon(Icons.send),
                        onPressed: () {
                          context.read<UserConversationBloc>().add(
                              UserConversationEvent.sendMessage(peerId, textEditingController.text,
                                  0));
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
