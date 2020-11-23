import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:creatispace/domain/items/i_item_facade.dart';
import 'package:creatispace/domain/items/item/item.dart';
import 'package:creatispace/domain/items/item_error/item_error_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'item_watcher_event.dart';
part 'item_watcher_state.dart';
part 'item_watcher_bloc.freezed.dart';

@injectable
class ItemWatcherBloc extends Bloc<ItemWatcherEvent, ItemWatcherState> {
  final IItemFacade _iItemFacade;

  ItemWatcherBloc(this._iItemFacade) : super(const ItemWatcherState.initial());

  StreamSubscription<Either<ItemErrorFailure, KtList<Item>>>
      _itemStreamSubscription;

  @override
  Stream<ItemWatcherState> mapEventToState(
    ItemWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const ItemWatcherState.loadInProgress();
        await _itemStreamSubscription?.cancel();
        _itemStreamSubscription = _iItemFacade.watchAllUserItems().listen(
              (failureOrItems) =>
                  add(ItemWatcherEvent.itemsReceived(failureOrItems)),
            );
      },
      watchUnpurchasableStarted: (e) async* {
        yield const ItemWatcherState.loadInProgress();
        await _itemStreamSubscription?.cancel();
        _itemStreamSubscription = _iItemFacade.watchUnpurchasable().listen(
              (failureOrItems) =>
                  add(ItemWatcherEvent.itemsReceived(failureOrItems)),
            );
      },
      watchPurchasableStarted: (e) async* {
        yield const ItemWatcherState.loadInProgress();
        await _itemStreamSubscription?.cancel();
        _itemStreamSubscription = _iItemFacade.watchPurchasable().listen(
              (failureOrItems) =>
                  add(ItemWatcherEvent.itemsReceived(failureOrItems)),
            );
      },
      itemsReceived: (e) async* {
        yield e.failureOrNotes.fold(
          (f) => ItemWatcherState.loadFailure(f),
          (items) => ItemWatcherState.loadSuccess(items),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _itemStreamSubscription?.cancel();
    return super.close();
  }
}
