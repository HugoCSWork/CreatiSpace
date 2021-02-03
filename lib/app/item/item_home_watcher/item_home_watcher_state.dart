part of 'item_home_watcher_bloc.dart';

@freezed
abstract class ItemHomeWatcherState with _$ItemHomeWatcherState {
  const factory ItemHomeWatcherState.initial() = _Initial;
  const factory ItemHomeWatcherState.loadInProgress() = _LoadInProgress;
  const factory ItemHomeWatcherState.loadSuccess(KtList<HomeItem> items) = _LoadSuccess;
  const factory ItemHomeWatcherState.loadFailure(ItemErrorFailure itemFailure) = _LoadFailure;
}
