import 'package:bloc_test/bloc_test.dart';
import 'package:creatispace/app/workshop/workshop_watcher/workshop_watcher_bloc.dart';
import 'package:creatispace/domain/workshop/workshop.dart';
import 'package:creatispace/domain/workshop/workshop_error_failures/workshop_error_failures.dart';
import 'package:creatispace/infrastructure/workshop/workshop_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:mockito/mockito.dart';

class MockWorkshopRepository extends Mock implements WorkshopRepository {}


KtList<Workshop> workshops = KtList.of(
    Workshop.empty()
);

Stream<Either<WorkshopErrorFailures, KtList<Workshop>>> getReturn(String response) async* {

  if(response == "success") {
    yield right(workshops);
  } else if(response == "invalid_permissions") {
    yield left(WorkshopErrorFailures.insufficientPermissions());
  } else {
    yield left(WorkshopErrorFailures.unexpected());
  }
}

void main() {
  MockWorkshopRepository mockWorkshopRepository;
  setUp(() {
    mockWorkshopRepository = MockWorkshopRepository();
  });
  group('watchAllWorkshops', () {
      blocTest(
          'Retrieving data successfully will show states [Loading, LoadSuccessful]',
          build: () {
            when(mockWorkshopRepository.watchAllUserWorkshops())
                .thenAnswer((_) => getReturn("success"));
            return WorkshopWatcherBloc(mockWorkshopRepository);
          },
          act: (bloc) => bloc.add(WorkshopWatcherEvent.watchAllWorkshopsStarted()),
          expect: [
            WorkshopWatcherState.loadInProgress(),
            WorkshopWatcherState.loadSuccess(workshops)
          ]
      );
      blocTest(
          'Error with invalid_permissions will retrieve states [Loading, loadFailure]',
          build: () {
            when(mockWorkshopRepository.watchAllUserWorkshops())
                .thenAnswer((_) => getReturn("invalid_permissions"));
            return WorkshopWatcherBloc(mockWorkshopRepository);
          },
          act: (bloc) => bloc.add(WorkshopWatcherEvent.watchAllWorkshopsStarted()),
          expect: [
            WorkshopWatcherState.loadInProgress(),
            WorkshopWatcherState.loadFailure(WorkshopErrorFailures.insufficientPermissions())
          ]
      );
      blocTest(
          'Any error but invalid_permissions will retrieve states [Loading, loadFailure]',
          build: () {
            when(mockWorkshopRepository.watchAllUserWorkshops())
                .thenAnswer((_) => getReturn("unknown_error"));
            return WorkshopWatcherBloc(mockWorkshopRepository);
          },
          act: (bloc) => bloc.add(WorkshopWatcherEvent.watchAllWorkshopsStarted()),
          expect: [
            WorkshopWatcherState.loadInProgress(),
            WorkshopWatcherState.loadFailure(WorkshopErrorFailures.unexpected())
          ]
      );
  });
}