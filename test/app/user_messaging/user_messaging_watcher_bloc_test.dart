import 'package:bloc_test/bloc_test.dart';
import 'package:creatispace/app/user_messaging/user_messaging_watcher/user_messaging_watcher_bloc.dart';
import 'package:creatispace/domain/user_messaging/user_list/user_messaging.dart';
import 'package:creatispace/domain/user_messaging/user_list_error/user_messaging_error_failures.dart';
import 'package:creatispace/infrastructure/messaging/messaging_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:mockito/mockito.dart';

class MockUserMessagingRepository extends Mock implements UserMessagesRepository {}


KtList<UserMessaging> messages = KtList.of(
    UserMessaging(
      userMessagingName: '',
      imageUrl: '',
      id: '',
      lastMessage: '',
      lastSeen: '',
      userId: '',
      unreadMessages: false
    )
);

Stream<Either<UserErrorFailure, KtList<UserMessaging>>> getReturn(String response) async* {

  if(response == "success") {
    yield right(messages);
  } else if(response == "invalid_permissions") {
    yield left(UserErrorFailure.insufficientPermissions());
  } else {
    yield left(UserErrorFailure.unexpected());
  }
}

void main() {
  MockUserMessagingRepository mockUserMessagingRepository;
  setUp(() {
    mockUserMessagingRepository = MockUserMessagingRepository();
  });
  group('UserMessagingWatcherBloc', () {
    blocTest(
        'Retrieving data successfully will show states [loadInProgress, LoadSuccessful]',
        build: () {
          when(mockUserMessagingRepository.GetAllUserMessagesList())
              .thenAnswer((_) => getReturn("success"));
          return UserMessagingWatcherBloc(mockUserMessagingRepository);
        },
        act: (bloc) => bloc.add(UserMessagingWatcherEvent.watchAllUserMessagingList()),
        expect: [
          UserMessagingWatcherState.loadInProgress(),
          UserMessagingWatcherState.loadSuccess(messages)
        ]
    );
    blocTest(
        'Error with invalid_permissions will retrieve states [loadInProgress, loadFailure]',
        build: () {
          when(mockUserMessagingRepository.GetAllUserMessagesList())
              .thenAnswer((_) => getReturn("invalid_permissions"));
          return UserMessagingWatcherBloc(mockUserMessagingRepository);
        },
        act: (bloc) => bloc.add(UserMessagingWatcherEvent.watchAllUserMessagingList()),
        expect: [
          UserMessagingWatcherState.loadInProgress(),
          UserMessagingWatcherState.loadFailure(UserErrorFailure.insufficientPermissions())
        ]
    );
    blocTest(
        'Error with invalid_permissions will retrieve states [loadInProgress, loadFailure]',
        build: () {
          when(mockUserMessagingRepository.GetAllUserMessagesList())
              .thenAnswer((_) => getReturn("unexpected"));
          return UserMessagingWatcherBloc(mockUserMessagingRepository);
        },
        act: (bloc) => bloc.add(UserMessagingWatcherEvent.watchAllUserMessagingList()),
        expect: [
          UserMessagingWatcherState.loadInProgress(),
          UserMessagingWatcherState.loadFailure(UserErrorFailure.unexpected())
        ]
    );
  });
}