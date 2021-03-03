part of 'start_stream_bloc.dart';

@freezed
abstract class StartStreamEvent with _$StartStreamEvent {
  const factory StartStreamEvent.startStream(String workshopId) = _StartStream;
  const factory StartStreamEvent.startStreamResponse(
      Either<String, String> failureOrItem,
      ) = _StartStreamResponse;
}