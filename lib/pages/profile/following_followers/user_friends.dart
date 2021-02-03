import 'package:cached_network_image/cached_network_image.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:creatispace/domain/following_followers/following_follower/following_follower.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

class UserFriends extends StatelessWidget {

  final FollowingFollowers test;

  const UserFriends({Key key, @required this.test})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(8, 8, 8, 0),
      width: double.maxFinite,
      child: Card(
        elevation: 2,
        child: InkWell(
          splashColor: Colors.blue,
          onTap: () async {
            // go to their profile with id,
            // the profile will then retrieve the rest through id
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
                          CircularProfileAvatar('',
                              radius: 25,
                              child: CachedNetworkImage(
                                imageUrl: test.profileImageURL,
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
                          Expanded(
                            child: Container(
                              color: Colors.transparent,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Text(
                                        test.username
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
