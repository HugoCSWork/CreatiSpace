part of 'workshop_watcher_bloc.dart';

@freezed
abstract class WorkshopWatcherState with _$WorkshopWatcherState {
  const factory WorkshopWatcherState.initial() = _Initial;
  const factory WorkshopWatcherState.loadInProgress() = _LoadInProgress;
  const factory WorkshopWatcherState.loadSuccess(KtList<Workshop> items) = _LoadSuccess;
  const factory WorkshopWatcherState.loadFailure(WorkshopErrorFailures itemFailure) = _LoadFailure;
}
