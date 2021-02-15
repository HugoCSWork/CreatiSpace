import 'package:creatispace/app/auth/is_verified/is_verified_bloc.dart';
import 'package:creatispace/pages/items/items_overview/items_overview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemOverviewBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IsVerifiedBloc, IsVerifiedState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            authenticated: (_) {
              return ItemsOverview();
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
