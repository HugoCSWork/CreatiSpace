import 'package:creatispace/app/user_messaging/user_messaging_watcher/user_messaging_watcher_bloc.dart';
import 'package:creatispace/domain/user_messaging/user_list/user_messaging.dart';
import 'package:creatispace/pages/messaging/following_list/following_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FollowingBuilder extends StatefulWidget {
  @override
  _FollowingBuilderState createState() => _FollowingBuilderState();
}

class _FollowingBuilderState extends State<FollowingBuilder> {
  List<UserMessaging> _messages;
  List<UserMessaging> _currentItems;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserMessagingWatcherBloc, UserMessagingWatcherState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) =>
            const Center(child: CircularProgressIndicator()),
            loadSuccess: (state) {
              _messages == null ? _messages = state.items.asList() : "";
              _currentItems == null ? _messages = state.items.asList() : "";
              if(_currentItems != state.items.asList()) {
                _messages = state.items.asList();
                _currentItems = state.items.asList();
              }
              return Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 16,left: 16,right: 16),
                    child: TextField(
                      onChanged: (text) {
                        text = text.toLowerCase();
                        setState(() {
                          _messages =  state.items.asList()
                              .where((element) {
                            var userName = element.userMessagingName.toLowerCase();
                            return userName.contains(text);
                          }).toList();
                        });
                      },
                      decoration: InputDecoration(
                        hintText: "Search for recent users...",
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
                  _messages.isEmpty
                      ? Padding(
                    padding: const EdgeInsets.only(top: 22.0),
                    child: Center(
                      child: Text("No users found"),
                    ),
                  )
                      :
                  Expanded(
                    flex: 1,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return FollowingView(userMessaging: _messages[index]);
                      },
                      itemCount: _messages.length,
                    ),
                  ),
                ],
              );
            },
            loadFailure: (state) {
              return Container();
            });
      },
    );
  }
}