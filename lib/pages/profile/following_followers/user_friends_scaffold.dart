import 'package:creatispace/app/following_followers/followers/followers_bloc.dart';
import 'package:creatispace/app/following_followers/following/following_bloc.dart';
import 'package:creatispace/injection.dart';
import 'package:creatispace/pages/profile/following_followers/user_friends_builder.dart';
import 'package:creatispace/pages/profile/following_followers/user_friends_follower_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserFriendsScaffold extends StatefulWidget {

  final bool followOrFollowing;

  const UserFriendsScaffold({Key key, this.followOrFollowing}) : super(key: key);

  @override
  _UserFriendsScaffoldState createState() => _UserFriendsScaffoldState(followOrFollowing);
}

class _UserFriendsScaffoldState extends State<UserFriendsScaffold> {

  bool followOrFollowing;

  _UserFriendsScaffoldState(bool followOrFollowing) {
    this.followOrFollowing = followOrFollowing;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users'),
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => getIt<FollowingBloc>()
                    ..add(const FollowingEvent.watchAllFollowingList()),
          ),
          BlocProvider(
            create: (context) => getIt<FollowersBloc>()
              ..add(const FollowersEvent.watchAllFollowersList()),
          ),
        ],
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 6.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    child: Text(
                      "Following",
                      style: TextStyle(
                          fontWeight: !followOrFollowing
                              ? FontWeight.bold
                              : FontWeight.normal
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        followOrFollowing = false;
                      });

                    },
                  ),
                  Container(
                    height: 30,
                    width: 1.3,
                    color: Colors.blue[200],
                  ),
                  TextButton(
                    child: Text(
                        "Followers",
                        style: TextStyle(
                            fontWeight: followOrFollowing
                                ? FontWeight.bold
                                : FontWeight.normal
                        )
                    ),
                    onPressed: () {
                      setState(() {
                        followOrFollowing = true;
                      });
                    },
                  ),
                ],
              ),
            ),
            followOrFollowing ? UserFriendsFollowerBuilder() :  UserFriendsBuilder()
          ]
        ),
      ),
    );
  }
}
