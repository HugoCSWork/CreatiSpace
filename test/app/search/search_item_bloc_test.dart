import 'package:bloc_test/bloc_test.dart';
import 'package:creatispace/app/search/item/search_item_bloc.dart';
import 'package:creatispace/domain/items/home_item/home_item.dart';
import 'package:creatispace/domain/items/item_error/item_error_failures.dart';
import 'package:creatispace/domain/items/item_image/item_image.dart';
import 'package:creatispace/domain/items/value_objects.dart';
import 'package:creatispace/infrastructure/search/search_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:mockito/mockito.dart';

class MockSearchRepository extends Mock implements SearchRepository {}

final String search = "item";

final KtList<HomeItem> homeItem = KtList.of(
    HomeItem(
        username: '',
        id: '',
        profileImageURL: '',
        timestamp: '',
        quantity: ItemQuantity(0),
        name: ItemName(''),
        delivery: ItemDeliveryFee(0),
        description: ItemDescription(''),
        images: ItemImageList(KtList.of(IndividualImages.empty())),
        item_id: '',
        price: ItemPrice(0),
        purchasable: ItemPurchasable(false),
    )
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
  MockSearchRepository mockSearchRepository;
  setUp(() {
    mockSearchRepository = MockSearchRepository();
  });
  group('SearchItemBloc', () {
    blocTest(
        'Retrieving data successfully will show states [Loading, LoadSuccessful]',
        build: () {
          when(mockSearchRepository.searchForItems(search))
              .thenAnswer((_)  => getReturn("success"));
          return SearchItemBloc(mockSearchRepository);
        },
        act: (bloc) => bloc.add(SearchItemEvent.search(search)),
        expect: [
          SearchItemState.loadInProgress(),
          SearchItemState.loadSuccess(homeItem)
        ]
    );
    blocTest(
        'Error with invalid_permissions will retrieve states [Loading, loadFailure]',
        build: () {
          when(mockSearchRepository.searchForItems(search))
              .thenAnswer((_)  => getReturn("invalid_permissions"));
          return SearchItemBloc(mockSearchRepository);
        },
        act: (bloc) => bloc.add(SearchItemEvent.search(search)),
        expect: [
          SearchItemState.loadInProgress(),
          SearchItemState.loadFailure(ItemErrorFailure.insufficientPermissions())
        ]
    );
    blocTest(
        'Error with invalid_permissions will retrieve states [Loading, loadFailure]',
        build: () {
          when(mockSearchRepository.searchForItems(search))
              .thenAnswer((_)  => getReturn("unexpected"));
          return SearchItemBloc(mockSearchRepository);
        },
        act: (bloc) => bloc.add(SearchItemEvent.search(search)),
        expect: [
          SearchItemState.loadInProgress(),
          SearchItemState.loadFailure(ItemErrorFailure.unexpected())
        ]
    );
  });
}