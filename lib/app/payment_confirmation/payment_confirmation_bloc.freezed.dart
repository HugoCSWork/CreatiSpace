// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'payment_confirmation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PaymentConfirmationEventTearOff {
  const _$PaymentConfirmationEventTearOff();

// ignore: unused_element
  _WatchAllStarted getPaymentItemStarted(String id, String peerId) {
    return _WatchAllStarted(
      id,
      peerId,
    );
  }

// ignore: unused_element
  _ItemsReceived paymentItemReceived(
      Either<ItemErrorFailure, ItemDto> failureOrItem) {
    return _ItemsReceived(
      failureOrItem,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PaymentConfirmationEvent = _$PaymentConfirmationEventTearOff();

/// @nodoc
mixin _$PaymentConfirmationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getPaymentItemStarted(String id, String peerId),
    @required
        TResult paymentItemReceived(
            Either<ItemErrorFailure, ItemDto> failureOrItem),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getPaymentItemStarted(String id, String peerId),
    TResult paymentItemReceived(
        Either<ItemErrorFailure, ItemDto> failureOrItem),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getPaymentItemStarted(_WatchAllStarted value),
    @required TResult paymentItemReceived(_ItemsReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getPaymentItemStarted(_WatchAllStarted value),
    TResult paymentItemReceived(_ItemsReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PaymentConfirmationEventCopyWith<$Res> {
  factory $PaymentConfirmationEventCopyWith(PaymentConfirmationEvent value,
          $Res Function(PaymentConfirmationEvent) then) =
      _$PaymentConfirmationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentConfirmationEventCopyWithImpl<$Res>
    implements $PaymentConfirmationEventCopyWith<$Res> {
  _$PaymentConfirmationEventCopyWithImpl(this._value, this._then);

  final PaymentConfirmationEvent _value;
  // ignore: unused_field
  final $Res Function(PaymentConfirmationEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
  $Res call({String id, String peerId});
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$PaymentConfirmationEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;

  @override
  $Res call({
    Object id = freezed,
    Object peerId = freezed,
  }) {
    return _then(_WatchAllStarted(
      id == freezed ? _value.id : id as String,
      peerId == freezed ? _value.peerId : peerId as String,
    ));
  }
}

/// @nodoc
class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted(this.id, this.peerId)
      : assert(id != null),
        assert(peerId != null);

  @override
  final String id;
  @override
  final String peerId;

  @override
  String toString() {
    return 'PaymentConfirmationEvent.getPaymentItemStarted(id: $id, peerId: $peerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchAllStarted &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.peerId, peerId) ||
                const DeepCollectionEquality().equals(other.peerId, peerId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(peerId);

  @override
  _$WatchAllStartedCopyWith<_WatchAllStarted> get copyWith =>
      __$WatchAllStartedCopyWithImpl<_WatchAllStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getPaymentItemStarted(String id, String peerId),
    @required
        TResult paymentItemReceived(
            Either<ItemErrorFailure, ItemDto> failureOrItem),
  }) {
    assert(getPaymentItemStarted != null);
    assert(paymentItemReceived != null);
    return getPaymentItemStarted(id, peerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getPaymentItemStarted(String id, String peerId),
    TResult paymentItemReceived(
        Either<ItemErrorFailure, ItemDto> failureOrItem),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getPaymentItemStarted != null) {
      return getPaymentItemStarted(id, peerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getPaymentItemStarted(_WatchAllStarted value),
    @required TResult paymentItemReceived(_ItemsReceived value),
  }) {
    assert(getPaymentItemStarted != null);
    assert(paymentItemReceived != null);
    return getPaymentItemStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getPaymentItemStarted(_WatchAllStarted value),
    TResult paymentItemReceived(_ItemsReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getPaymentItemStarted != null) {
      return getPaymentItemStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements PaymentConfirmationEvent {
  const factory _WatchAllStarted(String id, String peerId) = _$_WatchAllStarted;

  String get id;
  String get peerId;
  _$WatchAllStartedCopyWith<_WatchAllStarted> get copyWith;
}

/// @nodoc
abstract class _$ItemsReceivedCopyWith<$Res> {
  factory _$ItemsReceivedCopyWith(
          _ItemsReceived value, $Res Function(_ItemsReceived) then) =
      __$ItemsReceivedCopyWithImpl<$Res>;
  $Res call({Either<ItemErrorFailure, ItemDto> failureOrItem});
}

/// @nodoc
class __$ItemsReceivedCopyWithImpl<$Res>
    extends _$PaymentConfirmationEventCopyWithImpl<$Res>
    implements _$ItemsReceivedCopyWith<$Res> {
  __$ItemsReceivedCopyWithImpl(
      _ItemsReceived _value, $Res Function(_ItemsReceived) _then)
      : super(_value, (v) => _then(v as _ItemsReceived));

  @override
  _ItemsReceived get _value => super._value as _ItemsReceived;

  @override
  $Res call({
    Object failureOrItem = freezed,
  }) {
    return _then(_ItemsReceived(
      failureOrItem == freezed
          ? _value.failureOrItem
          : failureOrItem as Either<ItemErrorFailure, ItemDto>,
    ));
  }
}

/// @nodoc
class _$_ItemsReceived implements _ItemsReceived {
  const _$_ItemsReceived(this.failureOrItem) : assert(failureOrItem != null);

  @override
  final Either<ItemErrorFailure, ItemDto> failureOrItem;

  @override
  String toString() {
    return 'PaymentConfirmationEvent.paymentItemReceived(failureOrItem: $failureOrItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemsReceived &&
            (identical(other.failureOrItem, failureOrItem) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrItem, failureOrItem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrItem);

  @override
  _$ItemsReceivedCopyWith<_ItemsReceived> get copyWith =>
      __$ItemsReceivedCopyWithImpl<_ItemsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getPaymentItemStarted(String id, String peerId),
    @required
        TResult paymentItemReceived(
            Either<ItemErrorFailure, ItemDto> failureOrItem),
  }) {
    assert(getPaymentItemStarted != null);
    assert(paymentItemReceived != null);
    return paymentItemReceived(failureOrItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getPaymentItemStarted(String id, String peerId),
    TResult paymentItemReceived(
        Either<ItemErrorFailure, ItemDto> failureOrItem),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (paymentItemReceived != null) {
      return paymentItemReceived(failureOrItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getPaymentItemStarted(_WatchAllStarted value),
    @required TResult paymentItemReceived(_ItemsReceived value),
  }) {
    assert(getPaymentItemStarted != null);
    assert(paymentItemReceived != null);
    return paymentItemReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getPaymentItemStarted(_WatchAllStarted value),
    TResult paymentItemReceived(_ItemsReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (paymentItemReceived != null) {
      return paymentItemReceived(this);
    }
    return orElse();
  }
}

abstract class _ItemsReceived implements PaymentConfirmationEvent {
  const factory _ItemsReceived(
      Either<ItemErrorFailure, ItemDto> failureOrItem) = _$_ItemsReceived;

  Either<ItemErrorFailure, ItemDto> get failureOrItem;
  _$ItemsReceivedCopyWith<_ItemsReceived> get copyWith;
}

/// @nodoc
class _$PaymentConfirmationStateTearOff {
  const _$PaymentConfirmationStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(ItemDto item) {
    return _LoadSuccess(
      item,
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
const $PaymentConfirmationState = _$PaymentConfirmationStateTearOff();

/// @nodoc
mixin _$PaymentConfirmationState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(ItemDto item),
    @required TResult loadFailure(ItemErrorFailure itemFailure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(ItemDto item),
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
abstract class $PaymentConfirmationStateCopyWith<$Res> {
  factory $PaymentConfirmationStateCopyWith(PaymentConfirmationState value,
          $Res Function(PaymentConfirmationState) then) =
      _$PaymentConfirmationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentConfirmationStateCopyWithImpl<$Res>
    implements $PaymentConfirmationStateCopyWith<$Res> {
  _$PaymentConfirmationStateCopyWithImpl(this._value, this._then);

  final PaymentConfirmationState _value;
  // ignore: unused_field
  final $Res Function(PaymentConfirmationState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$PaymentConfirmationStateCopyWithImpl<$Res>
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
    return 'PaymentConfirmationState.initial()';
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
    @required TResult loadSuccess(ItemDto item),
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
    TResult loadSuccess(ItemDto item),
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

abstract class _Initial implements PaymentConfirmationState {
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
    extends _$PaymentConfirmationStateCopyWithImpl<$Res>
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
    return 'PaymentConfirmationState.loadInProgress()';
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
    @required TResult loadSuccess(ItemDto item),
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
    TResult loadSuccess(ItemDto item),
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

abstract class _LoadInProgress implements PaymentConfirmationState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({ItemDto item});

  $ItemDtoCopyWith<$Res> get item;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$PaymentConfirmationStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object item = freezed,
  }) {
    return _then(_LoadSuccess(
      item == freezed ? _value.item : item as ItemDto,
    ));
  }

  @override
  $ItemDtoCopyWith<$Res> get item {
    if (_value.item == null) {
      return null;
    }
    return $ItemDtoCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.item) : assert(item != null);

  @override
  final ItemDto item;

  @override
  String toString() {
    return 'PaymentConfirmationState.loadSuccess(item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(item);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(ItemDto item),
    @required TResult loadFailure(ItemErrorFailure itemFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(item);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(ItemDto item),
    TResult loadFailure(ItemErrorFailure itemFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(item);
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

abstract class _LoadSuccess implements PaymentConfirmationState {
  const factory _LoadSuccess(ItemDto item) = _$_LoadSuccess;

  ItemDto get item;
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
    extends _$PaymentConfirmationStateCopyWithImpl<$Res>
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
    return 'PaymentConfirmationState.loadFailure(itemFailure: $itemFailure)';
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
    @required TResult loadSuccess(ItemDto item),
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
    TResult loadSuccess(ItemDto item),
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

abstract class _LoadFailure implements PaymentConfirmationState {
  const factory _LoadFailure(ItemErrorFailure itemFailure) = _$_LoadFailure;

  ItemErrorFailure get itemFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
