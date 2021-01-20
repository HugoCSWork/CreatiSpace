import 'package:creatispace/app/user_messaging/user_messaging_watcher/user_messaging_watcher_bloc.dart';
import 'package:creatispace/pages/messaging/user_list/user_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserListBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserMessagingWatcherBloc, UserMessagingWatcherState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) =>
            const Center(child: CircularProgressIndicator()),
            loadSuccess: (state) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  final item = state.items[index];
                  return UserList(userMessaging: item);
                },
                itemCount: state.items.size,
              );
            },
            loadFailure: (state) {
              return Container();
            });
      },
    );
  }
}