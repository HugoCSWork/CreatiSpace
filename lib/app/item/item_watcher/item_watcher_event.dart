part of 'item_watcher_bloc.dart';

@freezed
abstract class ItemWatcherEvent with _$ItemWatcherEvent {
  const factory ItemWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory ItemWatcherEvent.watchUnpurchasableStarted() =
      _WatchUnpurchasableStarted;
  const factory ItemWatcherEvent.watchPurchasableStarted() =
      _WatchPurchasableStarted;
  const factory ItemWatcherEvent.itemsReceived(
    Either<ItemErrorFailure, KtList<Item>> failureOrNotes,
  ) = _ItemsReceived;
}