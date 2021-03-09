import 'package:bloc_test/bloc_test.dart';
import 'package:creatispace/app/search/item/search_item_bloc.dart';
import 'package:creatispace/app/search/user/search_user_bloc.dart';
import 'package:creatispace/app/search/workshop/search_workshop_bloc.dart';
import 'package:creatispace/domain/items/home_item/home_item.dart';
import 'package:creatispace/domain/items/item_error/item_error_failures.dart';
import 'package:creatispace/domain/items/item_image/item_image.dart';
import 'package:creatispace/domain/items/value_objects.dart';
import 'package:creatispace/domain/profile/profile_data/user_profile.dart';
import 'package:creatispace/domain/profile/value_objects.dart';
import 'package:creatispace/domain/workshop/workshop.dart';
import 'package:creatispace/domain/workshop/workshop_error_failures/workshop_error_failures.dart';
import 'package:creatispace/infrastructure/search/search_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:mockito/mockito.dart';

class MockSearchRepository extends Mock implements SearchRepository {}

final String search = "item";

final KtList<Workshop> workshop = KtList.of(
    Workshop.empty()
);

Stream<Either<WorkshopErrorFailures, KtList<Workshop>>> getReturn(String response) async* {

  if(response == "success") {
    yield right(workshop);
  } else if(response == "invalid_permissions") {
    yield left(WorkshopErrorFailures.insufficientPermissions());
  } else {
    yield left(WorkshopErrorFailures.unexpected());
  }
}

void main() {
  MockSearchRepository mockSearchRepository;
  setUp(() {
    mockSearchRepository = MockSearchRepository();
  });
  group('SearchWorkshopBloc', () {
    blocTest(
        'Retrieving data successfully will show states [Loading, LoadSuccessful]',
        build: () {
          when(mockSearchRepository.searchForWorkshops(search))
              .thenAnswer((_)  => getReturn("success"));
          return SearchWorkshopBloc(mockSearchRepository);
        },
        act: (bloc) => bloc.add(SearchWorkshopEvent.search(search)),
        expect: [
          SearchWorkshopState.loadInProgress(),
          SearchWorkshopState.loadSuccess(workshop)
        ]
    );
    blocTest(
        'Error with invalid_permissions will retrieve states [Loading, loadFailure]',
        build: () {
          when(mockSearchRepository.searchForWorkshops(search))
              .thenAnswer((_)  => getReturn("invalid_permissions"));
          return SearchWorkshopBloc(mockSearchRepository);
        },
        act: (bloc) => bloc.add(SearchWorkshopEvent.search(search)),
        expect: [
          SearchWorkshopState.loadInProgress(),
          SearchWorkshopState.loadFailure(WorkshopErrorFailures.insufficientPermissions())
        ]
    );
    blocTest(
        'Error with invalid_permissions will retrieve states [Loading, loadFailure]',
        build: () {
          when(mockSearchRepository.searchForWorkshops(search))
              .thenAnswer((_)  => getReturn("unexpected"));
          return SearchWorkshopBloc(mockSearchRepository);
        },
        act: (bloc) => bloc.add(SearchWorkshopEvent.search(search)),
        expect: [
          SearchWorkshopState.loadInProgress(),
          SearchWorkshopState.loadFailure(WorkshopErrorFailures.unexpected())
        ]
    );
  });
}