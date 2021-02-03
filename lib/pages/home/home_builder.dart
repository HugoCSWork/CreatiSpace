import 'package:creatispace/app/item/item_home_watcher/item_home_watcher_bloc.dart';
import 'package:creatispace/domain/items/home_item/home_item.dart';
import 'package:creatispace/domain/items/item/item.dart';
import 'package:creatispace/pages/home/home.dart';
import 'package:creatispace/pages/profile/user_profile/user_profile_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemHomeWatcherBloc, ItemHomeWatcherState>(
        builder: (context, state) {
          return state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => Center(child: CircularProgressIndicator()),
              loadSuccess: (state) => Container(
                  child: Column(
                      children: state.items.asList().map((HomeItem item) {
                        return Home(homeItem: item);
                      }).toList())
              ),
              loadFailure: (_) =>  Container()
          );
        },
    );
  }
}
