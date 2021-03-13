import 'package:creatispace/app/item/item_watcher/item_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ItemSwitch extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final toggleState = useState(true);
    final toggleState2 = useState(true);

    return Padding(
      // Read the current value from the counter
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          InkResponse(
            onTap: () {
              toggleState.value = !toggleState.value;
              context.read<ItemWatcherBloc>().add(
                toggleState.value
                  ? toggleState2.value
                      ? const ItemWatcherEvent.watchAllStarted()
                      : const ItemWatcherEvent.watchUnpurchasableStarted()
                  : toggleState2.value
                      ? const ItemWatcherEvent.watchPurchasableStarted()
                      : const ItemWatcherEvent.watchAllStarted()
              );
            },
            child: toggleState.value
                ? const Icon(Icons.check_box)
                : const Icon(Icons.check_box_outline_blank),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(3, 0, 6, 0),
            child: Text('Display'),
          ),
          InkResponse(
            onTap: () {
              toggleState2.value = !toggleState2.value;
              context.read<ItemWatcherBloc>().add(
                toggleState.value
                  ? toggleState2.value
                      ? const ItemWatcherEvent.watchAllStarted()
                      : const ItemWatcherEvent.watchUnpurchasableStarted()
                  : toggleState2.value
                      ? const ItemWatcherEvent.watchPurchasableStarted()
                      : const ItemWatcherEvent.watchAllStarted()
              );
              // context.bloc()<ItemWatcherBloc>().add(toggleState.value ? const ItemWatcherEvent.watchPurchasableStarted() : const ItemWatcherEvent.watchAllStarted());
            },
            child: toggleState2.value
                ? const Icon(Icons.check_box)
                : const Icon(Icons.check_box_outline_blank),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(3, 0, 6, 0),
            child: Text('Selling'),
          ),
        ],
      ),
    );
  }
}
