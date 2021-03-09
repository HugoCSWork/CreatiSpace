import 'package:bloc_test/bloc_test.dart';
import 'package:creatispace/app/user_messaging/user_conversation_watcher/user_conversation_bloc.dart';
import 'package:creatispace/domain/user_messaging/user_conversation/user_conversation.dart';
import 'package:creatispace/domain/user_messaging/user_list_error/user_messaging_error_failures.dart';
import 'package:creatispace/infrastructure/messaging/messaging_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:mockito/mockito.dart';

class MockUserMessagingRepository extends Mock implements UserMessagesRepository {}


KtList<UserConversation> messages = KtList.of(
    UserConversation(
      timestamp: '',
      content: '',
      idFrom: '',
      idTo: '',
      type: 0
    )
);

Stream<Either<UserErrorFailure, KtList<UserConversation>>> getReturn(String response) async* {

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
  group('UserConversationWatcherBloc', () {
    blocTest(
        'Retrieving data successfully will show states [loadInProgress, LoadSuccessful]',
        build: () {
          when(mockUserMessagingRepository.GetAllUserMessages('test', 'test'))
              .thenAnswer((_) => getReturn("success"));
          return UserConversationBloc(mockUserMessagingRepository);
        },
        act: (bloc) => bloc.add(UserConversationEvent.watchAllUserConversation('test', 'test')),
        expect: [
          UserConversationState.loadInProgress(),
          UserConversationState.loadSuccess(messages)
        ]
    );
    blocTest(
        'Error with invalid_permissions will retrieve states [loadInProgress, loadFailure]',
        build: () {
          when(mockUserMessagingRepository.GetAllUserMessages('test', 'test'))
              .thenAnswer((_) => getReturn("invalid_permissions"));
          return UserConversationBloc(mockUserMessagingRepository);
        },
        act: (bloc) => bloc.add(UserConversationEvent.watchAllUserConversation('test', 'test')),
        expect: [
          UserConversationState.loadInProgress(),
          UserConversationState.loadFailure(UserErrorFailure.insufficientPermissions())
        ]
    );
    blocTest(
        'Error with invalid_permissions will retrieve states [loadInProgress, loadFailure]',
        build: () {
          when(mockUserMessagingRepository.GetAllUserMessages('test', 'test'))
              .thenAnswer((_) => getReturn("unexpected"));
          return UserConversationBloc(mockUserMessagingRepository);
        },
        act: (bloc) => bloc.add(UserConversationEvent.watchAllUserConversation('test', 'test')),
        expect: [
          UserConversationState.loadInProgress(),
          UserConversationState.loadFailure(UserErrorFailure.unexpected())
        ]
    );
  });
}