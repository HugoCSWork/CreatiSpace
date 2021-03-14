// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'start_stream_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$StartStreamEventTearOff {
  const _$StartStreamEventTearOff();

// ignore: unused_element
  _StartStream startStream(String workshopId) {
    return _StartStream(
      workshopId,
    );
  }

// ignore: unused_element
  _StartStreamResponse startStreamResponse(
      Either<String, String> failureOrItem) {
    return _StartStreamResponse(
      failureOrItem,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $StartStreamEvent = _$StartStreamEventTearOff();

/// @nodoc
mixin _$StartStreamEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult startStream(String workshopId),
    @required TResult startStreamResponse(Either<String, String> failureOrItem),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult startStream(String workshopId),
    TResult startStreamResponse(Either<String, String> failureOrItem),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult startStream(_StartStream value),
    @required TResult startStreamResponse(_StartStreamResponse value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult startStream(_StartStream value),
    TResult startStreamResponse(_StartStreamResponse value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $StartStreamEventCopyWith<$Res> {
  factory $StartStreamEventCopyWith(
          StartStreamEvent value, $Res Function(StartStreamEvent) then) =
      _$StartStreamEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartStreamEventCopyWithImpl<$Res>
    implements $StartStreamEventCopyWith<$Res> {
  _$StartStreamEventCopyWithImpl(this._value, this._then);

  final StartStreamEvent _value;
  // ignore: unused_field
  final $Res Function(StartStreamEvent) _then;
}

/// @nodoc
abstract class _$StartStreamCopyWith<$Res> {
  factory _$StartStreamCopyWith(
          _StartStream value, $Res Function(_StartStream) then) =
      __$StartStreamCopyWithImpl<$Res>;
  $Res call({String workshopId});
}

/// @nodoc
class __$StartStreamCopyWithImpl<$Res>
    extends _$StartStreamEventCopyWithImpl<$Res>
    implements _$StartStreamCopyWith<$Res> {
  __$StartStreamCopyWithImpl(
      _StartStream _value, $Res Function(_StartStream) _then)
      : super(_value, (v) => _then(v as _StartStream));

  @override
  _StartStream get _value => super._value as _StartStream;

  @override
  $Res call({
    Object workshopId = freezed,
  }) {
    return _then(_StartStream(
      workshopId == freezed ? _value.workshopId : workshopId as String,
    ));
  }
}

/// @nodoc
class _$_StartStream implements _StartStream {
  const _$_StartStream(this.workshopId) : assert(workshopId != null);

  @override
  final String workshopId;

  @override
  String toString() {
    return 'StartStreamEvent.startStream(workshopId: $workshopId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StartStream &&
            (identical(other.workshopId, workshopId) ||
                const DeepCollectionEquality()
                    .equals(other.workshopId, workshopId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(workshopId);

  @JsonKey(ignore: true)
  @override
  _$StartStreamCopyWith<_StartStream> get copyWith =>
      __$StartStreamCopyWithImpl<_StartStream>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult startStream(String workshopId),
    @required TResult startStreamResponse(Either<String, String> failureOrItem),
  }) {
    assert(startStream != null);
    assert(startStreamResponse != null);
    return startStream(workshopId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult startStream(String workshopId),
    TResult startStreamResponse(Either<String, String> failureOrItem),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (startStream != null) {
      return startStream(workshopId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult startStream(_StartStream value),
    @required TResult startStreamResponse(_StartStreamResponse value),
  }) {
    assert(startStream != null);
    assert(startStreamResponse != null);
    return startStream(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult startStream(_StartStream value),
    TResult startStreamResponse(_StartStreamResponse value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (startStream != null) {
      return startStream(this);
    }
    return orElse();
  }
}

abstract class _StartStream implements StartStreamEvent {
  const factory _StartStream(String workshopId) = _$_StartStream;

  String get workshopId;
  @JsonKey(ignore: true)
  _$StartStreamCopyWith<_StartStream> get copyWith;
}

/// @nodoc
abstract class _$StartStreamResponseCopyWith<$Res> {
  factory _$StartStreamResponseCopyWith(_StartStreamResponse value,
          $Res Function(_StartStreamResponse) then) =
      __$StartStreamResponseCopyWithImpl<$Res>;
  $Res call({Either<String, String> failureOrItem});
}

/// @nodoc
class __$StartStreamResponseCopyWithImpl<$Res>
    extends _$StartStreamEventCopyWithImpl<$Res>
    implements _$StartStreamResponseCopyWith<$Res> {
  __$StartStreamResponseCopyWithImpl(
      _StartStreamResponse _value, $Res Function(_StartStreamResponse) _then)
      : super(_value, (v) => _then(v as _StartStreamResponse));

  @override
  _StartStreamResponse get _value => super._value as _StartStreamResponse;

  @override
  $Res call({
    Object failureOrItem = freezed,
  }) {
    return _then(_StartStreamResponse(
      failureOrItem == freezed
          ? _value.failureOrItem
          : failureOrItem as Either<String, String>,
    ));
  }
}

/// @nodoc
class _$_StartStreamResponse implements _StartStreamResponse {
  const _$_StartStreamResponse(this.failureOrItem)
      : assert(failureOrItem != null);

  @override
  final Either<String, String> failureOrItem;

  @override
  String toString() {
    return 'StartStreamEvent.startStreamResponse(failureOrItem: $failureOrItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StartStreamResponse &&
            (identical(other.failureOrItem, failureOrItem) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrItem, failureOrItem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrItem);

  @JsonKey(ignore: true)
  @override
  _$StartStreamResponseCopyWith<_StartStreamResponse> get copyWith =>
      __$StartStreamResponseCopyWithImpl<_StartStreamResponse>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult startStream(String workshopId),
    @required TResult startStreamResponse(Either<String, String> failureOrItem),
  }) {
    assert(startStream != null);
    assert(startStreamResponse != null);
    return startStreamResponse(failureOrItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult startStream(String workshopId),
    TResult startStreamResponse(Either<String, String> failureOrItem),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (startStreamResponse != null) {
      return startStreamResponse(failureOrItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult startStream(_StartStream value),
    @required TResult startStreamResponse(_StartStreamResponse value),
  }) {
    assert(startStream != null);
    assert(startStreamResponse != null);
    return startStreamResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult startStream(_StartStream value),
    TResult startStreamResponse(_StartStreamResponse value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (startStreamResponse != null) {
      return startStreamResponse(this);
    }
    return orElse();
  }
}

abstract class _StartStreamResponse implements StartStreamEvent {
  const factory _StartStreamResponse(Either<String, String> failureOrItem) =
      _$_StartStreamResponse;

  Either<String, String> get failureOrItem;
  @JsonKey(ignore: true)
  _$StartStreamResponseCopyWith<_StartStreamResponse> get copyWith;
}

/// @nodoc
class _$StartStreamStateTearOff {
  const _$StartStreamStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(String streamId) {
    return _LoadSuccess(
      streamId,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(String error) {
    return _LoadFailure(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $StartStreamState = _$StartStreamStateTearOff();

/// @nodoc
mixin _$StartStreamState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(String streamId),
    @required TResult loadFailure(String error),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(String streamId),
    TResult loadFailure(String error),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $StartStreamStateCopyWith<$Res> {
  factory $StartStreamStateCopyWith(
          StartStreamState value, $Res Function(StartStreamState) then) =
      _$StartStreamStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartStreamStateCopyWithImpl<$Res>
    implements $StartStreamStateCopyWith<$Res> {
  _$StartStreamStateCopyWithImpl(this._value, this._then);

  final StartStreamState _value;
  // ignore: unused_field
  final $Res Function(StartStreamState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$StartStreamStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'StartStreamState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(String streamId),
    @required TResult loadFailure(String error),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(String streamId),
    TResult loadFailure(String error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements StartStreamState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$StartStreamStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'StartStreamState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(String streamId),
    @required TResult loadFailure(String error),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(String streamId),
    TResult loadFailure(String error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements StartStreamState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({String streamId});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$StartStreamStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object streamId = freezed,
  }) {
    return _then(_LoadSuccess(
      streamId == freezed ? _value.streamId : streamId as String,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.streamId) : assert(streamId != null);

  @override
  final String streamId;

  @override
  String toString() {
    return 'StartStreamState.loadSuccess(streamId: $streamId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.streamId, streamId) ||
                const DeepCollectionEquality()
                    .equals(other.streamId, streamId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(streamId);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(String streamId),
    @required TResult loadFailure(String error),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(streamId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(String streamId),
    TResult loadFailure(String error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(streamId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements StartStreamState {
  const factory _LoadSuccess(String streamId) = _$_LoadSuccess;

  String get streamId;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$StartStreamStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(_LoadFailure(
      error == freezed ? _value.error : error as String,
    ));
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.error) : assert(error != null);

  @override
  final String error;

  @override
  String toString() {
    return 'StartStreamState.loadFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(String streamId),
    @required TResult loadFailure(String error),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(String streamId),
    TResult loadFailure(String error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements StartStreamState {
  const factory _LoadFailure(String error) = _$_LoadFailure;

  String get error;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
