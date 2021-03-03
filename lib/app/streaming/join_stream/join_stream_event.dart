part of 'join_stream_bloc.dart';

@freezed
abstract class JoinStreamEvent with _$JoinStreamEvent {
  const factory JoinStreamEvent.joinStream(String workshopId) = _JoinStream;
  const factory JoinStreamEvent.joinStreamResponse(
      Either<String, String> failureOrItem,
      ) = _JoinStreamResponse;
}