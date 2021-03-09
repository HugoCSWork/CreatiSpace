import 'package:bloc_test/bloc_test.dart';
import 'package:creatispace/app/item/item_actor/item_actor_bloc.dart';
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


Item item = Item.empty();


Future<Either<ItemErrorFailure, Unit>> getReturn(String response) async {

  if(response == "success") {
    return right(unit);
  } else if(response == "invalid_permissions") {
    return left(ItemErrorFailure.insufficientPermissions());
  } else {
    return left(ItemErrorFailure.unexpected());
  }
}

void main() {
  MockItemRepository mockItemRepository;
  setUp(() {
    mockItemRepository = MockItemRepository();
  });
  group('ItemActorBloc', () {
    blocTest(
        'Retrieving data successfully will show states [Loading, LoadSuccessful]',
        build: () {
          when(mockItemRepository.delete(item))
              .thenAnswer((_)  => getReturn("success"));
          return ItemActorBloc(mockItemRepository);
        },
        act: (bloc) => bloc.add(ItemActorEvent.deleted(item)),
        expect: [
          ItemActorState.actionInProgress(),
          ItemActorState.deleteSuccess()
        ]
    );
    blocTest(
        'Retrieving data successfully will show states [Loading, LoadSuccessful]',
        build: () {
          when(mockItemRepository.delete(item))
              .thenAnswer((_)  => getReturn("invalid_permissions"));
          return ItemActorBloc(mockItemRepository);
        },
        act: (bloc) => bloc.add(ItemActorEvent.deleted(item)),
        expect: [
          ItemActorState.actionInProgress(),
          ItemActorState.deleteFailure(ItemErrorFailure.insufficientPermissions())
        ]
    );
    blocTest(
        'Retrieving data successfully will show states [Loading, LoadSuccessful]',
        build: () {
          when(mockItemRepository.delete(item))
              .thenAnswer((_)  => getReturn("unexpected"));
          return ItemActorBloc(mockItemRepository);
        },
        act: (bloc) => bloc.add(ItemActorEvent.deleted(item)),
        expect: [
          ItemActorState.actionInProgress(),
          ItemActorState.deleteFailure(ItemErrorFailure.unexpected())
        ]
    );
  });
}