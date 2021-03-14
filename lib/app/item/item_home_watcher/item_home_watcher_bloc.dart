import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:creatispace/domain/items/home_item/home_item.dart';
import 'package:creatispace/domain/items/i_item_facade.dart';
import 'package:creatispace/domain/items/item_error/item_error_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'item_home_watcher_bloc.freezed.dart';
part 'item_home_watcher_event.dart';
part 'item_home_watcher_state.dart';

@injectable
class ItemHomeWatcherBloc extends Bloc<ItemHomeWatcherEvent, ItemHomeWatcherState> {
  final IItemFacade _iItemFacade;

  ItemHomeWatcherBloc(this._iItemFacade)
      : super(const ItemHomeWatcherState.initial());

  StreamSubscription<Either<ItemErrorFailure, KtList<HomeItem>>>
  _itemStreamSubscription;

  @override
  Stream<ItemHomeWatcherState> mapEventToState(
    ItemHomeWatcherEvent event,
  ) async* {
    yield* event.map(
        watchAllStarted: (e) async* {
          yield const ItemHomeWatcherState.loadInProgress();
          await _itemStreamSubscription?.cancel();
          _itemStreamSubscription = _iItemFacade.watchAllUserHomeItems().listen(
                (failureOrItems) =>
                add(ItemHomeWatcherEvent.itemsReceived(failureOrItems)),
          );
        },
        itemsReceived: (e) async* {
          yield e.failureOrNotes.fold(
                (f) => ItemHomeWatcherState.loadFailure(f),
                (items) => ItemHomeWatcherState.loadSuccess(items),
          );
        });
  }
}
