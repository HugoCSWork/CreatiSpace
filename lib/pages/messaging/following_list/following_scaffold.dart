import 'package:creatispace/app/user_messaging/user_messaging_watcher/user_messaging_watcher_bloc.dart';
import 'package:creatispace/injection.dart';
import 'package:creatispace/pages/messaging/following_list/following_builder.dart';
import 'package:creatispace/pages/messaging/user_list/user_list.dart';
import 'package:creatispace/pages/messaging/user_list/user_list_builder.dart';
import 'package:creatispace/shared/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FollowingScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Following',
            style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),

        body: MultiBlocProvider(
            providers: [
              BlocProvider<UserMessagingWatcherBloc>(
                create: (context) => getIt<UserMessagingWatcherBloc>()
                  ..add(const UserMessagingWatcherEvent.watchAllUserFollowingList()),
              ),
            ],
            child: FollowingBuilder()
        )
    );
  }
}
