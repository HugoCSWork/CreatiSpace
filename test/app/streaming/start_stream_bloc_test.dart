import 'package:bloc_test/bloc_test.dart';
import 'package:creatispace/app/streaming/start_stream/start_stream_bloc.dart';
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
    return left("Error starting stream");
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
          when(mockStreamingRepository.startStream(id))
              .thenAnswer((_) async => getReturn("success"));
          return StartStreamBloc(mockStreamingRepository);
        },
        act: (bloc) => bloc.add(StartStreamEvent.startStream(id)),
        expect: [
          StartStreamState.loadInProgress(),
          StartStreamState.loadSuccess(id)
        ]
    );
    blocTest(
        'Error with invalid_permissions will retrieve states [Loading, loadFailure]',
        build: () {
          when(mockStreamingRepository.startStream(id))
              .thenAnswer((_) async => getReturn("error"));
          return StartStreamBloc(mockStreamingRepository);
        },
        act: (bloc) => bloc.add(StartStreamEvent.startStream(id)),
        expect: [
          StartStreamState.loadInProgress(),
          StartStreamState.loadFailure("Error starting stream")
        ]
    );
  });
}