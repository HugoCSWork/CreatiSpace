import 'package:creatispace/app/item/item_home_watcher/item_home_watcher_bloc.dart';
import 'package:creatispace/app/item/item_watcher/item_watcher_bloc.dart';
import 'package:creatispace/injection.dart';
import 'package:creatispace/pages/home/home_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CreatiSpace"),
      ),
      body: BlocProvider(
        create: (context) => getIt<ItemHomeWatcherBloc>()
          ..add(const ItemHomeWatcherEvent.watchAllStarted()),
        child: Padding(
          padding: const EdgeInsets.only(top: 0.0),
          child: SingleChildScrollView(
              child: HomeBuilder()
          ),
        ),
      ),
    );
  }
}
