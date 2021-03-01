// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'workshop_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$WorkshopWatcherEventTearOff {
  const _$WorkshopWatcherEventTearOff();

// ignore: unused_element
  _WatchAllWorkshopsStarted watchAllWorkshopsStarted() {
    return const _WatchAllWorkshopsStarted();
  }

// ignore: unused_element
  _WorkshopsReceived workshopsReceived(
      Either<WorkshopErrorFailures, KtList<Workshop>> failureOrWorkshops) {
    return _WorkshopsReceived(
      failureOrWorkshops,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $WorkshopWatcherEvent = _$WorkshopWatcherEventTearOff();

/// @nodoc
mixin _$WorkshopWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllWorkshopsStarted(),
    @required
        TResult workshopsReceived(
            Either<WorkshopErrorFailures, KtList<Workshop>> failureOrWorkshops),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllWorkshopsStarted(),
    TResult workshopsReceived(
        Either<WorkshopErrorFailures, KtList<Workshop>> failureOrWorkshops),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllWorkshopsStarted(_WatchAllWorkshopsStarted value),
    @required TResult workshopsReceived(_WorkshopsReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllWorkshopsStarted(_WatchAllWorkshopsStarted value),
    TResult workshopsReceived(_WorkshopsReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $WorkshopWatcherEventCopyWith<$Res> {
  factory $WorkshopWatcherEventCopyWith(WorkshopWatcherEvent value,
          $Res Function(WorkshopWatcherEvent) then) =
      _$WorkshopWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WorkshopWatcherEventCopyWithImpl<$Res>
    implements $WorkshopWatcherEventCopyWith<$Res> {
  _$WorkshopWatcherEventCopyWithImpl(this._value, this._then);

  final WorkshopWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(WorkshopWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllWorkshopsStartedCopyWith<$Res> {
  factory _$WatchAllWorkshopsStartedCopyWith(_WatchAllWorkshopsStarted value,
          $Res Function(_WatchAllWorkshopsStarted) then) =
      __$WatchAllWorkshopsStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllWorkshopsStartedCopyWithImpl<$Res>
    extends _$WorkshopWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllWorkshopsStartedCopyWith<$Res> {
  __$WatchAllWorkshopsStartedCopyWithImpl(_WatchAllWorkshopsStarted _value,
      $Res Function(_WatchAllWorkshopsStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllWorkshopsStarted));

  @override
  _WatchAllWorkshopsStarted get _value =>
      super._value as _WatchAllWorkshopsStarted;
}

/// @nodoc
class _$_WatchAllWorkshopsStarted implements _WatchAllWorkshopsStarted {
  const _$_WatchAllWorkshopsStarted();

  @override
  String toString() {
    return 'WorkshopWatcherEvent.watchAllWorkshopsStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllWorkshopsStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllWorkshopsStarted(),
    @required
        TResult workshopsReceived(
            Either<WorkshopErrorFailures, KtList<Workshop>> failureOrWorkshops),
  }) {
    assert(watchAllWorkshopsStarted != null);
    assert(workshopsReceived != null);
    return watchAllWorkshopsStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllWorkshopsStarted(),
    TResult workshopsReceived(
        Either<WorkshopErrorFailures, KtList<Workshop>> failureOrWorkshops),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllWorkshopsStarted != null) {
      return watchAllWorkshopsStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllWorkshopsStarted(_WatchAllWorkshopsStarted value),
    @required TResult workshopsReceived(_WorkshopsReceived value),
  }) {
    assert(watchAllWorkshopsStarted != null);
    assert(workshopsReceived != null);
    return watchAllWorkshopsStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllWorkshopsStarted(_WatchAllWorkshopsStarted value),
    TResult workshopsReceived(_WorkshopsReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllWorkshopsStarted != null) {
      return watchAllWorkshopsStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllWorkshopsStarted implements WorkshopWatcherEvent {
  const factory _WatchAllWorkshopsStarted() = _$_WatchAllWorkshopsStarted;
}

/// @nodoc
abstract class _$WorkshopsReceivedCopyWith<$Res> {
  factory _$WorkshopsReceivedCopyWith(
          _WorkshopsReceived value, $Res Function(_WorkshopsReceived) then) =
      __$WorkshopsReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<WorkshopErrorFailures, KtList<Workshop>> failureOrWorkshops});
}

/// @nodoc
class __$WorkshopsReceivedCopyWithImpl<$Res>
    extends _$WorkshopWatcherEventCopyWithImpl<$Res>
    implements _$WorkshopsReceivedCopyWith<$Res> {
  __$WorkshopsReceivedCopyWithImpl(
      _WorkshopsReceived _value, $Res Function(_WorkshopsReceived) _then)
      : super(_value, (v) => _then(v as _WorkshopsReceived));

  @override
  _WorkshopsReceived get _value => super._value as _WorkshopsReceived;

  @override
  $Res call({
    Object failureOrWorkshops = freezed,
  }) {
    return _then(_WorkshopsReceived(
      failureOrWorkshops == freezed
          ? _value.failureOrWorkshops
          : failureOrWorkshops
              as Either<WorkshopErrorFailures, KtList<Workshop>>,
    ));
  }
}

/// @nodoc
class _$_WorkshopsReceived implements _WorkshopsReceived {
  const _$_WorkshopsReceived(this.failureOrWorkshops)
      : assert(failureOrWorkshops != null);

  @override
  final Either<WorkshopErrorFailures, KtList<Workshop>> failureOrWorkshops;

  @override
  String toString() {
    return 'WorkshopWatcherEvent.workshopsReceived(failureOrWorkshops: $failureOrWorkshops)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkshopsReceived &&
            (identical(other.failureOrWorkshops, failureOrWorkshops) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrWorkshops, failureOrWorkshops)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrWorkshops);

  @override
  _$WorkshopsReceivedCopyWith<_WorkshopsReceived> get copyWith =>
      __$WorkshopsReceivedCopyWithImpl<_WorkshopsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllWorkshopsStarted(),
    @required
        TResult workshopsReceived(
            Either<WorkshopErrorFailures, KtList<Workshop>> failureOrWorkshops),
  }) {
    assert(watchAllWorkshopsStarted != null);
    assert(workshopsReceived != null);
    return workshopsReceived(failureOrWorkshops);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllWorkshopsStarted(),
    TResult workshopsReceived(
        Either<WorkshopErrorFailures, KtList<Workshop>> failureOrWorkshops),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (workshopsReceived != null) {
      return workshopsReceived(failureOrWorkshops);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllWorkshopsStarted(_WatchAllWorkshopsStarted value),
    @required TResult workshopsReceived(_WorkshopsReceived value),
  }) {
    assert(watchAllWorkshopsStarted != null);
    assert(workshopsReceived != null);
    return workshopsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllWorkshopsStarted(_WatchAllWorkshopsStarted value),
    TResult workshopsReceived(_WorkshopsReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (workshopsReceived != null) {
      return workshopsReceived(this);
    }
    return orElse();
  }
}

abstract class _WorkshopsReceived implements WorkshopWatcherEvent {
  const factory _WorkshopsReceived(
          Either<WorkshopErrorFailures, KtList<Workshop>> failureOrWorkshops) =
      _$_WorkshopsReceived;

  Either<WorkshopErrorFailures, KtList<Workshop>> get failureOrWorkshops;
  _$WorkshopsReceivedCopyWith<_WorkshopsReceived> get copyWith;
}

/// @nodoc
class _$WorkshopWatcherStateTearOff {
  const _$WorkshopWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(KtList<Workshop> items) {
    return _LoadSuccess(
      items,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(WorkshopErrorFailures itemFailure) {
    return _LoadFailure(
      itemFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $WorkshopWatcherState = _$WorkshopWatcherStateTearOff();

/// @nodoc
mixin _$WorkshopWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<Workshop> items),
    @required TResult loadFailure(WorkshopErrorFailures itemFailure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<Workshop> items),
    TResult loadFailure(WorkshopErrorFailures itemFailure),
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
abstract class $WorkshopWatcherStateCopyWith<$Res> {
  factory $WorkshopWatcherStateCopyWith(WorkshopWatcherState value,
          $Res Function(WorkshopWatcherState) then) =
      _$WorkshopWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WorkshopWatcherStateCopyWithImpl<$Res>
    implements $WorkshopWatcherStateCopyWith<$Res> {
  _$WorkshopWatcherStateCopyWithImpl(this._value, this._then);

  final WorkshopWatcherState _value;
  // ignore: unused_field
  final $Res Function(WorkshopWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$WorkshopWatcherStateCopyWithImpl<$Res>
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
    return 'WorkshopWatcherState.initial()';
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
    @required TResult loadSuccess(KtList<Workshop> items),
    @required TResult loadFailure(WorkshopErrorFailures itemFailure),
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
    TResult loadSuccess(KtList<Workshop> items),
    TResult loadFailure(WorkshopErrorFailures itemFailure),
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

abstract class _Initial implements WorkshopWatcherState {
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
    extends _$WorkshopWatcherStateCopyWithImpl<$Res>
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
    return 'WorkshopWatcherState.loadInProgress()';
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
    @required TResult loadSuccess(KtList<Workshop> items),
    @required TResult loadFailure(WorkshopErrorFailures itemFailure),
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
    TResult loadSuccess(KtList<Workshop> items),
    TResult loadFailure(WorkshopErrorFailures itemFailure),
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

abstract class _LoadInProgress implements WorkshopWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Workshop> items});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$WorkshopWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object items = freezed,
  }) {
    return _then(_LoadSuccess(
      items == freezed ? _value.items : items as KtList<Workshop>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.items) : assert(items != null);

  @override
  final KtList<Workshop> items;

  @override
  String toString() {
    return 'WorkshopWatcherState.loadSuccess(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(items);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<Workshop> items),
    @required TResult loadFailure(WorkshopErrorFailures itemFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<Workshop> items),
    TResult loadFailure(WorkshopErrorFailures itemFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(items);
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

abstract class _LoadSuccess implements WorkshopWatcherState {
  const factory _LoadSuccess(KtList<Workshop> items) = _$_LoadSuccess;

  KtList<Workshop> get items;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({WorkshopErrorFailures itemFailure});

  $WorkshopErrorFailuresCopyWith<$Res> get itemFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$WorkshopWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object itemFailure = freezed,
  }) {
    return _then(_LoadFailure(
      itemFailure == freezed
          ? _value.itemFailure
          : itemFailure as WorkshopErrorFailures,
    ));
  }

  @override
  $WorkshopErrorFailuresCopyWith<$Res> get itemFailure {
    if (_value.itemFailure == null) {
      return null;
    }
    return $WorkshopErrorFailuresCopyWith<$Res>(_value.itemFailure, (value) {
      return _then(_value.copyWith(itemFailure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.itemFailure) : assert(itemFailure != null);

  @override
  final WorkshopErrorFailures itemFailure;

  @override
  String toString() {
    return 'WorkshopWatcherState.loadFailure(itemFailure: $itemFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.itemFailure, itemFailure) ||
                const DeepCollectionEquality()
                    .equals(other.itemFailure, itemFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemFailure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<Workshop> items),
    @required TResult loadFailure(WorkshopErrorFailures itemFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(itemFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<Workshop> items),
    TResult loadFailure(WorkshopErrorFailures itemFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(itemFailure);
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

abstract class _LoadFailure implements WorkshopWatcherState {
  const factory _LoadFailure(WorkshopErrorFailures itemFailure) =
      _$_LoadFailure;

  WorkshopErrorFailures get itemFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
