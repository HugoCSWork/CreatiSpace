// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'join_stream_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$JoinStreamEventTearOff {
  const _$JoinStreamEventTearOff();

// ignore: unused_element
  _JoinStream joinStream(String workshopId) {
    return _JoinStream(
      workshopId,
    );
  }

// ignore: unused_element
  _JoinStreamResponse joinStreamResponse(Either<String, String> failureOrItem) {
    return _JoinStreamResponse(
      failureOrItem,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $JoinStreamEvent = _$JoinStreamEventTearOff();

/// @nodoc
mixin _$JoinStreamEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult joinStream(String workshopId),
    @required TResult joinStreamResponse(Either<String, String> failureOrItem),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult joinStream(String workshopId),
    TResult joinStreamResponse(Either<String, String> failureOrItem),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult joinStream(_JoinStream value),
    @required TResult joinStreamResponse(_JoinStreamResponse value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult joinStream(_JoinStream value),
    TResult joinStreamResponse(_JoinStreamResponse value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $JoinStreamEventCopyWith<$Res> {
  factory $JoinStreamEventCopyWith(
          JoinStreamEvent value, $Res Function(JoinStreamEvent) then) =
      _$JoinStreamEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$JoinStreamEventCopyWithImpl<$Res>
    implements $JoinStreamEventCopyWith<$Res> {
  _$JoinStreamEventCopyWithImpl(this._value, this._then);

  final JoinStreamEvent _value;
  // ignore: unused_field
  final $Res Function(JoinStreamEvent) _then;
}

/// @nodoc
abstract class _$JoinStreamCopyWith<$Res> {
  factory _$JoinStreamCopyWith(
          _JoinStream value, $Res Function(_JoinStream) then) =
      __$JoinStreamCopyWithImpl<$Res>;
  $Res call({String workshopId});
}

/// @nodoc
class __$JoinStreamCopyWithImpl<$Res>
    extends _$JoinStreamEventCopyWithImpl<$Res>
    implements _$JoinStreamCopyWith<$Res> {
  __$JoinStreamCopyWithImpl(
      _JoinStream _value, $Res Function(_JoinStream) _then)
      : super(_value, (v) => _then(v as _JoinStream));

  @override
  _JoinStream get _value => super._value as _JoinStream;

  @override
  $Res call({
    Object workshopId = freezed,
  }) {
    return _then(_JoinStream(
      workshopId == freezed ? _value.workshopId : workshopId as String,
    ));
  }
}

/// @nodoc
class _$_JoinStream implements _JoinStream {
  const _$_JoinStream(this.workshopId) : assert(workshopId != null);

  @override
  final String workshopId;

  @override
  String toString() {
    return 'JoinStreamEvent.joinStream(workshopId: $workshopId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JoinStream &&
            (identical(other.workshopId, workshopId) ||
                const DeepCollectionEquality()
                    .equals(other.workshopId, workshopId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(workshopId);

  @JsonKey(ignore: true)
  @override
  _$JoinStreamCopyWith<_JoinStream> get copyWith =>
      __$JoinStreamCopyWithImpl<_JoinStream>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult joinStream(String workshopId),
    @required TResult joinStreamResponse(Either<String, String> failureOrItem),
  }) {
    assert(joinStream != null);
    assert(joinStreamResponse != null);
    return joinStream(workshopId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult joinStream(String workshopId),
    TResult joinStreamResponse(Either<String, String> failureOrItem),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (joinStream != null) {
      return joinStream(workshopId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult joinStream(_JoinStream value),
    @required TResult joinStreamResponse(_JoinStreamResponse value),
  }) {
    assert(joinStream != null);
    assert(joinStreamResponse != null);
    return joinStream(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult joinStream(_JoinStream value),
    TResult joinStreamResponse(_JoinStreamResponse value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (joinStream != null) {
      return joinStream(this);
    }
    return orElse();
  }
}

abstract class _JoinStream implements JoinStreamEvent {
  const factory _JoinStream(String workshopId) = _$_JoinStream;

  String get workshopId;
  @JsonKey(ignore: true)
  _$JoinStreamCopyWith<_JoinStream> get copyWith;
}

/// @nodoc
abstract class _$JoinStreamResponseCopyWith<$Res> {
  factory _$JoinStreamResponseCopyWith(
          _JoinStreamResponse value, $Res Function(_JoinStreamResponse) then) =
      __$JoinStreamResponseCopyWithImpl<$Res>;
  $Res call({Either<String, String> failureOrItem});
}

/// @nodoc
class __$JoinStreamResponseCopyWithImpl<$Res>
    extends _$JoinStreamEventCopyWithImpl<$Res>
    implements _$JoinStreamResponseCopyWith<$Res> {
  __$JoinStreamResponseCopyWithImpl(
      _JoinStreamResponse _value, $Res Function(_JoinStreamResponse) _then)
      : super(_value, (v) => _then(v as _JoinStreamResponse));

  @override
  _JoinStreamResponse get _value => super._value as _JoinStreamResponse;

  @override
  $Res call({
    Object failureOrItem = freezed,
  }) {
    return _then(_JoinStreamResponse(
      failureOrItem == freezed
          ? _value.failureOrItem
          : failureOrItem as Either<String, String>,
    ));
  }
}

/// @nodoc
class _$_JoinStreamResponse implements _JoinStreamResponse {
  const _$_JoinStreamResponse(this.failureOrItem)
      : assert(failureOrItem != null);

  @override
  final Either<String, String> failureOrItem;

  @override
  String toString() {
    return 'JoinStreamEvent.joinStreamResponse(failureOrItem: $failureOrItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _JoinStreamResponse &&
            (identical(other.failureOrItem, failureOrItem) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrItem, failureOrItem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrItem);

  @JsonKey(ignore: true)
  @override
  _$JoinStreamResponseCopyWith<_JoinStreamResponse> get copyWith =>
      __$JoinStreamResponseCopyWithImpl<_JoinStreamResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult joinStream(String workshopId),
    @required TResult joinStreamResponse(Either<String, String> failureOrItem),
  }) {
    assert(joinStream != null);
    assert(joinStreamResponse != null);
    return joinStreamResponse(failureOrItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult joinStream(String workshopId),
    TResult joinStreamResponse(Either<String, String> failureOrItem),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (joinStreamResponse != null) {
      return joinStreamResponse(failureOrItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult joinStream(_JoinStream value),
    @required TResult joinStreamResponse(_JoinStreamResponse value),
  }) {
    assert(joinStream != null);
    assert(joinStreamResponse != null);
    return joinStreamResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult joinStream(_JoinStream value),
    TResult joinStreamResponse(_JoinStreamResponse value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (joinStreamResponse != null) {
      return joinStreamResponse(this);
    }
    return orElse();
  }
}

abstract class _JoinStreamResponse implements JoinStreamEvent {
  const factory _JoinStreamResponse(Either<String, String> failureOrItem) =
      _$_JoinStreamResponse;

  Either<String, String> get failureOrItem;
  @JsonKey(ignore: true)
  _$JoinStreamResponseCopyWith<_JoinStreamResponse> get copyWith;
}

/// @nodoc
class _$JoinStreamStateTearOff {
  const _$JoinStreamStateTearOff();

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
const $JoinStreamState = _$JoinStreamStateTearOff();

/// @nodoc
mixin _$JoinStreamState {
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
abstract class $JoinStreamStateCopyWith<$Res> {
  factory $JoinStreamStateCopyWith(
          JoinStreamState value, $Res Function(JoinStreamState) then) =
      _$JoinStreamStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$JoinStreamStateCopyWithImpl<$Res>
    implements $JoinStreamStateCopyWith<$Res> {
  _$JoinStreamStateCopyWithImpl(this._value, this._then);

  final JoinStreamState _value;
  // ignore: unused_field
  final $Res Function(JoinStreamState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$JoinStreamStateCopyWithImpl<$Res>
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
    return 'JoinStreamState.initial()';
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

abstract class _Initial implements JoinStreamState {
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
    extends _$JoinStreamStateCopyWithImpl<$Res>
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
    return 'JoinStreamState.loadInProgress()';
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

abstract class _LoadInProgress implements JoinStreamState {
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
    extends _$JoinStreamStateCopyWithImpl<$Res>
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
    return 'JoinStreamState.loadSuccess(streamId: $streamId)';
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

abstract class _LoadSuccess implements JoinStreamState {
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
    extends _$JoinStreamStateCopyWithImpl<$Res>
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
    return 'JoinStreamState.loadFailure(error: $error)';
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

abstract class _LoadFailure implements JoinStreamState {
  const factory _LoadFailure(String error) = _$_LoadFailure;

  String get error;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
