import 'package:bloc_test/bloc_test.dart';
import 'package:creatispace/app/following_followers/followers/followers_bloc.dart';
import 'package:creatispace/app/item/item_home_watcher/item_home_watcher_bloc.dart';
import 'package:creatispace/domain/items/home_item/home_item.dart';
import 'package:creatispace/domain/items/item_error/item_error_failures.dart';
import 'package:creatispace/infrastructure/items/item_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:mockito/mockito.dart';

class MockItemRepository extends Mock implements ItemRepository {}

final String id = "123";

KtList<HomeItem> homeItem = KtList.of(
    HomeItem.empty()
);

Stream<Either<ItemErrorFailure, KtList<HomeItem>>> getReturn(String response) async* {

  if(response == "success") {
    yield right(homeItem);
  } else if(response == "invalid_permissions") {
    yield left(ItemErrorFailure.insufficientPermissions());
  } else {
    yield left(ItemErrorFailure.unexpected());
  }
}

void main() {
  MockItemRepository mockItemRepository;
  setUp(() {
    mockItemRepository = MockItemRepository();
  });
  group('ItemHomeWatcherBloc', () {
    blocTest(
        'Retrieving data successfully will show states [Loading, LoadSuccessful]',
        build: () {
          when(mockItemRepository.watchAllUserHomeItems())
              .thenAnswer((_)  => getReturn("success"));
          return ItemHomeWatcherBloc(mockItemRepository);
        },
        act: (bloc) => bloc.add(ItemHomeWatcherEvent.watchAllStarted()),
        expect: [
          ItemHomeWatcherState.loadInProgress(),
          ItemHomeWatcherState.loadSuccess(homeItem)
        ]
    );
    blocTest(
        'Error with invalid_permissions will retrieve states [Loading, loadFailure]',
        build: () {
          when(mockItemRepository.watchAllUserHomeItems())
              .thenAnswer((_)  => getReturn("invalid_permissions"));
          return ItemHomeWatcherBloc(mockItemRepository);
        },
        act: (bloc) => bloc.add(ItemHomeWatcherEvent.watchAllStarted()),
        expect: [
          ItemHomeWatcherState.loadInProgress(),
          ItemHomeWatcherState.loadFailure(ItemErrorFailure.insufficientPermissions())
        ]
    );
    blocTest(
        'Error with invalid_permissions will retrieve states [Loading, loadFailure]',
        build: () {
          when(mockItemRepository.watchAllUserHomeItems())
              .thenAnswer((_)  => getReturn("unexpected"));
          return ItemHomeWatcherBloc(mockItemRepository);
        },
        act: (bloc) => bloc.add(ItemHomeWatcherEvent.watchAllStarted()),
        expect: [
          ItemHomeWatcherState.loadInProgress(),
          ItemHomeWatcherState.loadFailure(ItemErrorFailure.unexpected())
        ]
    );
  });
}