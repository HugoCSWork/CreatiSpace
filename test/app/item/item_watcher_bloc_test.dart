import 'package:bloc_test/bloc_test.dart';
import 'package:creatispace/app/item/item_home_watcher/item_home_watcher_bloc.dart';
import 'package:creatispace/app/item/item_watcher/item_watcher_bloc.dart';
import 'package:creatispace/domain/items/item/item.dart';
import 'package:creatispace/domain/items/item_error/item_error_failures.dart';
import 'package:creatispace/infrastructure/items/item_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:mockito/mockito.dart';

class MockItemRepository extends Mock implements ItemRepository {}

final String id = "123";

KtList<Item> item = KtList.of(
    Item.empty()
);

Stream<Either<ItemErrorFailure, KtList<Item>>> getReturn(String response) async* {

  if(response == "success") {
    yield right(item);
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
  group('ItemWatcherBloc', () {
    blocTest(
        'Retrieving data successfully will show states [Loading, LoadSuccessful]',
        build: () {
          when(mockItemRepository.watchAllUserItems())
              .thenAnswer((_)  => getReturn("success"));
          return ItemWatcherBloc(mockItemRepository);
        },
        act: (bloc) => bloc.add(ItemWatcherEvent.watchAllStarted()),
        expect: [
          ItemWatcherState.loadInProgress(),
          ItemWatcherState.loadSuccess(item)
        ]
    );
    blocTest(
        'Retrieving data successfully will show states [Loading, LoadSuccessful]',
        build: () {
          when(mockItemRepository.watchAllUserItems())
              .thenAnswer((_)  => getReturn("invalid_permissions"));
          return ItemWatcherBloc(mockItemRepository);
        },
        act: (bloc) => bloc.add(ItemWatcherEvent.watchAllStarted()),
        expect: [
          ItemWatcherState.loadInProgress(),
          ItemWatcherState.loadFailure(ItemErrorFailure.insufficientPermissions())
        ]
    );
    blocTest(
        'Retrieving data successfully will show states [Loading, LoadSuccessful]',
        build: () {
          when(mockItemRepository.watchAllUserItems())
              .thenAnswer((_)  => getReturn("unexpected"));
          return ItemWatcherBloc(mockItemRepository);
        },
        act: (bloc) => bloc.add(ItemWatcherEvent.watchAllStarted()),
        expect: [
          ItemWatcherState.loadInProgress(),
          ItemWatcherState.loadFailure(ItemErrorFailure.unexpected())
        ]
    );
  });
}