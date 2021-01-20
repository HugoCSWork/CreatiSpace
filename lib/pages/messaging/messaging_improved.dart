import 'dart:async';
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

final themeColor = Color(0xfff5a623);
final primaryColor = Color(0xff203152);
final greyColor = Color(0xffaeaeae);
final greyColor2 = Color(0xffE8E8E8);

class Messaging extends StatelessWidget {

  final String peerId = "123";
  final String peerUsername = "555";
  final String peerAvatar = "222";

  // Pass through from other screen to save firebase calls
/*  Messaging({Key key, @required this.peerId, @required this.peerUsername,
    @required this.peerAvatar}) : super(key: key);*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(peerUsername),
        centerTitle: true,
      ),
      body: MessageScreen(
          peerId: peerId,
          peerUsername: peerUsername,
          peerAvatar: peerAvatar
      ),
    );
  }
}

class MessageScreen extends StatefulWidget {

  final String peerId;
  final String peerUsername;
  final String peerAvatar;

  // Pass through from other screen to save firebase calls
  MessageScreen({Key key, @required this.peerId, @required this.peerUsername,
    @required this.peerAvatar}) : super(key: key);

  @override
  State createState() =>
      MessageScreenState(peerId: peerId, peerAvatar: peerAvatar,
          peerUsername: peerUsername);
}

class MessageScreenState extends State<MessageScreen> {

  MessageScreenState({Key key, @required this.peerId,
    @required this.peerUsername, @required this.peerAvatar});

  String peerId;
  String peerUsername;
  final String peerAvatar;
  int _limit = 20;
  final int _limitIncrement = 20;
  String id = "hello-world";

  final TextEditingController textEditingController = TextEditingController();
  final ScrollController listScrollController = ScrollController();
  List<QueryDocumentSnapshot> listMessage = new List.from([]);

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

    setState(() {});
  }

  Future<bool> onBackPress() {

    return Future.value(false);
  }

  @override
  Widget build(BuildContext context) {
    return  WillPopScope(
        child: Stack(
        children: <Widget>[
          // buildMessages(),
          buildListMessage(),
          Container(),
          buildInput(),
        ],
      ),
      onWillPop: onBackPress,
    );
  }

  Widget buildListMessage() {
    return Flexible(
      child: peerId == ''
          ? Center(
          child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue)))
          : StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('messages')
            .doc(id)
            .collection(peerId)
            .orderBy('timestamp', descending: true)
            .limit(_limit)
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
                child: CircularProgressIndicator(
                    valueColor:
                    AlwaysStoppedAnimation<Color>(Colors.blue)));
          } else {
            listMessage.addAll(snapshot.data.documents);
            return ListView.builder(
              padding: EdgeInsets.all(10.0),
              itemBuilder: (context, index) =>
                  buildItem(index, snapshot.data.documents[index]),
              itemCount: snapshot.data.documents.length,
              reverse: true,
              controller: listScrollController,
            );
          }
        },
      ),
    );
  }
  // Widget buildMessages() {
  //   return Flexible(
  //     child: StreamBuilder(
  //       stream: FirebaseFirestore.instance
  //           .collection("messages")
  //           .doc(id)
  //           .collection(peerId)
  //           .orderBy('timestamp', descending: true)
  //           .limit(_limit)
  //           .snapshots(),
  //       builder: (context, snapshot) {
  //         if(!snapshot.hasData) {
  //           return Center(
  //             child: CircularProgressIndicator(
  //               valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
  //             ),
  //           );
  //         } else {
  //           listMessage.addAll(snapshot.data.documents);
  //           return ListView.builder(
  //             padding: EdgeInsets.all(10.0),
  //             itemBuilder: (context, index) =>
  //                 buildItem(index, snapshot.data.documents[index]),
  //             itemCount: snapshot.data.documents.length,
  //             reverse: true,
  //             controller: listScrollController,
  //           );
  //         }
  //       },
  //     ),
  //   );
  // }

  Future getImage() async {
    ImagePicker imagePicker = ImagePicker();
    PickedFile pickedFile;

    pickedFile = await imagePicker.getImage(source: ImageSource.gallery);
    File imageFile = File(pickedFile.path);

    if (imageFile != null) {
      // setState(() {
      //   isLoading = true;
      // });
      // uploadFile(imageFile);
    }
  }

  // Future uploadFile(File imageFile) async {
  //   String fileName = DateTime.now().millisecondsSinceEpoch.toString();
  //   StorageReference reference = FirebaseStorage.instance.ref().child(fileName);
  //   StorageUploadTask uploadTask = reference.putFile(imageFile);
  //   StorageTaskSnapshot storageTaskSnapshot = await uploadTask.onComplete;
  //   storageTaskSnapshot.ref.getDownloadURL().then((downloadUrl) {
  //     setState(() {
  //       isLoading = false;
  //       onSendMessage(downloadUrl, 1);
  //     });
  //   }, onError: (err) {
  //     setState(() {
  //       isLoading = false;
  //     });
  //     Fluttertoast.showToast(msg: 'This file is not an image');
  //   });
  // }

  void onSendMessage(String content, int type) {
    if(content.trim() != '') {
      textEditingController.clear();
      uploadToDB(id, peerId, content, type);
      uploadToDB(peerId, id, content, type);
      listScrollController.animateTo(0.0,
          duration: Duration(milliseconds: 300), curve: Curves.easeOut);
    }
  }

  void uploadToDB(String from, String to, String content, int type) {
    var documentReference = FirebaseFirestore.instance
        .collection('messages')
        .doc(from)
        .collection(to)
        .doc(DateTime.now().microsecondsSinceEpoch.toString());

    FirebaseFirestore.instance.runTransaction((transaction) async {
      transaction.set(documentReference, {
        'idFrom': from,
        'idTo' : to,
        'timestamp': DateTime.now().microsecondsSinceEpoch.toString(),
        'content': content,
        'type': type
      });
    });
  }

  Widget buildInput() {
    return Container(
      child: Row(
        children: <Widget>[
          Material(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 1.0),
              child: IconButton(
                icon: Icon(Icons.image),
                onPressed: getImage,
                color: Colors.grey[800],
              ),
            ),
          ),
          Flexible(
            child: Container(
              child: TextField(
                onSubmitted: (value) {
                  onSendMessage(textEditingController.text, 0);
                },
                style: TextStyle(color: Colors.blue, fontSize: 15.0),
                controller: textEditingController,
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
                onPressed: () => onSendMessage(textEditingController.text, 0),
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
  }
//
//   Widget buildItem(int index, DocumentSnapshot document) {
//     if (document.data()['idFrom'] == id) {
//       // Right (my message)
//       return Row(
//         children: <Widget>[
//           document.data()['type'] == 0
//           // Text
//               ? Container(
//             child: Text(
//               document.data()['content'].toString(),
//               style: TextStyle(color: Colors.blue),
//             ),
//             padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
//             width: 200.0,
//             decoration: BoxDecoration(
//                 color: Colors.grey,
//                 borderRadius: BorderRadius.circular(8.0)),
//             margin: EdgeInsets.only(
//                 bottom: isLastMessageRight(index) ? 20.0 : 10.0,
//                 right: 10.0),
//           )
//           // Image
//               : Container(
//             child: FlatButton(
//               child: Material(
//                 child: CachedNetworkImage(
//                   placeholder: (context, url) => Container(
//                     child: CircularProgressIndicator(
//                       valueColor:
//                       AlwaysStoppedAnimation<Color>(Colors.blue),
//                     ),
//                     width: 200.0,
//                     height: 200.0,
//                     padding: EdgeInsets.all(70.0),
//                     decoration: BoxDecoration(
//                       color: Colors.grey,
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(8.0),
//                       ),
//                     ),
//                   ),
//                   errorWidget: (context, url, error) => Material(
//                     child: Image.asset(
//                       'assets/icons/placeholder_image.png',
//                       width: 200.0,
//                       height: 200.0,
//                       fit: BoxFit.cover,
//                     ),
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(8.0),
//                     ),
//                     clipBehavior: Clip.hardEdge,
//                   ),
//                   imageUrl: document.data()['content'].toString(),
//                   width: 200.0,
//                   height: 200.0,
//                   fit: BoxFit.cover,
//                 ),
//                 borderRadius: BorderRadius.all(Radius.circular(8.0)),
//                 clipBehavior: Clip.hardEdge,
//               ),
//               onPressed: () {
//
//               },
//               padding: EdgeInsets.all(0),
//             ),
//             margin: EdgeInsets.only(
//                 bottom: isLastMessageRight(index) ? 20.0 : 10.0,
//                 right: 10.0),
//           )
//           // Sticker
//         ],
//         mainAxisAlignment: MainAxisAlignment.end,
//       );
//     } else {
//       // Left (peer message)
//       return Container(
//         child: Column(
//           children: <Widget>[
//             Row(
//               children: <Widget>[
//                 isLastMessageLeft(index)
//                     ? Material(
// /*                  child: CachedNetworkImage(
//                     placeholder: (context, url) => Container(
//                       child: CircularProgressIndicator(
//                         strokeWidth: 1.0,
//                         valueColor:
//                         AlwaysStoppedAnimation<Color>(Colors.blue),
//                       ),
//                       width: 35.0,
//                       height: 35.0,
//                       padding: EdgeInsets.all(10.0),
//                     ),
//                     imageUrl: "peerAvatar",
//                     width: 35.0,
//                     height: 35.0,
//                     fit: BoxFit.cover,
//                   ),*/
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(18.0),
//                   ),
//                   clipBehavior: Clip.hardEdge,
//                 )
//                     : Container(width: 35.0),
//                 document.data()['type'] == 0
//                     ? Container(
//                   child: Text(
//                     document.data()['content'].toString(),
//                     style: TextStyle(color: Colors.white),
//                   ),
//                   padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
//                   width: 200.0,
//                   decoration: BoxDecoration(
//                       color: Colors.blue,
//                       borderRadius: BorderRadius.circular(8.0)),
//                   margin: EdgeInsets.only(left: 10.0),
//                 )
//                     : Container(
//                   child: FlatButton(
//                     child: Material(
//                       child: CachedNetworkImage(
//                         placeholder: (context, url) => Container(
//                           child: CircularProgressIndicator(
//                             valueColor: AlwaysStoppedAnimation<Color>(
//                                 Colors.blue),
//                           ),
//                           width: 200.0,
//                           height: 200.0,
//                           padding: EdgeInsets.all(70.0),
//                           decoration: BoxDecoration(
//                             color: Colors.grey,
//                             borderRadius: BorderRadius.all(
//                               Radius.circular(8.0),
//                             ),
//                           ),
//                         ),
//                         errorWidget: (context, url, error) =>
//                             Material(
//                               child: Image.asset(
//                                 'assets/icons/placeholder_image.png',
//                                 width: 200.0,
//                                 height: 200.0,
//                                 fit: BoxFit.cover,
//                               ),
//                               borderRadius: BorderRadius.all(
//                                 Radius.circular(8.0),
//                               ),
//                               clipBehavior: Clip.hardEdge,
//                             ),
//                         imageUrl: document.data()['content'].toString(),
//                         width: 200.0,
//                         height: 200.0,
//                         fit: BoxFit.cover,
//                       ),
//                       borderRadius:
//                       BorderRadius.all(Radius.circular(8.0)),
//                       clipBehavior: Clip.hardEdge,
//                     ),
//                     onPressed: () {
//
//                     },
//                     padding: EdgeInsets.all(0),
//                   ),
//                   margin: EdgeInsets.only(left: 10.0),
//                 )
//               ],
//             ),
//
//             // Time
//             isLastMessageLeft(index)
//                 ? Container(
//               child: Text(
//                 DateFormat('dd MMM kk:mm').format(
//                     DateTime.fromMillisecondsSinceEpoch(
//                         int.parse(document.data()['timestamp'].toString()))),
//                 style: TextStyle(
//                     color: Colors.grey,
//                     fontSize: 12.0,
//                     fontStyle: FontStyle.italic),
//               ),
//               margin: EdgeInsets.only(left: 50.0, top: 5.0, bottom: 5.0),
//             )
//                 : Container()
//           ],
//           crossAxisAlignment: CrossAxisAlignment.start,
//         ),
//         margin: EdgeInsets.only(bottom: 10.0),
//       );
//     }
//   }

Widget buildItem(int index, DocumentSnapshot document) {
  if (document.data()['idFrom'] == id) {
    // Right (my message)
    return Row(
      children: <Widget>[
        document.data()['type'] == 0
        // Text
            ? Container(
          child: Text(
            document.data()['content'].toString(),
            style: TextStyle(color: primaryColor),
          ),
          padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
          width: 200.0,
          decoration: BoxDecoration(
              color: greyColor2,
              borderRadius: BorderRadius.circular(8.0)),
          margin: EdgeInsets.only(
              bottom: isLastMessageRight(index) ? 20.0 : 10.0,
              right: 10.0),
        )
            : document.data()['type'] == 1
        // Image
            ? Container(
          child: FlatButton(
            child: Material(
              child: CachedNetworkImage(
                placeholder: (context, url) => Container(
                  child: CircularProgressIndicator(
                    valueColor:
                    AlwaysStoppedAnimation<Color>(themeColor),
                  ),
                  width: 200.0,
                  height: 200.0,
                  padding: EdgeInsets.all(70.0),
                  decoration: BoxDecoration(
                    color: greyColor2,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                ),
                errorWidget: (context, url, error) => Material(
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
                imageUrl: document.data()['content'].toString(),
                width: 200.0,
                height: 200.0,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              clipBehavior: Clip.hardEdge,
            ),
            onPressed: () {

            },
            padding: EdgeInsets.all(0),
          ),
          margin: EdgeInsets.only(
              bottom: isLastMessageRight(index) ? 20.0 : 10.0,
              right: 10.0),
        )
        // Sticker
            : Container(
          child: Image.asset(
            'images/${document.data()['content']}.gif',
            width: 100.0,
            height: 100.0,
            fit: BoxFit.cover,
          ),
          margin: EdgeInsets.only(
              bottom: isLastMessageRight(index) ? 20.0 : 10.0,
              right: 10.0),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.end,
    );
  } else {
    // Left (peer message)
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              isLastMessageLeft(index)
                  ? Material(
                child: CachedNetworkImage(
                  placeholder: (context, url) => Container(
                    child: CircularProgressIndicator(
                      strokeWidth: 1.0,
                      valueColor:
                      AlwaysStoppedAnimation<Color>(themeColor),
                    ),
                    width: 35.0,
                    height: 35.0,
                    padding: EdgeInsets.all(10.0),
                  ),
                  imageUrl: "peerAvatar",
                  width: 35.0,
                  height: 35.0,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(18.0),
                ),
                clipBehavior: Clip.hardEdge,
              )
                  : Container(width: 35.0),
              document.data()['type'] == 0
                  ? Container(
                child: Text(
                  document.data()['content'].toString(),
                  style: TextStyle(color: Colors.white),
                ),
                padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                width: 200.0,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(8.0)),
                margin: EdgeInsets.only(left: 10.0),
              )
                  : document.data()['type'] == 1
                  ? Container(
                child: FlatButton(
                  child: Material(
                    child: CachedNetworkImage(
                      placeholder: (context, url) => Container(
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                              themeColor),
                        ),
                        width: 200.0,
                        height: 200.0,
                        padding: EdgeInsets.all(70.0),
                        decoration: BoxDecoration(
                          color: greyColor2,
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
                      imageUrl: document.data()['content'].toString(),
                      width: 200.0,
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
                    borderRadius:
                    BorderRadius.all(Radius.circular(8.0)),
                    clipBehavior: Clip.hardEdge,
                  ),
                  onPressed: () {

                  },
                  padding: EdgeInsets.all(0),
                ),
                margin: EdgeInsets.only(left: 10.0),
              )
                  : Container(
                child: Image.asset(
                  'images/${document.data()['content']}.gif',
                  width: 100.0,
                  height: 100.0,
                  fit: BoxFit.cover,
                ),
                margin: EdgeInsets.only(
                    bottom: isLastMessageRight(index) ? 20.0 : 10.0,
                    right: 10.0),
              ),
            ],
          ),

          // Time
          isLastMessageLeft(index)
              ? Container(
            child: Text(
              DateFormat('dd MMM kk:mm').format(
                  DateTime.fromMillisecondsSinceEpoch(
                      int.parse(document.data()['timestamp'].toString()))),
              style: TextStyle(
                  color: greyColor,
                  fontSize: 12.0,
                  fontStyle: FontStyle.italic),
            ),
            margin: EdgeInsets.only(left: 50.0, top: 5.0, bottom: 5.0),
          )
              : Container()
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
      margin: EdgeInsets.only(bottom: 10.0),
    );
  }
}

  bool isLastMessageLeft(int index) {
    if ((index > 0 &&
        listMessage != null &&
        listMessage[index - 1].data()['idFrom'] == id) ||
        index == 0) {
      return true;
    } else {
      return false;
    }
  }

  bool isLastMessageRight(int index) {
    if ((index > 0 &&
        listMessage != null &&
        listMessage[index - 1].data()['idFrom'] != id) ||
        index == 0) {
      return true;
    } else {
      return false;
    }
  }

}
