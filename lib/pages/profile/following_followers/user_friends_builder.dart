import 'package:creatispace/app/following_followers/following/following_bloc.dart';
import 'package:creatispace/domain/following_followers/following_follower/following_follower.dart';
import 'package:creatispace/pages/profile/following_followers/user_friends.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserFriendsBuilder extends StatefulWidget {
  @override
  _UserFriendsBuilderState createState() => _UserFriendsBuilderState();
}

class _UserFriendsBuilderState extends State<UserFriendsBuilder> {
  List<FollowingFollowers> _following;
  List<FollowingFollowers> _currentItems;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FollowingBloc, FollowingState> (
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
              loadSuccess: (state) {
                _following == null ? _following = state.following.asList() : "";
                _currentItems == null ? _following = state.following.asList() : "";
                if(_currentItems != state.following.asList()) {
                  _following = state.following.asList();
                  _currentItems = state.following.asList();
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
                              _following =  state.following.asList()
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
                      _following.isEmpty
                          ? Padding(
                        padding: const EdgeInsets.only(top: 22.0),
                        child: Center(
                          child: Text("No following users"),
                        ),
                      )
                          :
                      Expanded(
                        child: ListView.builder(
                            padding: EdgeInsets.all(10.0),
                            itemBuilder: (context, index) {
                              return UserFriends(followingFollowers : _following[index]);
                            },
                            itemCount: _following.length,
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
