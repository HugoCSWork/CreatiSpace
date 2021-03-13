import 'package:auto_route/auto_route.dart';
import 'package:creatispace/app/following_followers/following/following_bloc.dart';
import 'package:creatispace/injection.dart';
import 'package:creatispace/pages/messaging/following_list/following_builder.dart';
import 'package:creatispace/pages/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FollowingScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Following',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => {
            ExtendedNavigator.of(context).popUntil((route) =>
              route.settings.name ==
              Routes.navigationBar)}
          ),
        ),

        body: MultiBlocProvider(
            providers: [
              BlocProvider<FollowingBloc>(
                create: (context) => getIt<FollowingBloc>()
                  ..add(const FollowingEvent.watchAllFollowingList()),
              ),

            ],
            child: FollowingBuilder()
        )
    );
  }
}
