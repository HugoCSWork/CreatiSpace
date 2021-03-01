import 'package:creatispace/app/auth/payment_verified/payment_verified_bloc.dart';
import 'package:creatispace/app/workshop/workshop_watcher/workshop_watcher_bloc.dart';
import 'package:creatispace/pages/items/items_overview/widgets/items/critical_failure_display_widget.dart';
import 'package:creatispace/pages/items/items_overview/widgets/workshop/workshop_card_widget.dart';
import 'package:creatispace/pages/items/items_overview/widgets/workshop/workshop_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WorkshopOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentVerifiedBloc, PaymentVerifiedState>(
    builder: (context, state) {
      return state.map(
          initial: (_) => Container(),
          authenticated: (_) {
            return BlocBuilder<WorkshopWatcherBloc, WorkshopWatcherState>(
                builder: (context, state) {
                  return state.map(
                      initial: (_) => Container(),
                      loadInProgress: (_) =>
                        const Center(child: CircularProgressIndicator()),
                      loadSuccess: (state) {
                        return ListView.builder(
                            itemBuilder: (context, index) {
                              final item = state.items[index];
                              if (item.failureOption.isSome()) {
                                return ErrorWorkshopCard(item: item);
                              } else {
                                return WorkshopCard(item: item);
                              }
                            },
                            itemCount: state.items.size,

                        );
                      },
                      loadFailure: (state) {
                        return CriticalFailureDisplayWorkshop(itemFailure: state.itemFailure);
                      });
                },
            );
          },
          unauthenticated: (_) {
            return Center(child: Text("You must be a seller to host workshops", style: TextStyle(fontWeight: FontWeight.bold),));
          });
    });


  }
}
