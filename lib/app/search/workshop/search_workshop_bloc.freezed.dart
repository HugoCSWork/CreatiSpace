// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'search_workshop_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SearchWorkshopEventTearOff {
  const _$SearchWorkshopEventTearOff();

// ignore: unused_element
  _Search search(String search) {
    return _Search(
      search,
    );
  }

// ignore: unused_element
  _SearchReceived searchReceived(
      Either<WorkshopErrorFailures, KtList<Workshop>> searchOrFailure) {
    return _SearchReceived(
      searchOrFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SearchWorkshopEvent = _$SearchWorkshopEventTearOff();

/// @nodoc
mixin _$SearchWorkshopEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult search(String search),
    @required
        TResult searchReceived(
            Either<WorkshopErrorFailures, KtList<Workshop>> searchOrFailure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult search(String search),
    TResult searchReceived(
        Either<WorkshopErrorFailures, KtList<Workshop>> searchOrFailure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult search(_Search value),
    @required TResult searchReceived(_SearchReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult search(_Search value),
    TResult searchReceived(_SearchReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $SearchWorkshopEventCopyWith<$Res> {
  factory $SearchWorkshopEventCopyWith(
          SearchWorkshopEvent value, $Res Function(SearchWorkshopEvent) then) =
      _$SearchWorkshopEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchWorkshopEventCopyWithImpl<$Res>
    implements $SearchWorkshopEventCopyWith<$Res> {
  _$SearchWorkshopEventCopyWithImpl(this._value, this._then);

  final SearchWorkshopEvent _value;
  // ignore: unused_field
  final $Res Function(SearchWorkshopEvent) _then;
}

/// @nodoc
abstract class _$SearchCopyWith<$Res> {
  factory _$SearchCopyWith(_Search value, $Res Function(_Search) then) =
      __$SearchCopyWithImpl<$Res>;
  $Res call({String search});
}

/// @nodoc
class __$SearchCopyWithImpl<$Res>
    extends _$SearchWorkshopEventCopyWithImpl<$Res>
    implements _$SearchCopyWith<$Res> {
  __$SearchCopyWithImpl(_Search _value, $Res Function(_Search) _then)
      : super(_value, (v) => _then(v as _Search));

  @override
  _Search get _value => super._value as _Search;

  @override
  $Res call({
    Object search = freezed,
  }) {
    return _then(_Search(
      search == freezed ? _value.search : search as String,
    ));
  }
}

/// @nodoc
class _$_Search implements _Search {
  const _$_Search(this.search) : assert(search != null);

  @override
  final String search;

  @override
  String toString() {
    return 'SearchWorkshopEvent.search(search: $search)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Search &&
            (identical(other.search, search) ||
                const DeepCollectionEquality().equals(other.search, search)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(search);

  @JsonKey(ignore: true)
  @override
  _$SearchCopyWith<_Search> get copyWith =>
      __$SearchCopyWithImpl<_Search>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult search(String search),
    @required
        TResult searchReceived(
            Either<WorkshopErrorFailures, KtList<Workshop>> searchOrFailure),
  }) {
    assert(search != null);
    assert(searchReceived != null);
    return search(this.search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult search(String search),
    TResult searchReceived(
        Either<WorkshopErrorFailures, KtList<Workshop>> searchOrFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (search != null) {
      return search(this.search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult search(_Search value),
    @required TResult searchReceived(_SearchReceived value),
  }) {
    assert(search != null);
    assert(searchReceived != null);
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult search(_Search value),
    TResult searchReceived(_SearchReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements SearchWorkshopEvent {
  const factory _Search(String search) = _$_Search;

  String get search;
  @JsonKey(ignore: true)
  _$SearchCopyWith<_Search> get copyWith;
}

/// @nodoc
abstract class _$SearchReceivedCopyWith<$Res> {
  factory _$SearchReceivedCopyWith(
          _SearchReceived value, $Res Function(_SearchReceived) then) =
      __$SearchReceivedCopyWithImpl<$Res>;
  $Res call({Either<WorkshopErrorFailures, KtList<Workshop>> searchOrFailure});
}

/// @nodoc
class __$SearchReceivedCopyWithImpl<$Res>
    extends _$SearchWorkshopEventCopyWithImpl<$Res>
    implements _$SearchReceivedCopyWith<$Res> {
  __$SearchReceivedCopyWithImpl(
      _SearchReceived _value, $Res Function(_SearchReceived) _then)
      : super(_value, (v) => _then(v as _SearchReceived));

  @override
  _SearchReceived get _value => super._value as _SearchReceived;

  @override
  $Res call({
    Object searchOrFailure = freezed,
  }) {
    return _then(_SearchReceived(
      searchOrFailure == freezed
          ? _value.searchOrFailure
          : searchOrFailure as Either<WorkshopErrorFailures, KtList<Workshop>>,
    ));
  }
}

/// @nodoc
class _$_SearchReceived implements _SearchReceived {
  const _$_SearchReceived(this.searchOrFailure)
      : assert(searchOrFailure != null);

  @override
  final Either<WorkshopErrorFailures, KtList<Workshop>> searchOrFailure;

  @override
  String toString() {
    return 'SearchWorkshopEvent.searchReceived(searchOrFailure: $searchOrFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchReceived &&
            (identical(other.searchOrFailure, searchOrFailure) ||
                const DeepCollectionEquality()
                    .equals(other.searchOrFailure, searchOrFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(searchOrFailure);

  @JsonKey(ignore: true)
  @override
  _$SearchReceivedCopyWith<_SearchReceived> get copyWith =>
      __$SearchReceivedCopyWithImpl<_SearchReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult search(String search),
    @required
        TResult searchReceived(
            Either<WorkshopErrorFailures, KtList<Workshop>> searchOrFailure),
  }) {
    assert(search != null);
    assert(searchReceived != null);
    return searchReceived(searchOrFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult search(String search),
    TResult searchReceived(
        Either<WorkshopErrorFailures, KtList<Workshop>> searchOrFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchReceived != null) {
      return searchReceived(searchOrFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult search(_Search value),
    @required TResult searchReceived(_SearchReceived value),
  }) {
    assert(search != null);
    assert(searchReceived != null);
    return searchReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult search(_Search value),
    TResult searchReceived(_SearchReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (searchReceived != null) {
      return searchReceived(this);
    }
    return orElse();
  }
}

abstract class _SearchReceived implements SearchWorkshopEvent {
  const factory _SearchReceived(
          Either<WorkshopErrorFailures, KtList<Workshop>> searchOrFailure) =
      _$_SearchReceived;

  Either<WorkshopErrorFailures, KtList<Workshop>> get searchOrFailure;
  @JsonKey(ignore: true)
  _$SearchReceivedCopyWith<_SearchReceived> get copyWith;
}

/// @nodoc
class _$SearchWorkshopStateTearOff {
  const _$SearchWorkshopStateTearOff();

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
const $SearchWorkshopState = _$SearchWorkshopStateTearOff();

/// @nodoc
mixin _$SearchWorkshopState {
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
abstract class $SearchWorkshopStateCopyWith<$Res> {
  factory $SearchWorkshopStateCopyWith(
          SearchWorkshopState value, $Res Function(SearchWorkshopState) then) =
      _$SearchWorkshopStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchWorkshopStateCopyWithImpl<$Res>
    implements $SearchWorkshopStateCopyWith<$Res> {
  _$SearchWorkshopStateCopyWithImpl(this._value, this._then);

  final SearchWorkshopState _value;
  // ignore: unused_field
  final $Res Function(SearchWorkshopState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$SearchWorkshopStateCopyWithImpl<$Res>
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
    return 'SearchWorkshopState.initial()';
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

abstract class _Initial implements SearchWorkshopState {
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
    extends _$SearchWorkshopStateCopyWithImpl<$Res>
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
    return 'SearchWorkshopState.loadInProgress()';
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

abstract class _LoadInProgress implements SearchWorkshopState {
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
    extends _$SearchWorkshopStateCopyWithImpl<$Res>
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
    return 'SearchWorkshopState.loadSuccess(items: $items)';
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

  @JsonKey(ignore: true)
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

abstract class _LoadSuccess implements SearchWorkshopState {
  const factory _LoadSuccess(KtList<Workshop> items) = _$_LoadSuccess;

  KtList<Workshop> get items;
  @JsonKey(ignore: true)
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
    extends _$SearchWorkshopStateCopyWithImpl<$Res>
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
    return 'SearchWorkshopState.loadFailure(itemFailure: $itemFailure)';
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

  @JsonKey(ignore: true)
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

abstract class _LoadFailure implements SearchWorkshopState {
  const factory _LoadFailure(WorkshopErrorFailures itemFailure) =
      _$_LoadFailure;

  WorkshopErrorFailures get itemFailure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
