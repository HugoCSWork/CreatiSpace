// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'payment_details_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PaymentDetailsFormEventTearOff {
  const _$PaymentDetailsFormEventTearOff();

// ignore: unused_element
  _UpdateOrderStatus updateOrderStatus(
      String status, String paymentId, String userId, bool isSeller) {
    return _UpdateOrderStatus(
      status,
      paymentId,
      userId,
      isSeller,
    );
  }

// ignore: unused_element
  _UpdateOrderResponse updateOrderResponse(
      Either<ItemErrorFailure, Unit> failureOrItem) {
    return _UpdateOrderResponse(
      failureOrItem,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PaymentDetailsFormEvent = _$PaymentDetailsFormEventTearOff();

/// @nodoc
mixin _$PaymentDetailsFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult updateOrderStatus(
            String status, String paymentId, String userId, bool isSeller),
    @required
        TResult updateOrderResponse(
            Either<ItemErrorFailure, Unit> failureOrItem),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updateOrderStatus(
        String status, String paymentId, String userId, bool isSeller),
    TResult updateOrderResponse(Either<ItemErrorFailure, Unit> failureOrItem),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updateOrderStatus(_UpdateOrderStatus value),
    @required TResult updateOrderResponse(_UpdateOrderResponse value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updateOrderStatus(_UpdateOrderStatus value),
    TResult updateOrderResponse(_UpdateOrderResponse value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PaymentDetailsFormEventCopyWith<$Res> {
  factory $PaymentDetailsFormEventCopyWith(PaymentDetailsFormEvent value,
          $Res Function(PaymentDetailsFormEvent) then) =
      _$PaymentDetailsFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentDetailsFormEventCopyWithImpl<$Res>
    implements $PaymentDetailsFormEventCopyWith<$Res> {
  _$PaymentDetailsFormEventCopyWithImpl(this._value, this._then);

  final PaymentDetailsFormEvent _value;
  // ignore: unused_field
  final $Res Function(PaymentDetailsFormEvent) _then;
}

/// @nodoc
abstract class _$UpdateOrderStatusCopyWith<$Res> {
  factory _$UpdateOrderStatusCopyWith(
          _UpdateOrderStatus value, $Res Function(_UpdateOrderStatus) then) =
      __$UpdateOrderStatusCopyWithImpl<$Res>;
  $Res call({String status, String paymentId, String userId, bool isSeller});
}

/// @nodoc
class __$UpdateOrderStatusCopyWithImpl<$Res>
    extends _$PaymentDetailsFormEventCopyWithImpl<$Res>
    implements _$UpdateOrderStatusCopyWith<$Res> {
  __$UpdateOrderStatusCopyWithImpl(
      _UpdateOrderStatus _value, $Res Function(_UpdateOrderStatus) _then)
      : super(_value, (v) => _then(v as _UpdateOrderStatus));

  @override
  _UpdateOrderStatus get _value => super._value as _UpdateOrderStatus;

  @override
  $Res call({
    Object status = freezed,
    Object paymentId = freezed,
    Object userId = freezed,
    Object isSeller = freezed,
  }) {
    return _then(_UpdateOrderStatus(
      status == freezed ? _value.status : status as String,
      paymentId == freezed ? _value.paymentId : paymentId as String,
      userId == freezed ? _value.userId : userId as String,
      isSeller == freezed ? _value.isSeller : isSeller as bool,
    ));
  }
}

/// @nodoc
class _$_UpdateOrderStatus implements _UpdateOrderStatus {
  const _$_UpdateOrderStatus(
      this.status, this.paymentId, this.userId, this.isSeller)
      : assert(status != null),
        assert(paymentId != null),
        assert(userId != null),
        assert(isSeller != null);

  @override
  final String status;
  @override
  final String paymentId;
  @override
  final String userId;
  @override
  final bool isSeller;

  @override
  String toString() {
    return 'PaymentDetailsFormEvent.updateOrderStatus(status: $status, paymentId: $paymentId, userId: $userId, isSeller: $isSeller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateOrderStatus &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.paymentId, paymentId) ||
                const DeepCollectionEquality()
                    .equals(other.paymentId, paymentId)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)) &&
            (identical(other.isSeller, isSeller) ||
                const DeepCollectionEquality()
                    .equals(other.isSeller, isSeller)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(paymentId) ^
      const DeepCollectionEquality().hash(userId) ^
      const DeepCollectionEquality().hash(isSeller);

  @override
  _$UpdateOrderStatusCopyWith<_UpdateOrderStatus> get copyWith =>
      __$UpdateOrderStatusCopyWithImpl<_UpdateOrderStatus>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult updateOrderStatus(
            String status, String paymentId, String userId, bool isSeller),
    @required
        TResult updateOrderResponse(
            Either<ItemErrorFailure, Unit> failureOrItem),
  }) {
    assert(updateOrderStatus != null);
    assert(updateOrderResponse != null);
    return updateOrderStatus(status, paymentId, userId, isSeller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updateOrderStatus(
        String status, String paymentId, String userId, bool isSeller),
    TResult updateOrderResponse(Either<ItemErrorFailure, Unit> failureOrItem),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateOrderStatus != null) {
      return updateOrderStatus(status, paymentId, userId, isSeller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updateOrderStatus(_UpdateOrderStatus value),
    @required TResult updateOrderResponse(_UpdateOrderResponse value),
  }) {
    assert(updateOrderStatus != null);
    assert(updateOrderResponse != null);
    return updateOrderStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updateOrderStatus(_UpdateOrderStatus value),
    TResult updateOrderResponse(_UpdateOrderResponse value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateOrderStatus != null) {
      return updateOrderStatus(this);
    }
    return orElse();
  }
}

abstract class _UpdateOrderStatus implements PaymentDetailsFormEvent {
  const factory _UpdateOrderStatus(
          String status, String paymentId, String userId, bool isSeller) =
      _$_UpdateOrderStatus;

  String get status;
  String get paymentId;
  String get userId;
  bool get isSeller;
  _$UpdateOrderStatusCopyWith<_UpdateOrderStatus> get copyWith;
}

/// @nodoc
abstract class _$UpdateOrderResponseCopyWith<$Res> {
  factory _$UpdateOrderResponseCopyWith(_UpdateOrderResponse value,
          $Res Function(_UpdateOrderResponse) then) =
      __$UpdateOrderResponseCopyWithImpl<$Res>;
  $Res call({Either<ItemErrorFailure, Unit> failureOrItem});
}

/// @nodoc
class __$UpdateOrderResponseCopyWithImpl<$Res>
    extends _$PaymentDetailsFormEventCopyWithImpl<$Res>
    implements _$UpdateOrderResponseCopyWith<$Res> {
  __$UpdateOrderResponseCopyWithImpl(
      _UpdateOrderResponse _value, $Res Function(_UpdateOrderResponse) _then)
      : super(_value, (v) => _then(v as _UpdateOrderResponse));

  @override
  _UpdateOrderResponse get _value => super._value as _UpdateOrderResponse;

  @override
  $Res call({
    Object failureOrItem = freezed,
  }) {
    return _then(_UpdateOrderResponse(
      failureOrItem == freezed
          ? _value.failureOrItem
          : failureOrItem as Either<ItemErrorFailure, Unit>,
    ));
  }
}

/// @nodoc
class _$_UpdateOrderResponse implements _UpdateOrderResponse {
  const _$_UpdateOrderResponse(this.failureOrItem)
      : assert(failureOrItem != null);

  @override
  final Either<ItemErrorFailure, Unit> failureOrItem;

  @override
  String toString() {
    return 'PaymentDetailsFormEvent.updateOrderResponse(failureOrItem: $failureOrItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateOrderResponse &&
            (identical(other.failureOrItem, failureOrItem) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrItem, failureOrItem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrItem);

  @override
  _$UpdateOrderResponseCopyWith<_UpdateOrderResponse> get copyWith =>
      __$UpdateOrderResponseCopyWithImpl<_UpdateOrderResponse>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult updateOrderStatus(
            String status, String paymentId, String userId, bool isSeller),
    @required
        TResult updateOrderResponse(
            Either<ItemErrorFailure, Unit> failureOrItem),
  }) {
    assert(updateOrderStatus != null);
    assert(updateOrderResponse != null);
    return updateOrderResponse(failureOrItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updateOrderStatus(
        String status, String paymentId, String userId, bool isSeller),
    TResult updateOrderResponse(Either<ItemErrorFailure, Unit> failureOrItem),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateOrderResponse != null) {
      return updateOrderResponse(failureOrItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updateOrderStatus(_UpdateOrderStatus value),
    @required TResult updateOrderResponse(_UpdateOrderResponse value),
  }) {
    assert(updateOrderStatus != null);
    assert(updateOrderResponse != null);
    return updateOrderResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updateOrderStatus(_UpdateOrderStatus value),
    TResult updateOrderResponse(_UpdateOrderResponse value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateOrderResponse != null) {
      return updateOrderResponse(this);
    }
    return orElse();
  }
}

abstract class _UpdateOrderResponse implements PaymentDetailsFormEvent {
  const factory _UpdateOrderResponse(
      Either<ItemErrorFailure, Unit> failureOrItem) = _$_UpdateOrderResponse;

  Either<ItemErrorFailure, Unit> get failureOrItem;
  _$UpdateOrderResponseCopyWith<_UpdateOrderResponse> get copyWith;
}

/// @nodoc
class _$PaymentDetailsFormStateTearOff {
  const _$PaymentDetailsFormStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _UpdateInProgress updateInProgress() {
    return const _UpdateInProgress();
  }

// ignore: unused_element
  _UpdateSuccess updateSuccess() {
    return const _UpdateSuccess();
  }

// ignore: unused_element
  _UpdateFailed updateFailed() {
    return const _UpdateFailed();
  }
}

/// @nodoc
// ignore: unused_element
const $PaymentDetailsFormState = _$PaymentDetailsFormStateTearOff();

/// @nodoc
mixin _$PaymentDetailsFormState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult updateInProgress(),
    @required TResult updateSuccess(),
    @required TResult updateFailed(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult updateInProgress(),
    TResult updateSuccess(),
    TResult updateFailed(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult updateInProgress(_UpdateInProgress value),
    @required TResult updateSuccess(_UpdateSuccess value),
    @required TResult updateFailed(_UpdateFailed value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult updateInProgress(_UpdateInProgress value),
    TResult updateSuccess(_UpdateSuccess value),
    TResult updateFailed(_UpdateFailed value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PaymentDetailsFormStateCopyWith<$Res> {
  factory $PaymentDetailsFormStateCopyWith(PaymentDetailsFormState value,
          $Res Function(PaymentDetailsFormState) then) =
      _$PaymentDetailsFormStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentDetailsFormStateCopyWithImpl<$Res>
    implements $PaymentDetailsFormStateCopyWith<$Res> {
  _$PaymentDetailsFormStateCopyWithImpl(this._value, this._then);

  final PaymentDetailsFormState _value;
  // ignore: unused_field
  final $Res Function(PaymentDetailsFormState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$PaymentDetailsFormStateCopyWithImpl<$Res>
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
    return 'PaymentDetailsFormState.initial()';
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
    @required TResult updateInProgress(),
    @required TResult updateSuccess(),
    @required TResult updateFailed(),
  }) {
    assert(initial != null);
    assert(updateInProgress != null);
    assert(updateSuccess != null);
    assert(updateFailed != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult updateInProgress(),
    TResult updateSuccess(),
    TResult updateFailed(),
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
    @required TResult updateInProgress(_UpdateInProgress value),
    @required TResult updateSuccess(_UpdateSuccess value),
    @required TResult updateFailed(_UpdateFailed value),
  }) {
    assert(initial != null);
    assert(updateInProgress != null);
    assert(updateSuccess != null);
    assert(updateFailed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult updateInProgress(_UpdateInProgress value),
    TResult updateSuccess(_UpdateSuccess value),
    TResult updateFailed(_UpdateFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PaymentDetailsFormState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$UpdateInProgressCopyWith<$Res> {
  factory _$UpdateInProgressCopyWith(
          _UpdateInProgress value, $Res Function(_UpdateInProgress) then) =
      __$UpdateInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdateInProgressCopyWithImpl<$Res>
    extends _$PaymentDetailsFormStateCopyWithImpl<$Res>
    implements _$UpdateInProgressCopyWith<$Res> {
  __$UpdateInProgressCopyWithImpl(
      _UpdateInProgress _value, $Res Function(_UpdateInProgress) _then)
      : super(_value, (v) => _then(v as _UpdateInProgress));

  @override
  _UpdateInProgress get _value => super._value as _UpdateInProgress;
}

/// @nodoc
class _$_UpdateInProgress implements _UpdateInProgress {
  const _$_UpdateInProgress();

  @override
  String toString() {
    return 'PaymentDetailsFormState.updateInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UpdateInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult updateInProgress(),
    @required TResult updateSuccess(),
    @required TResult updateFailed(),
  }) {
    assert(initial != null);
    assert(updateInProgress != null);
    assert(updateSuccess != null);
    assert(updateFailed != null);
    return updateInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult updateInProgress(),
    TResult updateSuccess(),
    TResult updateFailed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateInProgress != null) {
      return updateInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult updateInProgress(_UpdateInProgress value),
    @required TResult updateSuccess(_UpdateSuccess value),
    @required TResult updateFailed(_UpdateFailed value),
  }) {
    assert(initial != null);
    assert(updateInProgress != null);
    assert(updateSuccess != null);
    assert(updateFailed != null);
    return updateInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult updateInProgress(_UpdateInProgress value),
    TResult updateSuccess(_UpdateSuccess value),
    TResult updateFailed(_UpdateFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateInProgress != null) {
      return updateInProgress(this);
    }
    return orElse();
  }
}

abstract class _UpdateInProgress implements PaymentDetailsFormState {
  const factory _UpdateInProgress() = _$_UpdateInProgress;
}

/// @nodoc
abstract class _$UpdateSuccessCopyWith<$Res> {
  factory _$UpdateSuccessCopyWith(
          _UpdateSuccess value, $Res Function(_UpdateSuccess) then) =
      __$UpdateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdateSuccessCopyWithImpl<$Res>
    extends _$PaymentDetailsFormStateCopyWithImpl<$Res>
    implements _$UpdateSuccessCopyWith<$Res> {
  __$UpdateSuccessCopyWithImpl(
      _UpdateSuccess _value, $Res Function(_UpdateSuccess) _then)
      : super(_value, (v) => _then(v as _UpdateSuccess));

  @override
  _UpdateSuccess get _value => super._value as _UpdateSuccess;
}

/// @nodoc
class _$_UpdateSuccess implements _UpdateSuccess {
  const _$_UpdateSuccess();

  @override
  String toString() {
    return 'PaymentDetailsFormState.updateSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UpdateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult updateInProgress(),
    @required TResult updateSuccess(),
    @required TResult updateFailed(),
  }) {
    assert(initial != null);
    assert(updateInProgress != null);
    assert(updateSuccess != null);
    assert(updateFailed != null);
    return updateSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult updateInProgress(),
    TResult updateSuccess(),
    TResult updateFailed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateSuccess != null) {
      return updateSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult updateInProgress(_UpdateInProgress value),
    @required TResult updateSuccess(_UpdateSuccess value),
    @required TResult updateFailed(_UpdateFailed value),
  }) {
    assert(initial != null);
    assert(updateInProgress != null);
    assert(updateSuccess != null);
    assert(updateFailed != null);
    return updateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult updateInProgress(_UpdateInProgress value),
    TResult updateSuccess(_UpdateSuccess value),
    TResult updateFailed(_UpdateFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateSuccess != null) {
      return updateSuccess(this);
    }
    return orElse();
  }
}

abstract class _UpdateSuccess implements PaymentDetailsFormState {
  const factory _UpdateSuccess() = _$_UpdateSuccess;
}

/// @nodoc
abstract class _$UpdateFailedCopyWith<$Res> {
  factory _$UpdateFailedCopyWith(
          _UpdateFailed value, $Res Function(_UpdateFailed) then) =
      __$UpdateFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UpdateFailedCopyWithImpl<$Res>
    extends _$PaymentDetailsFormStateCopyWithImpl<$Res>
    implements _$UpdateFailedCopyWith<$Res> {
  __$UpdateFailedCopyWithImpl(
      _UpdateFailed _value, $Res Function(_UpdateFailed) _then)
      : super(_value, (v) => _then(v as _UpdateFailed));

  @override
  _UpdateFailed get _value => super._value as _UpdateFailed;
}

/// @nodoc
class _$_UpdateFailed implements _UpdateFailed {
  const _$_UpdateFailed();

  @override
  String toString() {
    return 'PaymentDetailsFormState.updateFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _UpdateFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult updateInProgress(),
    @required TResult updateSuccess(),
    @required TResult updateFailed(),
  }) {
    assert(initial != null);
    assert(updateInProgress != null);
    assert(updateSuccess != null);
    assert(updateFailed != null);
    return updateFailed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult updateInProgress(),
    TResult updateSuccess(),
    TResult updateFailed(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateFailed != null) {
      return updateFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult updateInProgress(_UpdateInProgress value),
    @required TResult updateSuccess(_UpdateSuccess value),
    @required TResult updateFailed(_UpdateFailed value),
  }) {
    assert(initial != null);
    assert(updateInProgress != null);
    assert(updateSuccess != null);
    assert(updateFailed != null);
    return updateFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult updateInProgress(_UpdateInProgress value),
    TResult updateSuccess(_UpdateSuccess value),
    TResult updateFailed(_UpdateFailed value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updateFailed != null) {
      return updateFailed(this);
    }
    return orElse();
  }
}

abstract class _UpdateFailed implements PaymentDetailsFormState {
  const factory _UpdateFailed() = _$_UpdateFailed;
}
