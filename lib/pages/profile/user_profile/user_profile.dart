import 'package:cached_network_image/cached_network_image.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:creatispace/domain/profile/profile_data/user_profile.dart';
import 'package:creatispace/pages/profile/user_profile/user_profile_items.dart';
import 'package:creatispace/shared/navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {

  final UserProfileData data;

  const UserProfile({Key key, @required this.data}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  bool viewChoice = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                Container(
                  height: 200,
                  color: Colors.blue,
                  child: Center(
                    child: CachedNetworkImage(
                      imageUrl: widget.data.backgroundImageURL,
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                      height: 200,
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
                ),
                SizedBox(height: 45),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        widget.data.username,
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(bottom:8),
                        child: FlatButton(
                            onPressed: () {},
                            color: Colors.blue[200],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.blue[200])
                            ),
                            child: Text("Edit profile")
                        )
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)
                        ),

                        boxShadow: [ BoxShadow(
                          color: Colors.blue[200].withOpacity(0.5),
                          spreadRadius: 4,
                          blurRadius: 7,
                          offset: Offset(1, 3),
                        )],
                        // border: Border.all(
                        //   color: Colors.blue[200],
                        //   width: 1.3
                        // )
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FlatButton(
                              child: Text(
                                  "Grid",
                                  style: TextStyle(
                                    fontWeight: !viewChoice
                                        ? FontWeight.bold
                                        : FontWeight.normal
                                  ),
                              ),
                              onPressed: () {
                                setState(() {
                                  viewChoice = false;
                                });

                              },
                          ),
                          Container(
                            height: 30,
                            width: 1.3,
                            color: Colors.blue[200],
                          ),
                          FlatButton(
                              child: Text(
                                  "List",
                                  style: TextStyle(
                                    fontWeight: viewChoice
                                        ? FontWeight.bold
                                        : FontWeight.normal
                                  )
                              ),
                            onPressed: () {
                              setState(() {
                                viewChoice = true;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                TestItems(data: widget.data, view: viewChoice),
              ],
            ),
            Positioned(
              top: 150, // (background container size) - (circle height / 2)
              child: CircularProfileAvatar('',
              radius: 45,
                child: CachedNetworkImage(
                  imageUrl: widget.data.profileImageURL,
                  fit: BoxFit.fill,
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
              )
            ),
            Positioned(
                top: 180, //
                left: 30,// (background container size) - (circle height / 2)
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      color: Colors.blue[200]
                  ),
                  child: Center(
                    child: Text(
                      "Following\n${widget.data.following}",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                )
            ),
            Positioned(
                top: 180, //
                right: 30,// (background container size) - (circle height / 2)
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18.0),
                      color: Colors.blue[200]
                  ),
                  child: Center(
                    child: Text(
                      "Followers\n${widget.data.followers}",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                )
            ),
          ],
      );
  }
}
