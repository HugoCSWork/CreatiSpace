import 'package:creatispace/app/item/item_watcher/item_watcher_bloc.dart';
import 'package:creatispace/app/profile/profile_information_watcher/profile_information_watcher_bloc.dart';
import 'package:creatispace/injection.dart';
import 'package:creatispace/pages/profile/user_profile/user_profile_builder.dart';
import 'package:creatispace/shared/navigation_bar.dart';
import 'package:creatispace/shared/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserProfileScaffold extends StatefulWidget {
  @override
  _UserProfileScaffoldState createState() => _UserProfileScaffoldState();
}

class _UserProfileScaffoldState extends State<UserProfileScaffold> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider<ProfileInformationWatcherBloc>(
              create: (context) => getIt<ProfileInformationWatcherBloc>()
                ..add(const ProfileInformationWatcherEvent
                    .watchProfileInformation())),
          BlocProvider<ItemWatcherBloc>(
            create: (context) => getIt<ItemWatcherBloc>()
              ..add(const ItemWatcherEvent.watchAllStarted()),
          ),
        ],
        child: UserProfileBuilder(),
      ),
    );
  }
}
