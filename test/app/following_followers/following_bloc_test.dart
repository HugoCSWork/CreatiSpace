import 'package:bloc_test/bloc_test.dart';
import 'package:creatispace/app/following_followers/followers/followers_bloc.dart';
import 'package:creatispace/app/following_followers/following/following_bloc.dart';
import 'package:creatispace/app/streaming/stream_conversation_watcher/stream_conversation_watcher_bloc.dart';
import 'package:creatispace/domain/following_followers/following_follower/following_follower.dart';
import 'package:creatispace/domain/following_followers/following_follower_error/following_follower_error_failures.dart';
import 'package:creatispace/domain/streaming/streaming_message.dart';
import 'package:creatispace/infrastructure/following_followers/following_followers_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:mockito/mockito.dart';

class MockFollowingFollowersRepository extends Mock implements FollowingFollowerRepository {}

final String id = "123";

KtList<FollowingFollowers> following = KtList.of(
    FollowingFollowers(
        username: '',
        id: '',
        profileImageURL: ''
    )
);

Stream<Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>> getReturn(String response) async* {

  if(response == "success") {
    yield right(following);
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
  group('FollowingBloc', () {
    blocTest(
        'Retrieving data successfully will show states [Loading, LoadSuccessful]',
        build: () {
          when(mockFollowingFollowersRepository.getAllFollowing())
              .thenAnswer((_)  => getReturn("success"));
          return FollowingBloc(mockFollowingFollowersRepository);
        },
        act: (bloc) => bloc.add(FollowingEvent.watchAllFollowingList()),
        expect: [
          FollowingState.loadInProgress(),
          FollowingState.loadSuccess(following)
        ]
    );
    blocTest(
        'Error with invalid_permissions will retrieve states [Loading, loadFailure]',
        build: () {
          when(mockFollowingFollowersRepository.getAllFollowing())
              .thenAnswer((_)  => getReturn("invalid_permissions"));
          return FollowingBloc(mockFollowingFollowersRepository);
        },
        act: (bloc) => bloc.add(FollowingEvent.watchAllFollowingList()),
        expect: [
          FollowingState.loadInProgress(),
          FollowingState.loadFailure(FollowingFollowerErrorFailure.insufficientPermissions())
        ]
    );
    blocTest(
        'Error with invalid_permissions will retrieve states [Loading, loadFailure]',
        build: () {
          when(mockFollowingFollowersRepository.getAllFollowing())
              .thenAnswer((_)  => getReturn("unexpected"));
          return FollowingBloc(mockFollowingFollowersRepository);
        },
        act: (bloc) => bloc.add(FollowingEvent.watchAllFollowingList()),
        expect: [
          FollowingState.loadInProgress(),
          FollowingState.loadFailure(FollowingFollowerErrorFailure.unexpected())
        ]
    );
  });
}