import 'package:auto_route/auto_route.dart';
import 'package:creatispace/app/user_messaging/user_messaging_watcher/user_messaging_watcher_bloc.dart';
import 'package:creatispace/injection.dart';
import 'package:creatispace/pages/messaging/user_list/user_list_builder.dart';
import 'package:creatispace/pages/routes/router.gr.dart';
import 'package:creatispace/shared/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserListScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Recent Messages',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          FlatButton(
            textColor: Colors.black87,
            onPressed: () {
              ExtendedNavigator.of(context, rootRouter: true).push(Routes.followingScaffold);
            },
            child: Icon(Icons.add, color: Colors.white),
            shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
          ),
        ],
        centerTitle: true,
      ),

      body: MultiBlocProvider(
        providers: [
          BlocProvider<UserMessagingWatcherBloc>(
            create: (context) => getIt<UserMessagingWatcherBloc>()
              ..add(const UserMessagingWatcherEvent.watchAllUserMessagingList()),
          ),
        ],
        child: UserListBuilder()
      )
    );
  }
}
