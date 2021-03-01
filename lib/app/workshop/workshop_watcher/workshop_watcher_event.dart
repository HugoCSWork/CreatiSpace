part of 'workshop_watcher_bloc.dart';

@freezed
abstract class WorkshopWatcherEvent with _$WorkshopWatcherEvent {
  const factory WorkshopWatcherEvent.watchAllWorkshopsStarted() = _WatchAllWorkshopsStarted;
  const factory WorkshopWatcherEvent.workshopsReceived(
      Either<WorkshopErrorFailures, KtList<Workshop>> failureOrWorkshops,
      ) = _WorkshopsReceived;
}