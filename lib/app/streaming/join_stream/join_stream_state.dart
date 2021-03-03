part of 'join_stream_bloc.dart';

@freezed
abstract class JoinStreamState with _$JoinStreamState {
  const factory JoinStreamState.initial() = _Initial;
  const factory JoinStreamState.loadInProgress() = _LoadInProgress;
  const factory JoinStreamState.loadSuccess(String streamId) = _LoadSuccess;
  const factory JoinStreamState.loadFailure(String error) = _LoadFailure;
}
