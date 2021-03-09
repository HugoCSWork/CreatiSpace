import 'package:bloc_test/bloc_test.dart';
import 'package:creatispace/app/search/item/search_item_bloc.dart';
import 'package:creatispace/app/search/user/search_user_bloc.dart';
import 'package:creatispace/domain/items/home_item/home_item.dart';
import 'package:creatispace/domain/items/item_error/item_error_failures.dart';
import 'package:creatispace/domain/items/item_image/item_image.dart';
import 'package:creatispace/domain/items/value_objects.dart';
import 'package:creatispace/domain/profile/profile_data/user_profile.dart';
import 'package:creatispace/domain/profile/value_objects.dart';
import 'package:creatispace/infrastructure/search/search_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:mockito/mockito.dart';

class MockSearchRepository extends Mock implements SearchRepository {}

final String search = "item";

final KtList<UserProfileData> userProfileData = KtList.of(
    UserProfileData(
      id: '',
      description: ProfileDescription(''),
      profileImageURL: ProfileImageURL(''),
      username: ProfileName(''),
      followers: ProfileFollowers(0),
      following: ProfileFollowing(0),
      backgroundImageURL: ProfileBackgroundImageURL('')
    )
);

Stream<Either<ItemErrorFailure, KtList<UserProfileData>>> getReturn(String response) async* {

  if(response == "success") {
    yield right(userProfileData);
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
  group('SearchUserBloc', () {
    blocTest(
        'Retrieving data successfully will show states [Loading, LoadSuccessful]',
        build: () {
          when(mockSearchRepository.searchForUsers(search))
              .thenAnswer((_)  => getReturn("success"));
          return SearchUserBloc(mockSearchRepository);
        },
        act: (bloc) => bloc.add(SearchUserEvent.search(search)),
        expect: [
          SearchUserState.loadInProgress(),
          SearchUserState.loadSuccess(userProfileData)
        ]
    );
    blocTest(
        'Error with invalid_permissions will retrieve states [Loading, loadFailure]',
        build: () {
          when(mockSearchRepository.searchForUsers(search))
              .thenAnswer((_)  => getReturn("invalid_permissions"));
          return SearchUserBloc(mockSearchRepository);
        },
        act: (bloc) => bloc.add(SearchUserEvent.search(search)),
        expect: [
          SearchUserState.loadInProgress(),
          SearchUserState.loadFailure(ItemErrorFailure.insufficientPermissions())
        ]
    );
    blocTest(
        'Error with invalid_permissions will retrieve states [Loading, loadFailure]',
        build: () {
          when(mockSearchRepository.searchForUsers(search))
              .thenAnswer((_)  => getReturn("unexpected"));
          return SearchUserBloc(mockSearchRepository);
        },
        act: (bloc) => bloc.add(SearchUserEvent.search(search)),
        expect: [
          SearchUserState.loadInProgress(),
          SearchUserState.loadFailure(ItemErrorFailure.unexpected())
        ]
    );
  });
}