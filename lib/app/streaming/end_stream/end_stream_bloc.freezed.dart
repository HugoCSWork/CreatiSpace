// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'end_stream_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$EndStreamEventTearOff {
  const _$EndStreamEventTearOff();

// ignore: unused_element
  _EndStream endStream(String workshopId) {
    return _EndStream(
      workshopId,
    );
  }

// ignore: unused_element
  _EndStreamResponse endStreamResponse(Either<String, Unit> failureOrItem) {
    return _EndStreamResponse(
      failureOrItem,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $EndStreamEvent = _$EndStreamEventTearOff();

/// @nodoc
mixin _$EndStreamEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult endStream(String workshopId),
    @required TResult endStreamResponse(Either<String, Unit> failureOrItem),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult endStream(String workshopId),
    TResult endStreamResponse(Either<String, Unit> failureOrItem),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult endStream(_EndStream value),
    @required TResult endStreamResponse(_EndStreamResponse value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult endStream(_EndStream value),
    TResult endStreamResponse(_EndStreamResponse value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $EndStreamEventCopyWith<$Res> {
  factory $EndStreamEventCopyWith(
          EndStreamEvent value, $Res Function(EndStreamEvent) then) =
      _$EndStreamEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EndStreamEventCopyWithImpl<$Res>
    implements $EndStreamEventCopyWith<$Res> {
  _$EndStreamEventCopyWithImpl(this._value, this._then);

  final EndStreamEvent _value;
  // ignore: unused_field
  final $Res Function(EndStreamEvent) _then;
}

/// @nodoc
abstract class _$EndStreamCopyWith<$Res> {
  factory _$EndStreamCopyWith(
          _EndStream value, $Res Function(_EndStream) then) =
      __$EndStreamCopyWithImpl<$Res>;
  $Res call({String workshopId});
}

/// @nodoc
class __$EndStreamCopyWithImpl<$Res> extends _$EndStreamEventCopyWithImpl<$Res>
    implements _$EndStreamCopyWith<$Res> {
  __$EndStreamCopyWithImpl(_EndStream _value, $Res Function(_EndStream) _then)
      : super(_value, (v) => _then(v as _EndStream));

  @override
  _EndStream get _value => super._value as _EndStream;

  @override
  $Res call({
    Object workshopId = freezed,
  }) {
    return _then(_EndStream(
      workshopId == freezed ? _value.workshopId : workshopId as String,
    ));
  }
}

/// @nodoc
class _$_EndStream implements _EndStream {
  const _$_EndStream(this.workshopId) : assert(workshopId != null);

  @override
  final String workshopId;

  @override
  String toString() {
    return 'EndStreamEvent.endStream(workshopId: $workshopId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EndStream &&
            (identical(other.workshopId, workshopId) ||
                const DeepCollectionEquality()
                    .equals(other.workshopId, workshopId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(workshopId);

  @override
  _$EndStreamCopyWith<_EndStream> get copyWith =>
      __$EndStreamCopyWithImpl<_EndStream>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult endStream(String workshopId),
    @required TResult endStreamResponse(Either<String, Unit> failureOrItem),
  }) {
    assert(endStream != null);
    assert(endStreamResponse != null);
    return endStream(workshopId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult endStream(String workshopId),
    TResult endStreamResponse(Either<String, Unit> failureOrItem),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (endStream != null) {
      return endStream(workshopId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult endStream(_EndStream value),
    @required TResult endStreamResponse(_EndStreamResponse value),
  }) {
    assert(endStream != null);
    assert(endStreamResponse != null);
    return endStream(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult endStream(_EndStream value),
    TResult endStreamResponse(_EndStreamResponse value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (endStream != null) {
      return endStream(this);
    }
    return orElse();
  }
}

abstract class _EndStream implements EndStreamEvent {
  const factory _EndStream(String workshopId) = _$_EndStream;

  String get workshopId;
  _$EndStreamCopyWith<_EndStream> get copyWith;
}

/// @nodoc
abstract class _$EndStreamResponseCopyWith<$Res> {
  factory _$EndStreamResponseCopyWith(
          _EndStreamResponse value, $Res Function(_EndStreamResponse) then) =
      __$EndStreamResponseCopyWithImpl<$Res>;
  $Res call({Either<String, Unit> failureOrItem});
}

/// @nodoc
class __$EndStreamResponseCopyWithImpl<$Res>
    extends _$EndStreamEventCopyWithImpl<$Res>
    implements _$EndStreamResponseCopyWith<$Res> {
  __$EndStreamResponseCopyWithImpl(
      _EndStreamResponse _value, $Res Function(_EndStreamResponse) _then)
      : super(_value, (v) => _then(v as _EndStreamResponse));

  @override
  _EndStreamResponse get _value => super._value as _EndStreamResponse;

  @override
  $Res call({
    Object failureOrItem = freezed,
  }) {
    return _then(_EndStreamResponse(
      failureOrItem == freezed
          ? _value.failureOrItem
          : failureOrItem as Either<String, Unit>,
    ));
  }
}

/// @nodoc
class _$_EndStreamResponse implements _EndStreamResponse {
  const _$_EndStreamResponse(this.failureOrItem)
      : assert(failureOrItem != null);

  @override
  final Either<String, Unit> failureOrItem;

  @override
  String toString() {
    return 'EndStreamEvent.endStreamResponse(failureOrItem: $failureOrItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EndStreamResponse &&
            (identical(other.failureOrItem, failureOrItem) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrItem, failureOrItem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrItem);

  @override
  _$EndStreamResponseCopyWith<_EndStreamResponse> get copyWith =>
      __$EndStreamResponseCopyWithImpl<_EndStreamResponse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult endStream(String workshopId),
    @required TResult endStreamResponse(Either<String, Unit> failureOrItem),
  }) {
    assert(endStream != null);
    assert(endStreamResponse != null);
    return endStreamResponse(failureOrItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult endStream(String workshopId),
    TResult endStreamResponse(Either<String, Unit> failureOrItem),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (endStreamResponse != null) {
      return endStreamResponse(failureOrItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult endStream(_EndStream value),
    @required TResult endStreamResponse(_EndStreamResponse value),
  }) {
    assert(endStream != null);
    assert(endStreamResponse != null);
    return endStreamResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult endStream(_EndStream value),
    TResult endStreamResponse(_EndStreamResponse value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (endStreamResponse != null) {
      return endStreamResponse(this);
    }
    return orElse();
  }
}

abstract class _EndStreamResponse implements EndStreamEvent {
  const factory _EndStreamResponse(Either<String, Unit> failureOrItem) =
      _$_EndStreamResponse;

  Either<String, Unit> get failureOrItem;
  _$EndStreamResponseCopyWith<_EndStreamResponse> get copyWith;
}

/// @nodoc
class _$EndStreamStateTearOff {
  const _$EndStreamStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess() {
    return const _LoadSuccess();
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
const $EndStreamState = _$EndStreamStateTearOff();

/// @nodoc
mixin _$EndStreamState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(),
    @required TResult loadFailure(String error),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(),
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
abstract class $EndStreamStateCopyWith<$Res> {
  factory $EndStreamStateCopyWith(
          EndStreamState value, $Res Function(EndStreamState) then) =
      _$EndStreamStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EndStreamStateCopyWithImpl<$Res>
    implements $EndStreamStateCopyWith<$Res> {
  _$EndStreamStateCopyWithImpl(this._value, this._then);

  final EndStreamState _value;
  // ignore: unused_field
  final $Res Function(EndStreamState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$EndStreamStateCopyWithImpl<$Res>
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
    return 'EndStreamState.initial()';
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
    @required TResult loadSuccess(),
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
    TResult loadSuccess(),
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

abstract class _Initial implements EndStreamState {
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
    extends _$EndStreamStateCopyWithImpl<$Res>
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
    return 'EndStreamState.loadInProgress()';
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
    @required TResult loadSuccess(),
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
    TResult loadSuccess(),
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

abstract class _LoadInProgress implements EndStreamState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$EndStreamStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess();

  @override
  String toString() {
    return 'EndStreamState.loadSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(),
    @required TResult loadFailure(String error),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(),
    TResult loadFailure(String error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess();
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

abstract class _LoadSuccess implements EndStreamState {
  const factory _LoadSuccess() = _$_LoadSuccess;
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
    extends _$EndStreamStateCopyWithImpl<$Res>
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
    return 'EndStreamState.loadFailure(error: $error)';
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

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(),
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
    TResult loadSuccess(),
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

abstract class _LoadFailure implements EndStreamState {
  const factory _LoadFailure(String error) = _$_LoadFailure;

  String get error;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
