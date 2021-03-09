import 'package:bloc_test/bloc_test.dart';
import 'package:creatispace/app/streaming/end_stream/end_stream_bloc.dart';
import 'package:creatispace/infrastructure/streaming/streaming_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockStreamingRepository extends Mock implements StreamingRepository {}

final String id = "123";

Future<Either<String,Unit>> getReturn(String response) async {

  if(response == "success") {
    return right(unit);
  } else {
    return left("Error ending stream");
  }
}

void main() {
  MockStreamingRepository mockStreamingRepository;
  setUp(() {
    mockStreamingRepository = MockStreamingRepository();
  });
  group('EndStreamBloc', () {
    blocTest(
        'Retrieving data successfully will show states [Loading, LoadSuccessful]',
        build: () {
          when(mockStreamingRepository.endStream(id))
              .thenAnswer((_) async => getReturn("success"));
          return EndStreamBloc(mockStreamingRepository);
        },
        act: (bloc) => bloc.add(EndStreamEvent.endStream(id)),
        expect: [
          EndStreamState.loadInProgress(),
          EndStreamState.loadSuccess()
        ]
    );
    blocTest(
        'Error with invalid_permissions will retrieve states [Loading, loadFailure]',
        build: () {
          when(mockStreamingRepository.endStream(id))
              .thenAnswer((_) async => getReturn("error"));
          return EndStreamBloc(mockStreamingRepository);
        },
        act: (bloc) => bloc.add(EndStreamEvent.endStream(id)),
        expect: [
          EndStreamState.loadInProgress(),
          EndStreamState.loadFailure("Error ending stream")
        ]
    );
  });
}