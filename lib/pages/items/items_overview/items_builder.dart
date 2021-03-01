import 'package:creatispace/app/auth/is_verified/is_verified_bloc.dart';
import 'package:creatispace/pages/items/items_overview/items_overview.dart';
import 'package:creatispace/pages/items/items_overview/workshop_overview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemOverviewBuilder extends StatelessWidget {

  final bool itemOrWorkshop;

  const ItemOverviewBuilder({Key key, this.itemOrWorkshop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IsVerifiedBloc, IsVerifiedState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            authenticated: (_) {
              return  itemOrWorkshop ? WorkshopOverview() : ItemsOverview();
            },
            unauthenticated: (_) {
              return Container(
                child: Center(child: Text("You shouldn't be able to see this page, contact support")),
              );
            }
        );
      },
    );
  }
}
