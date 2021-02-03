part of 'item_home_watcher_bloc.dart';

@freezed
abstract class ItemHomeWatcherEvent with _$ItemHomeWatcherEvent {
  const factory ItemHomeWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory ItemHomeWatcherEvent.itemsReceived(
      Either<ItemErrorFailure, KtList<HomeItem>> failureOrNotes,
      ) = _ItemsReceived;

}