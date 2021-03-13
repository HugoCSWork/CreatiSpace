import 'package:bloc_test/bloc_test.dart';
import 'package:creatispace/app/streaming/stream_conversation_watcher/stream_conversation_watcher_bloc.dart';
import 'package:creatispace/domain/streaming/streaming_message.dart';
import 'package:creatispace/infrastructure/streaming/streaming_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kt_dart/collection.dart';
import 'package:mockito/mockito.dart';

class MockStreamingRepository extends Mock implements StreamingRepository {}

final String id = "123";

KtList<StreamingMessage> streamingMessages = KtList.of(
    StreamingMessage(
      username: '',
      image: '',
      message: ''
    )
);

Stream<Either<String, KtList<StreamingMessage>>> getReturn(String response) async* {

  if(response == "success") {
    yield right(streamingMessages);
  } else {
    yield left("Error getting messages");
  }
}

void main() {
  MockStreamingRepository mockStreamingRepository;
  setUp(() {
    mockStreamingRepository = MockStreamingRepository();
  });
  group('StartStreamBloc', () {
    blocTest(
        'Retrieving data successfully will show states [Loading, LoadSuccessful]',
        build: () {
          when(mockStreamingRepository.watchAllMessaging(id, id))
              .thenAnswer((_)  => getReturn("success"));
          return StreamConversationWatcherBloc(mockStreamingRepository);
        },
        act: (bloc) => bloc.add(StreamConversationWatcherEvent.watchAllUserConversation(id, id)),
        expect: [
          StreamConversationWatcherState.loadInProgress(),
          StreamConversationWatcherState.loadSuccess(streamingMessages)
        ]
    );
    blocTest(
        'Error with invalid_permissions will retrieve states [Loading, loadFailure]',
        build: () {
          when(mockStreamingRepository.watchAllMessaging(id, id))
              .thenAnswer((_) => getReturn("error"));
          return StreamConversationWatcherBloc(mockStreamingRepository);
        },
        act: (bloc) => bloc.add(StreamConversationWatcherEvent.watchAllUserConversation(id, id)),
        expect: [
          StreamConversationWatcherState.loadInProgress(),
          StreamConversationWatcherState.loadFailure("Error getting messages")
        ]
    );
  });
}