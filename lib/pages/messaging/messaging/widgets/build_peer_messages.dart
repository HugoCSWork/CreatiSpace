import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:creatispace/domain/user_messaging/user_conversation/user_conversation.dart';
import 'package:creatispace/pages/routes/router.gr.dart';
import 'package:flutter/material.dart';


class PeerMessages extends StatelessWidget {

  final UserConversation userConversation;

  const PeerMessages({Key key, this.userConversation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          userConversation.type == 0
              ? Container(
            child: Text(
              userConversation.content.toString(),
              style: TextStyle(color: Colors.black87),
            ),
            padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
            width: 200.0,
            decoration: BoxDecoration(
                color: Colors.lightBlue[100],
                borderRadius: BorderRadius.circular(8.0)),
            margin: EdgeInsets.only(
                bottom: 10.0,
                right: 10.0),
          )
              : Container(
            child: FlatButton(
              padding: EdgeInsets.all(0),
              onPressed: () {
                FocusManager.instance.primaryFocus.unfocus();
                ExtendedNavigator.of(context).push(Routes.fullScreenImage,
                  arguments: FullScreenImageArguments(
                      imageUrl:userConversation.content
                  ),
                );
              },
              child: Material(
                child: CachedNetworkImage(
                  placeholder: (context, url) =>
                      Container(
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                              Colors.white),
                        ),
                        width: 200.0,
                        height: 200.0,
                        padding: EdgeInsets.all(70.0),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                      ),
                  errorWidget: (context, url, error) =>
                      Material(
                        child: Image.asset(
                          'images/img_not_available.jpeg',
                          width: 200.0,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                        clipBehavior: Clip.hardEdge,
                      ),
                  imageUrl: userConversation.content,
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
                borderRadius:
                BorderRadius.all(Radius.circular(8.0)),
                clipBehavior: Clip.hardEdge,
              ),
            ),
          )
        ],
      ),
    );
  }
}
