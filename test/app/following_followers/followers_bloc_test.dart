import 'package:bloc_test/bloc_test.dart';
import 'package:creatispace/app/following_followers/followers/followers_bloc.dart';
import 'package:creatispace/domain/following_followers/following_follower/following_follower.dart';
import 'package:creatispace/domain/following_followers/following_follower_error/following_follower_error_failures.dart';
import 'package:creatispace/infrastructure/following_followers/following_followers_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:mockito/mockito.dart';

class MockFollowingFollowersRepository extends Mock implements FollowingFollowerRepository {}

final String id = "123";

KtList<FollowingFollowers> followers = KtList.of(
    FollowingFollowers(
        username: '',
        id: '',
        profileImageURL: ''
    )
);

Stream<Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>> getReturn(String response) async* {

  if(response == "success") {
    yield right(followers);
  } else if(response == "invalid_permissions") {
    yield left(FollowingFollowerErrorFailure.insufficientPermissions());
  } else {
    yield left(FollowingFollowerErrorFailure.unexpected());
  }
}

void main() {
  MockFollowingFollowersRepository mockFollowingFollowersRepository;
  setUp(() {
    mockFollowingFollowersRepository = MockFollowingFollowersRepository();
  });
  group('FollowersBloc', () {
    blocTest(
        'Retrieving data successfully will show states [Loading, LoadSuccessful]',
        build: () {
          when(mockFollowingFollowersRepository.getAllFollowers())
              .thenAnswer((_)  => getReturn("success"));
          return FollowersBloc(mockFollowingFollowersRepository);
        },
        act: (bloc) => bloc.add(FollowersEvent.watchAllFollowersList()),
        expect: [
          FollowersState.loadInProgress(),
          FollowersState.loadSuccess(followers)
        ]
    );
    blocTest(
        'Error with invalid_permissions will retrieve states [Loading, loadFailure]',
        build: () {
          when(mockFollowingFollowersRepository.getAllFollowers())
              .thenAnswer((_)  => getReturn("invalid_permissions"));
          return FollowersBloc(mockFollowingFollowersRepository);
        },
        act: (bloc) => bloc.add(FollowersEvent.watchAllFollowersList()),
        expect: [
          FollowersState.loadInProgress(),
          FollowersState.loadFailure(FollowingFollowerErrorFailure.insufficientPermissions())
        ]
    );
    blocTest(
        'Error with invalid_permissions will retrieve states [Loading, loadFailure]',
        build: () {
          when(mockFollowingFollowersRepository.getAllFollowers())
              .thenAnswer((_)  => getReturn("unexpected"));
          return FollowersBloc(mockFollowingFollowersRepository);
        },
        act: (bloc) => bloc.add(FollowersEvent.watchAllFollowersList()),
        expect: [
          FollowersState.loadInProgress(),
          FollowersState.loadFailure(FollowingFollowerErrorFailure.unexpected())
        ]
    );
  });
}