// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'payment_item_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PaymentItemDetailsEventTearOff {
  const _$PaymentItemDetailsEventTearOff();

// ignore: unused_element
  _GetPaymentItemStarted getPaymentItemStarted(String userId, String itemId) {
    return _GetPaymentItemStarted(
      userId,
      itemId,
    );
  }

// ignore: unused_element
  _PaymentItemReceived paymentItemReceived(
      Either<ItemErrorFailure, ItemDto> failureOrItem) {
    return _PaymentItemReceived(
      failureOrItem,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PaymentItemDetailsEvent = _$PaymentItemDetailsEventTearOff();

/// @nodoc
mixin _$PaymentItemDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getPaymentItemStarted(String userId, String itemId),
    @required
        TResult paymentItemReceived(
            Either<ItemErrorFailure, ItemDto> failureOrItem),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getPaymentItemStarted(String userId, String itemId),
    TResult paymentItemReceived(
        Either<ItemErrorFailure, ItemDto> failureOrItem),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getPaymentItemStarted(_GetPaymentItemStarted value),
    @required TResult paymentItemReceived(_PaymentItemReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getPaymentItemStarted(_GetPaymentItemStarted value),
    TResult paymentItemReceived(_PaymentItemReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PaymentItemDetailsEventCopyWith<$Res> {
  factory $PaymentItemDetailsEventCopyWith(PaymentItemDetailsEvent value,
          $Res Function(PaymentItemDetailsEvent) then) =
      _$PaymentItemDetailsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentItemDetailsEventCopyWithImpl<$Res>
    implements $PaymentItemDetailsEventCopyWith<$Res> {
  _$PaymentItemDetailsEventCopyWithImpl(this._value, this._then);

  final PaymentItemDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(PaymentItemDetailsEvent) _then;
}

/// @nodoc
abstract class _$GetPaymentItemStartedCopyWith<$Res> {
  factory _$GetPaymentItemStartedCopyWith(_GetPaymentItemStarted value,
          $Res Function(_GetPaymentItemStarted) then) =
      __$GetPaymentItemStartedCopyWithImpl<$Res>;
  $Res call({String userId, String itemId});
}

/// @nodoc
class __$GetPaymentItemStartedCopyWithImpl<$Res>
    extends _$PaymentItemDetailsEventCopyWithImpl<$Res>
    implements _$GetPaymentItemStartedCopyWith<$Res> {
  __$GetPaymentItemStartedCopyWithImpl(_GetPaymentItemStarted _value,
      $Res Function(_GetPaymentItemStarted) _then)
      : super(_value, (v) => _then(v as _GetPaymentItemStarted));

  @override
  _GetPaymentItemStarted get _value => super._value as _GetPaymentItemStarted;

  @override
  $Res call({
    Object userId = freezed,
    Object itemId = freezed,
  }) {
    return _then(_GetPaymentItemStarted(
      userId == freezed ? _value.userId : userId as String,
      itemId == freezed ? _value.itemId : itemId as String,
    ));
  }
}

/// @nodoc
class _$_GetPaymentItemStarted implements _GetPaymentItemStarted {
  const _$_GetPaymentItemStarted(this.userId, this.itemId)
      : assert(userId != null),
        assert(itemId != null);

  @override
  final String userId;
  @override
  final String itemId;

  @override
  String toString() {
    return 'PaymentItemDetailsEvent.getPaymentItemStarted(userId: $userId, itemId: $itemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetPaymentItemStarted &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.itemId, itemId) ||
                const DeepCollectionEquality().equals(other.itemId, itemId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(itemId);

  @JsonKey(ignore: true)
  @override
  _$GetPaymentItemStartedCopyWith<_GetPaymentItemStarted> get copyWith =>
      __$GetPaymentItemStartedCopyWithImpl<_GetPaymentItemStarted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getPaymentItemStarted(String userId, String itemId),
    @required
        TResult paymentItemReceived(
            Either<ItemErrorFailure, ItemDto> failureOrItem),
  }) {
    assert(getPaymentItemStarted != null);
    assert(paymentItemReceived != null);
    return getPaymentItemStarted(userId, itemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult getPaymentItemStarted(String userId, String itemId),
    TResult paymentItemReceived(
        Either<ItemErrorFailure, ItemDto> failureOrItem),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getPaymentItemStarted != null) {
      return getPaymentItemStarted(userId, itemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult getPaymentItemStarted(_GetPaymentItemStarted value),
    @required TResult paymentItemReceived(_PaymentItemReceived value),
  }) {
    assert(getPaymentItemStarted != null);
    assert(paymentItemReceived != null);
    return getPaymentItemStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getPaymentItemStarted(_GetPaymentItemStarted value),
    TResult paymentItemReceived(_PaymentItemReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (getPaymentItemStarted != null) {
      return getPaymentItemStarted(this);
    }
    return orElse();
  }
}

abstract class _GetPaymentItemStarted implements PaymentItemDetailsEvent {
  const factory _GetPaymentItemStarted(String userId, String itemId) =
      _$_GetPaymentItemStarted;

  String get userId;
  String get itemId;
  @JsonKey(ignore: true)
  _$GetPaymentItemStartedCopyWith<_GetPaymentItemStarted> get copyWith;
}

/// @nodoc
abstract class _$PaymentItemReceivedCopyWith<$Res> {
  factory _$PaymentItemReceivedCopyWith(_PaymentItemReceived value,
          $Res Function(_PaymentItemReceived) then) =
      __$PaymentItemReceivedCopyWithImpl<$Res>;
  $Res call({Either<ItemErrorFailure, ItemDto> failureOrItem});
}

/// @nodoc
class __$PaymentItemReceivedCopyWithImpl<$Res>
    extends _$PaymentItemDetailsEventCopyWithImpl<$Res>
    implements _$PaymentItemReceivedCopyWith<$Res> {
  __$PaymentItemReceivedCopyWithImpl(
      _PaymentItemReceived _value, $Res Function(_PaymentItemReceived) _then)
      : super(_value, (v) => _then(v as _PaymentItemReceived));

  @override
  _PaymentItemReceived get _value => super._value as _PaymentItemReceived;

  @override
  $Res call({
    Object failureOrItem = freezed,
  }) {
    return _then(_PaymentItemReceived(
      failureOrItem == freezed
          ? _value.failureOrItem
          : failureOrItem as Either<ItemErrorFailure, ItemDto>,
    ));
  }
}

/// @nodoc
class _$_PaymentItemReceived implements _PaymentItemReceived {
  const _$_PaymentItemReceived(this.failureOrItem)
      : assert(failureOrItem != null);

  @override
  final Either<ItemErrorFailure, ItemDto> failureOrItem;

  @override
  String toString() {
    return 'PaymentItemDetailsEvent.paymentItemReceived(failureOrItem: $failureOrItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentItemReceived &&
            (identical(other.failureOrItem, failureOrItem) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrItem, failureOrItem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrItem);

  @JsonKey(ignore: true)
  @override
  _$PaymentItemReceivedCopyWith<_PaymentItemReceived> get copyWith =>
      __$PaymentItemReceivedCopyWithImpl<_PaymentItemReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult getPaymentItemStarted(String userId, String itemId),
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
    TResult getPaymentItemStarted(String userId, String itemId),
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
    @required TResult getPaymentItemStarted(_GetPaymentItemStarted value),
    @required TResult paymentItemReceived(_PaymentItemReceived value),
  }) {
    assert(getPaymentItemStarted != null);
    assert(paymentItemReceived != null);
    return paymentItemReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult getPaymentItemStarted(_GetPaymentItemStarted value),
    TResult paymentItemReceived(_PaymentItemReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (paymentItemReceived != null) {
      return paymentItemReceived(this);
    }
    return orElse();
  }
}

abstract class _PaymentItemReceived implements PaymentItemDetailsEvent {
  const factory _PaymentItemReceived(
      Either<ItemErrorFailure, ItemDto> failureOrItem) = _$_PaymentItemReceived;

  Either<ItemErrorFailure, ItemDto> get failureOrItem;
  @JsonKey(ignore: true)
  _$PaymentItemReceivedCopyWith<_PaymentItemReceived> get copyWith;
}

/// @nodoc
class _$PaymentItemDetailsStateTearOff {
  const _$PaymentItemDetailsStateTearOff();

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
const $PaymentItemDetailsState = _$PaymentItemDetailsStateTearOff();

/// @nodoc
mixin _$PaymentItemDetailsState {
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
abstract class $PaymentItemDetailsStateCopyWith<$Res> {
  factory $PaymentItemDetailsStateCopyWith(PaymentItemDetailsState value,
          $Res Function(PaymentItemDetailsState) then) =
      _$PaymentItemDetailsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentItemDetailsStateCopyWithImpl<$Res>
    implements $PaymentItemDetailsStateCopyWith<$Res> {
  _$PaymentItemDetailsStateCopyWithImpl(this._value, this._then);

  final PaymentItemDetailsState _value;
  // ignore: unused_field
  final $Res Function(PaymentItemDetailsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$PaymentItemDetailsStateCopyWithImpl<$Res>
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
    return 'PaymentItemDetailsState.initial()';
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

abstract class _Initial implements PaymentItemDetailsState {
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
    extends _$PaymentItemDetailsStateCopyWithImpl<$Res>
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
    return 'PaymentItemDetailsState.loadInProgress()';
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

abstract class _LoadInProgress implements PaymentItemDetailsState {
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
    extends _$PaymentItemDetailsStateCopyWithImpl<$Res>
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
    return 'PaymentItemDetailsState.loadSuccess(item: $item)';
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

  @JsonKey(ignore: true)
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

abstract class _LoadSuccess implements PaymentItemDetailsState {
  const factory _LoadSuccess(ItemDto item) = _$_LoadSuccess;

  ItemDto get item;
  @JsonKey(ignore: true)
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
    extends _$PaymentItemDetailsStateCopyWithImpl<$Res>
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
    return 'PaymentItemDetailsState.loadFailure(itemFailure: $itemFailure)';
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

abstract class _LoadFailure implements PaymentItemDetailsState {
  const factory _LoadFailure(ItemErrorFailure itemFailure) = _$_LoadFailure;

  ItemErrorFailure get itemFailure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
