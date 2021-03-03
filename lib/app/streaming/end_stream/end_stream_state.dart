part of 'end_stream_bloc.dart';

@freezed
abstract class EndStreamState with _$EndStreamState {
  const factory EndStreamState.initial() = _Initial;
  const factory EndStreamState.loadInProgress() = _LoadInProgress;
  const factory EndStreamState.loadSuccess() = _LoadSuccess;
  const factory EndStreamState.loadFailure(String error) = _LoadFailure;
}
