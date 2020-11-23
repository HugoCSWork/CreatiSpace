part of 'item_watcher_bloc.dart';

@freezed
abstract class ItemWatcherState with _$ItemWatcherState {
  const factory ItemWatcherState.initial() = _Initial;
  const factory ItemWatcherState.loadInProgress() = _LoadInProgress;
  const factory ItemWatcherState.loadSuccess(KtList<Item> items) = _LoadSuccess;
  const factory ItemWatcherState.loadFailure(ItemErrorFailure itemFailure) = _LoadFailure;
}
