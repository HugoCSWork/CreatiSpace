import 'package:bloc_test/bloc_test.dart';
import 'package:creatispace/app/streaming/join_stream/join_stream_bloc.dart';
import 'package:creatispace/infrastructure/streaming/streaming_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockStreamingRepository extends Mock implements StreamingRepository {}

final String id = "123";

Future<Either<String,String>> getReturn(String response) async {

  if(response == "success") {
    return right(id);
  } else {
    return left("Error joining stream");
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
          when(mockStreamingRepository.joinStream(id))
              .thenAnswer((_) async => getReturn("success"));
          return JoinStreamBloc(mockStreamingRepository);
        },
        act: (bloc) => bloc.add(JoinStreamEvent.joinStream(id)),
        expect: [
          JoinStreamState.loadInProgress(),
          JoinStreamState.loadSuccess(id)
        ]
    );
    blocTest(
        'Error with invalid_permissions will retrieve states [Loading, loadFailure]',
        build: () {
          when(mockStreamingRepository.joinStream(id))
              .thenAnswer((_) async => getReturn("error"));
          return JoinStreamBloc(mockStreamingRepository);
        },
        act: (bloc) => bloc.add(JoinStreamEvent.joinStream(id)),
        expect: [
          JoinStreamState.loadInProgress(),
          JoinStreamState.loadFailure("Error joining stream")
        ]
    );
  });
}