part of 'end_stream_bloc.dart';

@freezed
abstract class EndStreamEvent with _$EndStreamEvent {
  const factory EndStreamEvent.endStream(String workshopId) = _EndStream;
  const factory EndStreamEvent.endStreamResponse(
      Either<String, Unit> failureOrItem,
      ) = _EndStreamResponse;
}