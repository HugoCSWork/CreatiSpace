// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'item_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ItemWatcherEventTearOff {
  const _$ItemWatcherEventTearOff();

// ignore: unused_element
  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

// ignore: unused_element
  _WatchUnpurchasableStarted watchUnpurchasableStarted() {
    return const _WatchUnpurchasableStarted();
  }

// ignore: unused_element
  _WatchPurchasableStarted watchPurchasableStarted() {
    return const _WatchPurchasableStarted();
  }

// ignore: unused_element
  _ItemsReceived itemsReceived(
      Either<ItemErrorFailure, KtList<Item>> failureOrNotes) {
    return _ItemsReceived(
      failureOrNotes,
    );
  }

// ignore: unused_element
  _WatchAllPeerStarted watchAllPeerStarted(String id) {
    return _WatchAllPeerStarted(
      id,
    );
  }

// ignore: unused_element
  _PeerItemsReceived peerItemsReceived(
      Either<ItemErrorFailure, KtList<Item>> failureOrNotes) {
    return _PeerItemsReceived(
      failureOrNotes,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ItemWatcherEvent = _$ItemWatcherEventTearOff();

/// @nodoc
mixin _$ItemWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required TResult watchUnpurchasableStarted(),
    @required TResult watchPurchasableStarted(),
    @required
        TResult itemsReceived(
            Either<ItemErrorFailure, KtList<Item>> failureOrNotes),
    @required TResult watchAllPeerStarted(String id),
    @required
        TResult peerItemsReceived(
            Either<ItemErrorFailure, KtList<Item>> failureOrNotes),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult watchUnpurchasableStarted(),
    TResult watchPurchasableStarted(),
    TResult itemsReceived(
        Either<ItemErrorFailure, KtList<Item>> failureOrNotes),
    TResult watchAllPeerStarted(String id),
    TResult peerItemsReceived(
        Either<ItemErrorFailure, KtList<Item>> failureOrNotes),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required
        TResult watchUnpurchasableStarted(_WatchUnpurchasableStarted value),
    @required TResult watchPurchasableStarted(_WatchPurchasableStarted value),
    @required TResult itemsReceived(_ItemsReceived value),
    @required TResult watchAllPeerStarted(_WatchAllPeerStarted value),
    @required TResult peerItemsReceived(_PeerItemsReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult watchUnpurchasableStarted(_WatchUnpurchasableStarted value),
    TResult watchPurchasableStarted(_WatchPurchasableStarted value),
    TResult itemsReceived(_ItemsReceived value),
    TResult watchAllPeerStarted(_WatchAllPeerStarted value),
    TResult peerItemsReceived(_PeerItemsReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ItemWatcherEventCopyWith<$Res> {
  factory $ItemWatcherEventCopyWith(
          ItemWatcherEvent value, $Res Function(ItemWatcherEvent) then) =
      _$ItemWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ItemWatcherEventCopyWithImpl<$Res>
    implements $ItemWatcherEventCopyWith<$Res> {
  _$ItemWatcherEventCopyWithImpl(this._value, this._then);

  final ItemWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ItemWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$ItemWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;
}

/// @nodoc
class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'ItemWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required TResult watchUnpurchasableStarted(),
    @required TResult watchPurchasableStarted(),
    @required
        TResult itemsReceived(
            Either<ItemErrorFailure, KtList<Item>> failureOrNotes),
    @required TResult watchAllPeerStarted(String id),
    @required
        TResult peerItemsReceived(
            Either<ItemErrorFailure, KtList<Item>> failureOrNotes),
  }) {
    assert(watchAllStarted != null);
    assert(watchUnpurchasableStarted != null);
    assert(watchPurchasableStarted != null);
    assert(itemsReceived != null);
    assert(watchAllPeerStarted != null);
    assert(peerItemsReceived != null);
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult watchUnpurchasableStarted(),
    TResult watchPurchasableStarted(),
    TResult itemsReceived(
        Either<ItemErrorFailure, KtList<Item>> failureOrNotes),
    TResult watchAllPeerStarted(String id),
    TResult peerItemsReceived(
        Either<ItemErrorFailure, KtList<Item>> failureOrNotes),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required
        TResult watchUnpurchasableStarted(_WatchUnpurchasableStarted value),
    @required TResult watchPurchasableStarted(_WatchPurchasableStarted value),
    @required TResult itemsReceived(_ItemsReceived value),
    @required TResult watchAllPeerStarted(_WatchAllPeerStarted value),
    @required TResult peerItemsReceived(_PeerItemsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchUnpurchasableStarted != null);
    assert(watchPurchasableStarted != null);
    assert(itemsReceived != null);
    assert(watchAllPeerStarted != null);
    assert(peerItemsReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult watchUnpurchasableStarted(_WatchUnpurchasableStarted value),
    TResult watchPurchasableStarted(_WatchPurchasableStarted value),
    TResult itemsReceived(_ItemsReceived value),
    TResult watchAllPeerStarted(_WatchAllPeerStarted value),
    TResult peerItemsReceived(_PeerItemsReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements ItemWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
abstract class _$WatchUnpurchasableStartedCopyWith<$Res> {
  factory _$WatchUnpurchasableStartedCopyWith(_WatchUnpurchasableStarted value,
          $Res Function(_WatchUnpurchasableStarted) then) =
      __$WatchUnpurchasableStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchUnpurchasableStartedCopyWithImpl<$Res>
    extends _$ItemWatcherEventCopyWithImpl<$Res>
    implements _$WatchUnpurchasableStartedCopyWith<$Res> {
  __$WatchUnpurchasableStartedCopyWithImpl(_WatchUnpurchasableStarted _value,
      $Res Function(_WatchUnpurchasableStarted) _then)
      : super(_value, (v) => _then(v as _WatchUnpurchasableStarted));

  @override
  _WatchUnpurchasableStarted get _value =>
      super._value as _WatchUnpurchasableStarted;
}

/// @nodoc
class _$_WatchUnpurchasableStarted implements _WatchUnpurchasableStarted {
  const _$_WatchUnpurchasableStarted();

  @override
  String toString() {
    return 'ItemWatcherEvent.watchUnpurchasableStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchUnpurchasableStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required TResult watchUnpurchasableStarted(),
    @required TResult watchPurchasableStarted(),
    @required
        TResult itemsReceived(
            Either<ItemErrorFailure, KtList<Item>> failureOrNotes),
    @required TResult watchAllPeerStarted(String id),
    @required
        TResult peerItemsReceived(
            Either<ItemErrorFailure, KtList<Item>> failureOrNotes),
  }) {
    assert(watchAllStarted != null);
    assert(watchUnpurchasableStarted != null);
    assert(watchPurchasableStarted != null);
    assert(itemsReceived != null);
    assert(watchAllPeerStarted != null);
    assert(peerItemsReceived != null);
    return watchUnpurchasableStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult watchUnpurchasableStarted(),
    TResult watchPurchasableStarted(),
    TResult itemsReceived(
        Either<ItemErrorFailure, KtList<Item>> failureOrNotes),
    TResult watchAllPeerStarted(String id),
    TResult peerItemsReceived(
        Either<ItemErrorFailure, KtList<Item>> failureOrNotes),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchUnpurchasableStarted != null) {
      return watchUnpurchasableStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required
        TResult watchUnpurchasableStarted(_WatchUnpurchasableStarted value),
    @required TResult watchPurchasableStarted(_WatchPurchasableStarted value),
    @required TResult itemsReceived(_ItemsReceived value),
    @required TResult watchAllPeerStarted(_WatchAllPeerStarted value),
    @required TResult peerItemsReceived(_PeerItemsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchUnpurchasableStarted != null);
    assert(watchPurchasableStarted != null);
    assert(itemsReceived != null);
    assert(watchAllPeerStarted != null);
    assert(peerItemsReceived != null);
    return watchUnpurchasableStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult watchUnpurchasableStarted(_WatchUnpurchasableStarted value),
    TResult watchPurchasableStarted(_WatchPurchasableStarted value),
    TResult itemsReceived(_ItemsReceived value),
    TResult watchAllPeerStarted(_WatchAllPeerStarted value),
    TResult peerItemsReceived(_PeerItemsReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchUnpurchasableStarted != null) {
      return watchUnpurchasableStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchUnpurchasableStarted implements ItemWatcherEvent {
  const factory _WatchUnpurchasableStarted() = _$_WatchUnpurchasableStarted;
}

/// @nodoc
abstract class _$WatchPurchasableStartedCopyWith<$Res> {
  factory _$WatchPurchasableStartedCopyWith(_WatchPurchasableStarted value,
          $Res Function(_WatchPurchasableStarted) then) =
      __$WatchPurchasableStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchPurchasableStartedCopyWithImpl<$Res>
    extends _$ItemWatcherEventCopyWithImpl<$Res>
    implements _$WatchPurchasableStartedCopyWith<$Res> {
  __$WatchPurchasableStartedCopyWithImpl(_WatchPurchasableStarted _value,
      $Res Function(_WatchPurchasableStarted) _then)
      : super(_value, (v) => _then(v as _WatchPurchasableStarted));

  @override
  _WatchPurchasableStarted get _value =>
      super._value as _WatchPurchasableStarted;
}

/// @nodoc
class _$_WatchPurchasableStarted implements _WatchPurchasableStarted {
  const _$_WatchPurchasableStarted();

  @override
  String toString() {
    return 'ItemWatcherEvent.watchPurchasableStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchPurchasableStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required TResult watchUnpurchasableStarted(),
    @required TResult watchPurchasableStarted(),
    @required
        TResult itemsReceived(
            Either<ItemErrorFailure, KtList<Item>> failureOrNotes),
    @required TResult watchAllPeerStarted(String id),
    @required
        TResult peerItemsReceived(
            Either<ItemErrorFailure, KtList<Item>> failureOrNotes),
  }) {
    assert(watchAllStarted != null);
    assert(watchUnpurchasableStarted != null);
    assert(watchPurchasableStarted != null);
    assert(itemsReceived != null);
    assert(watchAllPeerStarted != null);
    assert(peerItemsReceived != null);
    return watchPurchasableStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult watchUnpurchasableStarted(),
    TResult watchPurchasableStarted(),
    TResult itemsReceived(
        Either<ItemErrorFailure, KtList<Item>> failureOrNotes),
    TResult watchAllPeerStarted(String id),
    TResult peerItemsReceived(
        Either<ItemErrorFailure, KtList<Item>> failureOrNotes),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchPurchasableStarted != null) {
      return watchPurchasableStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required
        TResult watchUnpurchasableStarted(_WatchUnpurchasableStarted value),
    @required TResult watchPurchasableStarted(_WatchPurchasableStarted value),
    @required TResult itemsReceived(_ItemsReceived value),
    @required TResult watchAllPeerStarted(_WatchAllPeerStarted value),
    @required TResult peerItemsReceived(_PeerItemsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchUnpurchasableStarted != null);
    assert(watchPurchasableStarted != null);
    assert(itemsReceived != null);
    assert(watchAllPeerStarted != null);
    assert(peerItemsReceived != null);
    return watchPurchasableStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult watchUnpurchasableStarted(_WatchUnpurchasableStarted value),
    TResult watchPurchasableStarted(_WatchPurchasableStarted value),
    TResult itemsReceived(_ItemsReceived value),
    TResult watchAllPeerStarted(_WatchAllPeerStarted value),
    TResult peerItemsReceived(_PeerItemsReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchPurchasableStarted != null) {
      return watchPurchasableStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchPurchasableStarted implements ItemWatcherEvent {
  const factory _WatchPurchasableStarted() = _$_WatchPurchasableStarted;
}

/// @nodoc
abstract class _$ItemsReceivedCopyWith<$Res> {
  factory _$ItemsReceivedCopyWith(
          _ItemsReceived value, $Res Function(_ItemsReceived) then) =
      __$ItemsReceivedCopyWithImpl<$Res>;
  $Res call({Either<ItemErrorFailure, KtList<Item>> failureOrNotes});
}

/// @nodoc
class __$ItemsReceivedCopyWithImpl<$Res>
    extends _$ItemWatcherEventCopyWithImpl<$Res>
    implements _$ItemsReceivedCopyWith<$Res> {
  __$ItemsReceivedCopyWithImpl(
      _ItemsReceived _value, $Res Function(_ItemsReceived) _then)
      : super(_value, (v) => _then(v as _ItemsReceived));

  @override
  _ItemsReceived get _value => super._value as _ItemsReceived;

  @override
  $Res call({
    Object failureOrNotes = freezed,
  }) {
    return _then(_ItemsReceived(
      failureOrNotes == freezed
          ? _value.failureOrNotes
          : failureOrNotes as Either<ItemErrorFailure, KtList<Item>>,
    ));
  }
}

/// @nodoc
class _$_ItemsReceived implements _ItemsReceived {
  const _$_ItemsReceived(this.failureOrNotes) : assert(failureOrNotes != null);

  @override
  final Either<ItemErrorFailure, KtList<Item>> failureOrNotes;

  @override
  String toString() {
    return 'ItemWatcherEvent.itemsReceived(failureOrNotes: $failureOrNotes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemsReceived &&
            (identical(other.failureOrNotes, failureOrNotes) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrNotes, failureOrNotes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrNotes);

  @override
  _$ItemsReceivedCopyWith<_ItemsReceived> get copyWith =>
      __$ItemsReceivedCopyWithImpl<_ItemsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required TResult watchUnpurchasableStarted(),
    @required TResult watchPurchasableStarted(),
    @required
        TResult itemsReceived(
            Either<ItemErrorFailure, KtList<Item>> failureOrNotes),
    @required TResult watchAllPeerStarted(String id),
    @required
        TResult peerItemsReceived(
            Either<ItemErrorFailure, KtList<Item>> failureOrNotes),
  }) {
    assert(watchAllStarted != null);
    assert(watchUnpurchasableStarted != null);
    assert(watchPurchasableStarted != null);
    assert(itemsReceived != null);
    assert(watchAllPeerStarted != null);
    assert(peerItemsReceived != null);
    return itemsReceived(failureOrNotes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult watchUnpurchasableStarted(),
    TResult watchPurchasableStarted(),
    TResult itemsReceived(
        Either<ItemErrorFailure, KtList<Item>> failureOrNotes),
    TResult watchAllPeerStarted(String id),
    TResult peerItemsReceived(
        Either<ItemErrorFailure, KtList<Item>> failureOrNotes),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (itemsReceived != null) {
      return itemsReceived(failureOrNotes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required
        TResult watchUnpurchasableStarted(_WatchUnpurchasableStarted value),
    @required TResult watchPurchasableStarted(_WatchPurchasableStarted value),
    @required TResult itemsReceived(_ItemsReceived value),
    @required TResult watchAllPeerStarted(_WatchAllPeerStarted value),
    @required TResult peerItemsReceived(_PeerItemsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchUnpurchasableStarted != null);
    assert(watchPurchasableStarted != null);
    assert(itemsReceived != null);
    assert(watchAllPeerStarted != null);
    assert(peerItemsReceived != null);
    return itemsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult watchUnpurchasableStarted(_WatchUnpurchasableStarted value),
    TResult watchPurchasableStarted(_WatchPurchasableStarted value),
    TResult itemsReceived(_ItemsReceived value),
    TResult watchAllPeerStarted(_WatchAllPeerStarted value),
    TResult peerItemsReceived(_PeerItemsReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (itemsReceived != null) {
      return itemsReceived(this);
    }
    return orElse();
  }
}

abstract class _ItemsReceived implements ItemWatcherEvent {
  const factory _ItemsReceived(
      Either<ItemErrorFailure, KtList<Item>> failureOrNotes) = _$_ItemsReceived;

  Either<ItemErrorFailure, KtList<Item>> get failureOrNotes;
  _$ItemsReceivedCopyWith<_ItemsReceived> get copyWith;
}

/// @nodoc
abstract class _$WatchAllPeerStartedCopyWith<$Res> {
  factory _$WatchAllPeerStartedCopyWith(_WatchAllPeerStarted value,
          $Res Function(_WatchAllPeerStarted) then) =
      __$WatchAllPeerStartedCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$WatchAllPeerStartedCopyWithImpl<$Res>
    extends _$ItemWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllPeerStartedCopyWith<$Res> {
  __$WatchAllPeerStartedCopyWithImpl(
      _WatchAllPeerStarted _value, $Res Function(_WatchAllPeerStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllPeerStarted));

  @override
  _WatchAllPeerStarted get _value => super._value as _WatchAllPeerStarted;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_WatchAllPeerStarted(
      id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
class _$_WatchAllPeerStarted implements _WatchAllPeerStarted {
  const _$_WatchAllPeerStarted(this.id) : assert(id != null);

  @override
  final String id;

  @override
  String toString() {
    return 'ItemWatcherEvent.watchAllPeerStarted(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchAllPeerStarted &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  _$WatchAllPeerStartedCopyWith<_WatchAllPeerStarted> get copyWith =>
      __$WatchAllPeerStartedCopyWithImpl<_WatchAllPeerStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required TResult watchUnpurchasableStarted(),
    @required TResult watchPurchasableStarted(),
    @required
        TResult itemsReceived(
            Either<ItemErrorFailure, KtList<Item>> failureOrNotes),
    @required TResult watchAllPeerStarted(String id),
    @required
        TResult peerItemsReceived(
            Either<ItemErrorFailure, KtList<Item>> failureOrNotes),
  }) {
    assert(watchAllStarted != null);
    assert(watchUnpurchasableStarted != null);
    assert(watchPurchasableStarted != null);
    assert(itemsReceived != null);
    assert(watchAllPeerStarted != null);
    assert(peerItemsReceived != null);
    return watchAllPeerStarted(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult watchUnpurchasableStarted(),
    TResult watchPurchasableStarted(),
    TResult itemsReceived(
        Either<ItemErrorFailure, KtList<Item>> failureOrNotes),
    TResult watchAllPeerStarted(String id),
    TResult peerItemsReceived(
        Either<ItemErrorFailure, KtList<Item>> failureOrNotes),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllPeerStarted != null) {
      return watchAllPeerStarted(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required
        TResult watchUnpurchasableStarted(_WatchUnpurchasableStarted value),
    @required TResult watchPurchasableStarted(_WatchPurchasableStarted value),
    @required TResult itemsReceived(_ItemsReceived value),
    @required TResult watchAllPeerStarted(_WatchAllPeerStarted value),
    @required TResult peerItemsReceived(_PeerItemsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchUnpurchasableStarted != null);
    assert(watchPurchasableStarted != null);
    assert(itemsReceived != null);
    assert(watchAllPeerStarted != null);
    assert(peerItemsReceived != null);
    return watchAllPeerStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult watchUnpurchasableStarted(_WatchUnpurchasableStarted value),
    TResult watchPurchasableStarted(_WatchPurchasableStarted value),
    TResult itemsReceived(_ItemsReceived value),
    TResult watchAllPeerStarted(_WatchAllPeerStarted value),
    TResult peerItemsReceived(_PeerItemsReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllPeerStarted != null) {
      return watchAllPeerStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllPeerStarted implements ItemWatcherEvent {
  const factory _WatchAllPeerStarted(String id) = _$_WatchAllPeerStarted;

  String get id;
  _$WatchAllPeerStartedCopyWith<_WatchAllPeerStarted> get copyWith;
}

/// @nodoc
abstract class _$PeerItemsReceivedCopyWith<$Res> {
  factory _$PeerItemsReceivedCopyWith(
          _PeerItemsReceived value, $Res Function(_PeerItemsReceived) then) =
      __$PeerItemsReceivedCopyWithImpl<$Res>;
  $Res call({Either<ItemErrorFailure, KtList<Item>> failureOrNotes});
}

/// @nodoc
class __$PeerItemsReceivedCopyWithImpl<$Res>
    extends _$ItemWatcherEventCopyWithImpl<$Res>
    implements _$PeerItemsReceivedCopyWith<$Res> {
  __$PeerItemsReceivedCopyWithImpl(
      _PeerItemsReceived _value, $Res Function(_PeerItemsReceived) _then)
      : super(_value, (v) => _then(v as _PeerItemsReceived));

  @override
  _PeerItemsReceived get _value => super._value as _PeerItemsReceived;

  @override
  $Res call({
    Object failureOrNotes = freezed,
  }) {
    return _then(_PeerItemsReceived(
      failureOrNotes == freezed
          ? _value.failureOrNotes
          : failureOrNotes as Either<ItemErrorFailure, KtList<Item>>,
    ));
  }
}

/// @nodoc
class _$_PeerItemsReceived implements _PeerItemsReceived {
  const _$_PeerItemsReceived(this.failureOrNotes)
      : assert(failureOrNotes != null);

  @override
  final Either<ItemErrorFailure, KtList<Item>> failureOrNotes;

  @override
  String toString() {
    return 'ItemWatcherEvent.peerItemsReceived(failureOrNotes: $failureOrNotes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PeerItemsReceived &&
            (identical(other.failureOrNotes, failureOrNotes) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrNotes, failureOrNotes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrNotes);

  @override
  _$PeerItemsReceivedCopyWith<_PeerItemsReceived> get copyWith =>
      __$PeerItemsReceivedCopyWithImpl<_PeerItemsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required TResult watchUnpurchasableStarted(),
    @required TResult watchPurchasableStarted(),
    @required
        TResult itemsReceived(
            Either<ItemErrorFailure, KtList<Item>> failureOrNotes),
    @required TResult watchAllPeerStarted(String id),
    @required
        TResult peerItemsReceived(
            Either<ItemErrorFailure, KtList<Item>> failureOrNotes),
  }) {
    assert(watchAllStarted != null);
    assert(watchUnpurchasableStarted != null);
    assert(watchPurchasableStarted != null);
    assert(itemsReceived != null);
    assert(watchAllPeerStarted != null);
    assert(peerItemsReceived != null);
    return peerItemsReceived(failureOrNotes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult watchUnpurchasableStarted(),
    TResult watchPurchasableStarted(),
    TResult itemsReceived(
        Either<ItemErrorFailure, KtList<Item>> failureOrNotes),
    TResult watchAllPeerStarted(String id),
    TResult peerItemsReceived(
        Either<ItemErrorFailure, KtList<Item>> failureOrNotes),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (peerItemsReceived != null) {
      return peerItemsReceived(failureOrNotes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required
        TResult watchUnpurchasableStarted(_WatchUnpurchasableStarted value),
    @required TResult watchPurchasableStarted(_WatchPurchasableStarted value),
    @required TResult itemsReceived(_ItemsReceived value),
    @required TResult watchAllPeerStarted(_WatchAllPeerStarted value),
    @required TResult peerItemsReceived(_PeerItemsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(watchUnpurchasableStarted != null);
    assert(watchPurchasableStarted != null);
    assert(itemsReceived != null);
    assert(watchAllPeerStarted != null);
    assert(peerItemsReceived != null);
    return peerItemsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult watchUnpurchasableStarted(_WatchUnpurchasableStarted value),
    TResult watchPurchasableStarted(_WatchPurchasableStarted value),
    TResult itemsReceived(_ItemsReceived value),
    TResult watchAllPeerStarted(_WatchAllPeerStarted value),
    TResult peerItemsReceived(_PeerItemsReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (peerItemsReceived != null) {
      return peerItemsReceived(this);
    }
    return orElse();
  }
}

abstract class _PeerItemsReceived implements ItemWatcherEvent {
  const factory _PeerItemsReceived(
          Either<ItemErrorFailure, KtList<Item>> failureOrNotes) =
      _$_PeerItemsReceived;

  Either<ItemErrorFailure, KtList<Item>> get failureOrNotes;
  _$PeerItemsReceivedCopyWith<_PeerItemsReceived> get copyWith;
}

/// @nodoc
class _$ItemWatcherStateTearOff {
  const _$ItemWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(KtList<Item> items) {
    return _LoadSuccess(
      items,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(ItemErrorFailure itemFailure) {
    return _LoadFailure(
      itemFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ItemWatcherState = _$ItemWatcherStateTearOff();

/// @nodoc
mixin _$ItemWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<Item> items),
    @required TResult loadFailure(ItemErrorFailure itemFailure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<Item> items),
    TResult loadFailure(ItemErrorFailure itemFailure),
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
abstract class $ItemWatcherStateCopyWith<$Res> {
  factory $ItemWatcherStateCopyWith(
          ItemWatcherState value, $Res Function(ItemWatcherState) then) =
      _$ItemWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ItemWatcherStateCopyWithImpl<$Res>
    implements $ItemWatcherStateCopyWith<$Res> {
  _$ItemWatcherStateCopyWithImpl(this._value, this._then);

  final ItemWatcherState _value;
  // ignore: unused_field
  final $Res Function(ItemWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ItemWatcherStateCopyWithImpl<$Res>
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
    return 'ItemWatcherState.initial()';
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
    @required TResult loadSuccess(KtList<Item> items),
    @required TResult loadFailure(ItemErrorFailure itemFailure),
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
    TResult loadSuccess(KtList<Item> items),
    TResult loadFailure(ItemErrorFailure itemFailure),
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

abstract class _Initial implements ItemWatcherState {
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
    extends _$ItemWatcherStateCopyWithImpl<$Res>
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
    return 'ItemWatcherState.loadInProgress()';
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
    @required TResult loadSuccess(KtList<Item> items),
    @required TResult loadFailure(ItemErrorFailure itemFailure),
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
    TResult loadSuccess(KtList<Item> items),
    TResult loadFailure(ItemErrorFailure itemFailure),
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

abstract class _LoadInProgress implements ItemWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<Item> items});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ItemWatcherStateCopyWithImpl<$Res>
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
      items == freezed ? _value.items : items as KtList<Item>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.items) : assert(items != null);

  @override
  final KtList<Item> items;

  @override
  String toString() {
    return 'ItemWatcherState.loadSuccess(items: $items)';
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
    @required TResult loadSuccess(KtList<Item> items),
    @required TResult loadFailure(ItemErrorFailure itemFailure),
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
    TResult loadSuccess(KtList<Item> items),
    TResult loadFailure(ItemErrorFailure itemFailure),
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

abstract class _LoadSuccess implements ItemWatcherState {
  const factory _LoadSuccess(KtList<Item> items) = _$_LoadSuccess;

  KtList<Item> get items;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({ItemErrorFailure itemFailure});

  $ItemErrorFailureCopyWith<$Res> get itemFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$ItemWatcherStateCopyWithImpl<$Res>
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
          : itemFailure as ItemErrorFailure,
    ));
  }

  @override
  $ItemErrorFailureCopyWith<$Res> get itemFailure {
    if (_value.itemFailure == null) {
      return null;
    }
    return $ItemErrorFailureCopyWith<$Res>(_value.itemFailure, (value) {
      return _then(_value.copyWith(itemFailure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.itemFailure) : assert(itemFailure != null);

  @override
  final ItemErrorFailure itemFailure;

  @override
  String toString() {
    return 'ItemWatcherState.loadFailure(itemFailure: $itemFailure)';
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
    @required TResult loadSuccess(KtList<Item> items),
    @required TResult loadFailure(ItemErrorFailure itemFailure),
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
    TResult loadSuccess(KtList<Item> items),
    TResult loadFailure(ItemErrorFailure itemFailure),
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

abstract class _LoadFailure implements ItemWatcherState {
  const factory _LoadFailure(ItemErrorFailure itemFailure) = _$_LoadFailure;

  ItemErrorFailure get itemFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
