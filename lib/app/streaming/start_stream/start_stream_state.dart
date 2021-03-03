part of 'start_stream_bloc.dart';

@freezed
abstract class StartStreamState with _$StartStreamState {
  const factory StartStreamState.initial() = _Initial;
  const factory StartStreamState.loadInProgress() = _LoadInProgress;
  const factory StartStreamState.loadSuccess(String streamId) = _LoadSuccess;
  const factory StartStreamState.loadFailure(String error) = _LoadFailure;
}
