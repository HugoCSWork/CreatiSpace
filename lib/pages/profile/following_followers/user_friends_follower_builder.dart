// import 'package:creatispace/app/following_followers/profile/following_followers_profile_bloc.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class UserFriendsBuilder extends StatelessWidget {
//
//   final bool followingOrFollowers;
//
//   const UserFriendsBuilder({Key key, this.followingOrFollowers})
//       : super(key: key);
//
//
//   Widget getFollowing() {
//     return
//       BlocBuilder<FollowingFollowersProfileBloc, FollowingFollowersProfileState>(
//         builder: (context, state) {
//           return state.maybeMap(
//             initial: (_) => Container(),
//             loadInProgressFollowing:(_) => Container(),
//             loadSuccessFollowing: (state) {
//               return Text(state.following.toString());
//             },
//             loadFailureFollowing:  (_) =>  Container(),
//             orElse: () =>  Container(),
//           );
//         },
//       );
//   }
//   //
//   // Widget getFollowers() {
//   //   return
//   //     BlocBuilder<FollowingFollowersProfileBloc, FollowingFollowersProfileState>(
//   //       builder: (context, state) {
//   //         return state.maybeMap(
//   //           initial: (_) => Container(),
//   //           loadInProgressFollowers:(_) => Container(),
//   //           loadSuccessFollowers: (state) {
//   //             return Text(state.followers.toString());
//   //           },
//   //           loadFailureFollowers:  (_) =>  Container(),
//   //           orElse: () =>  Container(),
//   //         );
//   //       },
//   //     );
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return getFollowing();
//   }
// }

import 'package:creatispace/app/following_followers/followers/followers_bloc.dart';
import 'package:creatispace/domain/following_followers/following_follower/following_follower.dart';
import 'package:creatispace/pages/profile/following_followers/user_friends.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserFriendsFollowerBuilder extends StatefulWidget {
  @override
  _UserFriendsFollowerBuilderState createState() => _UserFriendsFollowerBuilderState();
}

class _UserFriendsFollowerBuilderState extends State<UserFriendsFollowerBuilder> {
  List<FollowingFollowers> _followers;
  List<FollowingFollowers> _currentItems;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FollowersBloc, FollowersState> (
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(),
          loadInProgress : (_) =>
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 200,
                  child: const Center(
                      child: CircularProgressIndicator()
                  )
              ),
          loadSuccess : (state) {
            _followers == null ? _followers = state.followers.asList() : "";
            _currentItems == null ? _followers = state.followers.asList() : "";
            if(_currentItems != state.followers.asList()) {
              _followers = state.followers.asList();
              _currentItems = state.followers.asList();
            }
            return Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 16,left: 16,right: 16),
                    child: TextField(
                      onChanged: (text) {
                        text = text.toLowerCase();
                        setState(() {
                          _followers =  state.followers.asList()
                              .where((element) {
                            var userName = element.username.toLowerCase();
                            return userName.contains(text);
                          }).toList();
                        });
                      },
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(color: Colors.grey.shade600),
                        prefixIcon: Icon(Icons.search,color: Colors.grey.shade600, size: 20,),
                        filled: true,
                        fillColor: Colors.blue[100],
                        contentPadding: EdgeInsets.all(8),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Colors.grey.shade100
                            )
                        ),
                      ),
                    ),
                  ),
                  _followers.isEmpty
                      ? Padding(
                    padding: const EdgeInsets.only(top: 22.0),
                    child: Center(
                      child: Text("No followers"),
                    ),
                  )
                      :
                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.all(10.0),
                      itemBuilder: (context, index) {
                        return UserFriends(test: _followers[index]);
                      },
                      itemCount: _followers.length,
                    ),
                  ),
                ],
              ),
            );
          },
          loadFailure: (_) => Container(),
        );
      },
    );
  }
}
