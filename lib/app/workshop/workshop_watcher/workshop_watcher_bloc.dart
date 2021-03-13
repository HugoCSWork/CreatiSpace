import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:creatispace/domain/workshop/i_workshop_facade.dart';
import 'package:creatispace/domain/workshop/workshop.dart';
import 'package:creatispace/domain/workshop/workshop_error_failures/workshop_error_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'workshop_watcher_bloc.freezed.dart';
part 'workshop_watcher_event.dart';
part 'workshop_watcher_state.dart';

@injectable
class WorkshopWatcherBloc extends Bloc<WorkshopWatcherEvent, WorkshopWatcherState> {
  final IWorkshopFacade _iWorkshopFacade;

  WorkshopWatcherBloc(this._iWorkshopFacade)
      : super(WorkshopWatcherState.initial());

  StreamSubscription<Either<WorkshopErrorFailures, KtList<Workshop>>>
  _workshopStreamSubscription;

  @override
  Stream<WorkshopWatcherState> mapEventToState(
    WorkshopWatcherEvent event,
  ) async* {
    yield* event.map(
        watchAllWorkshopsStarted: (e) async* {
          yield const WorkshopWatcherState.loadInProgress();
          await _workshopStreamSubscription?.cancel();
          _workshopStreamSubscription = _iWorkshopFacade.watchAllUserWorkshops().listen(
                (failureOrItems) =>
                add(WorkshopWatcherEvent.workshopsReceived(failureOrItems)),
          );
        },
        workshopsReceived: (e) async* {
          yield e.failureOrWorkshops.fold(
                (f) => WorkshopWatcherState.loadFailure(f),
                (items) => WorkshopWatcherState.loadSuccess(items),
          );
        }
    );
  }
}
