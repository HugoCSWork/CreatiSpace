import 'package:creatispace/app/item/item_watcher/item_watcher_bloc.dart';
import 'package:creatispace/pages/items/items_overview/widgets/critical_failure_display_widget.dart';
import 'package:creatispace/pages/items/items_overview/widgets/error_item_card.dart';
import 'package:creatispace/pages/items/items_overview/widgets/item_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ItemOverviewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemWatcherBloc, ItemWatcherState>(
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
                    return ErrorItemCard(item: item);
                  } else {
                    return ItemCard(item: item);
                  }
                },
                itemCount: state.items.size,
              );
            },
            loadFailure: (state) {
              return CriticalFailureDisplay(itemFailure: state.itemFailure);
            });
      },
    );
  }
}
