// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'payment_sender_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PaymentSenderEventTearOff {
  const _$PaymentSenderEventTearOff();

// ignore: unused_element
  _WatchAllPaymentSenderList watchAllPaymentSenderList() {
    return const _WatchAllPaymentSenderList();
  }

// ignore: unused_element
  _PaymentSendersListReceived paymentSendersListReceived(
      Either<PaymentDetailsErrorFailure, KtList<PaymentDetails>>
          failureOrMessages) {
    return _PaymentSendersListReceived(
      failureOrMessages,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PaymentSenderEvent = _$PaymentSenderEventTearOff();

/// @nodoc
mixin _$PaymentSenderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllPaymentSenderList(),
    @required
        TResult paymentSendersListReceived(
            Either<PaymentDetailsErrorFailure, KtList<PaymentDetails>>
                failureOrMessages),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllPaymentSenderList(),
    TResult paymentSendersListReceived(
        Either<PaymentDetailsErrorFailure, KtList<PaymentDetails>>
            failureOrMessages),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult watchAllPaymentSenderList(_WatchAllPaymentSenderList value),
    @required
        TResult paymentSendersListReceived(_PaymentSendersListReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllPaymentSenderList(_WatchAllPaymentSenderList value),
    TResult paymentSendersListReceived(_PaymentSendersListReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PaymentSenderEventCopyWith<$Res> {
  factory $PaymentSenderEventCopyWith(
          PaymentSenderEvent value, $Res Function(PaymentSenderEvent) then) =
      _$PaymentSenderEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentSenderEventCopyWithImpl<$Res>
    implements $PaymentSenderEventCopyWith<$Res> {
  _$PaymentSenderEventCopyWithImpl(this._value, this._then);

  final PaymentSenderEvent _value;
  // ignore: unused_field
  final $Res Function(PaymentSenderEvent) _then;
}

/// @nodoc
abstract class _$WatchAllPaymentSenderListCopyWith<$Res> {
  factory _$WatchAllPaymentSenderListCopyWith(_WatchAllPaymentSenderList value,
          $Res Function(_WatchAllPaymentSenderList) then) =
      __$WatchAllPaymentSenderListCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllPaymentSenderListCopyWithImpl<$Res>
    extends _$PaymentSenderEventCopyWithImpl<$Res>
    implements _$WatchAllPaymentSenderListCopyWith<$Res> {
  __$WatchAllPaymentSenderListCopyWithImpl(_WatchAllPaymentSenderList _value,
      $Res Function(_WatchAllPaymentSenderList) _then)
      : super(_value, (v) => _then(v as _WatchAllPaymentSenderList));

  @override
  _WatchAllPaymentSenderList get _value =>
      super._value as _WatchAllPaymentSenderList;
}

/// @nodoc
class _$_WatchAllPaymentSenderList implements _WatchAllPaymentSenderList {
  const _$_WatchAllPaymentSenderList();

  @override
  String toString() {
    return 'PaymentSenderEvent.watchAllPaymentSenderList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllPaymentSenderList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllPaymentSenderList(),
    @required
        TResult paymentSendersListReceived(
            Either<PaymentDetailsErrorFailure, KtList<PaymentDetails>>
                failureOrMessages),
  }) {
    assert(watchAllPaymentSenderList != null);
    assert(paymentSendersListReceived != null);
    return watchAllPaymentSenderList();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllPaymentSenderList(),
    TResult paymentSendersListReceived(
        Either<PaymentDetailsErrorFailure, KtList<PaymentDetails>>
            failureOrMessages),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllPaymentSenderList != null) {
      return watchAllPaymentSenderList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult watchAllPaymentSenderList(_WatchAllPaymentSenderList value),
    @required
        TResult paymentSendersListReceived(_PaymentSendersListReceived value),
  }) {
    assert(watchAllPaymentSenderList != null);
    assert(paymentSendersListReceived != null);
    return watchAllPaymentSenderList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllPaymentSenderList(_WatchAllPaymentSenderList value),
    TResult paymentSendersListReceived(_PaymentSendersListReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllPaymentSenderList != null) {
      return watchAllPaymentSenderList(this);
    }
    return orElse();
  }
}

abstract class _WatchAllPaymentSenderList implements PaymentSenderEvent {
  const factory _WatchAllPaymentSenderList() = _$_WatchAllPaymentSenderList;
}

/// @nodoc
abstract class _$PaymentSendersListReceivedCopyWith<$Res> {
  factory _$PaymentSendersListReceivedCopyWith(
          _PaymentSendersListReceived value,
          $Res Function(_PaymentSendersListReceived) then) =
      __$PaymentSendersListReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<PaymentDetailsErrorFailure, KtList<PaymentDetails>>
          failureOrMessages});
}

/// @nodoc
class __$PaymentSendersListReceivedCopyWithImpl<$Res>
    extends _$PaymentSenderEventCopyWithImpl<$Res>
    implements _$PaymentSendersListReceivedCopyWith<$Res> {
  __$PaymentSendersListReceivedCopyWithImpl(_PaymentSendersListReceived _value,
      $Res Function(_PaymentSendersListReceived) _then)
      : super(_value, (v) => _then(v as _PaymentSendersListReceived));

  @override
  _PaymentSendersListReceived get _value =>
      super._value as _PaymentSendersListReceived;

  @override
  $Res call({
    Object failureOrMessages = freezed,
  }) {
    return _then(_PaymentSendersListReceived(
      failureOrMessages == freezed
          ? _value.failureOrMessages
          : failureOrMessages
              as Either<PaymentDetailsErrorFailure, KtList<PaymentDetails>>,
    ));
  }
}

/// @nodoc
class _$_PaymentSendersListReceived implements _PaymentSendersListReceived {
  const _$_PaymentSendersListReceived(this.failureOrMessages)
      : assert(failureOrMessages != null);

  @override
  final Either<PaymentDetailsErrorFailure, KtList<PaymentDetails>>
      failureOrMessages;

  @override
  String toString() {
    return 'PaymentSenderEvent.paymentSendersListReceived(failureOrMessages: $failureOrMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentSendersListReceived &&
            (identical(other.failureOrMessages, failureOrMessages) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrMessages, failureOrMessages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrMessages);

  @override
  _$PaymentSendersListReceivedCopyWith<_PaymentSendersListReceived>
      get copyWith => __$PaymentSendersListReceivedCopyWithImpl<
          _PaymentSendersListReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllPaymentSenderList(),
    @required
        TResult paymentSendersListReceived(
            Either<PaymentDetailsErrorFailure, KtList<PaymentDetails>>
                failureOrMessages),
  }) {
    assert(watchAllPaymentSenderList != null);
    assert(paymentSendersListReceived != null);
    return paymentSendersListReceived(failureOrMessages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllPaymentSenderList(),
    TResult paymentSendersListReceived(
        Either<PaymentDetailsErrorFailure, KtList<PaymentDetails>>
            failureOrMessages),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (paymentSendersListReceived != null) {
      return paymentSendersListReceived(failureOrMessages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult watchAllPaymentSenderList(_WatchAllPaymentSenderList value),
    @required
        TResult paymentSendersListReceived(_PaymentSendersListReceived value),
  }) {
    assert(watchAllPaymentSenderList != null);
    assert(paymentSendersListReceived != null);
    return paymentSendersListReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllPaymentSenderList(_WatchAllPaymentSenderList value),
    TResult paymentSendersListReceived(_PaymentSendersListReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (paymentSendersListReceived != null) {
      return paymentSendersListReceived(this);
    }
    return orElse();
  }
}

abstract class _PaymentSendersListReceived implements PaymentSenderEvent {
  const factory _PaymentSendersListReceived(
      Either<PaymentDetailsErrorFailure, KtList<PaymentDetails>>
          failureOrMessages) = _$_PaymentSendersListReceived;

  Either<PaymentDetailsErrorFailure, KtList<PaymentDetails>>
      get failureOrMessages;
  _$PaymentSendersListReceivedCopyWith<_PaymentSendersListReceived>
      get copyWith;
}

/// @nodoc
class _$PaymentSenderStateTearOff {
  const _$PaymentSenderStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(KtList<PaymentDetails> paymentDetails) {
    return _LoadSuccess(
      paymentDetails,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(
      PaymentDetailsErrorFailure paymentDetailsErrorFailure) {
    return _LoadFailure(
      paymentDetailsErrorFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PaymentSenderState = _$PaymentSenderStateTearOff();

/// @nodoc
mixin _$PaymentSenderState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<PaymentDetails> paymentDetails),
    @required
        TResult loadFailure(
            PaymentDetailsErrorFailure paymentDetailsErrorFailure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<PaymentDetails> paymentDetails),
    TResult loadFailure(PaymentDetailsErrorFailure paymentDetailsErrorFailure),
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
abstract class $PaymentSenderStateCopyWith<$Res> {
  factory $PaymentSenderStateCopyWith(
          PaymentSenderState value, $Res Function(PaymentSenderState) then) =
      _$PaymentSenderStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentSenderStateCopyWithImpl<$Res>
    implements $PaymentSenderStateCopyWith<$Res> {
  _$PaymentSenderStateCopyWithImpl(this._value, this._then);

  final PaymentSenderState _value;
  // ignore: unused_field
  final $Res Function(PaymentSenderState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$PaymentSenderStateCopyWithImpl<$Res>
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
    return 'PaymentSenderState.initial()';
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
    @required TResult loadSuccess(KtList<PaymentDetails> paymentDetails),
    @required
        TResult loadFailure(
            PaymentDetailsErrorFailure paymentDetailsErrorFailure),
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
    TResult loadSuccess(KtList<PaymentDetails> paymentDetails),
    TResult loadFailure(PaymentDetailsErrorFailure paymentDetailsErrorFailure),
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

abstract class _Initial implements PaymentSenderState {
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
    extends _$PaymentSenderStateCopyWithImpl<$Res>
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
    return 'PaymentSenderState.loadInProgress()';
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
    @required TResult loadSuccess(KtList<PaymentDetails> paymentDetails),
    @required
        TResult loadFailure(
            PaymentDetailsErrorFailure paymentDetailsErrorFailure),
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
    TResult loadSuccess(KtList<PaymentDetails> paymentDetails),
    TResult loadFailure(PaymentDetailsErrorFailure paymentDetailsErrorFailure),
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

abstract class _LoadInProgress implements PaymentSenderState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<PaymentDetails> paymentDetails});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$PaymentSenderStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object paymentDetails = freezed,
  }) {
    return _then(_LoadSuccess(
      paymentDetails == freezed
          ? _value.paymentDetails
          : paymentDetails as KtList<PaymentDetails>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.paymentDetails) : assert(paymentDetails != null);

  @override
  final KtList<PaymentDetails> paymentDetails;

  @override
  String toString() {
    return 'PaymentSenderState.loadSuccess(paymentDetails: $paymentDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.paymentDetails, paymentDetails) ||
                const DeepCollectionEquality()
                    .equals(other.paymentDetails, paymentDetails)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(paymentDetails);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<PaymentDetails> paymentDetails),
    @required
        TResult loadFailure(
            PaymentDetailsErrorFailure paymentDetailsErrorFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(paymentDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<PaymentDetails> paymentDetails),
    TResult loadFailure(PaymentDetailsErrorFailure paymentDetailsErrorFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(paymentDetails);
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

abstract class _LoadSuccess implements PaymentSenderState {
  const factory _LoadSuccess(KtList<PaymentDetails> paymentDetails) =
      _$_LoadSuccess;

  KtList<PaymentDetails> get paymentDetails;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({PaymentDetailsErrorFailure paymentDetailsErrorFailure});

  $PaymentDetailsErrorFailureCopyWith<$Res> get paymentDetailsErrorFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$PaymentSenderStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object paymentDetailsErrorFailure = freezed,
  }) {
    return _then(_LoadFailure(
      paymentDetailsErrorFailure == freezed
          ? _value.paymentDetailsErrorFailure
          : paymentDetailsErrorFailure as PaymentDetailsErrorFailure,
    ));
  }

  @override
  $PaymentDetailsErrorFailureCopyWith<$Res> get paymentDetailsErrorFailure {
    if (_value.paymentDetailsErrorFailure == null) {
      return null;
    }
    return $PaymentDetailsErrorFailureCopyWith<$Res>(
        _value.paymentDetailsErrorFailure, (value) {
      return _then(_value.copyWith(paymentDetailsErrorFailure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.paymentDetailsErrorFailure)
      : assert(paymentDetailsErrorFailure != null);

  @override
  final PaymentDetailsErrorFailure paymentDetailsErrorFailure;

  @override
  String toString() {
    return 'PaymentSenderState.loadFailure(paymentDetailsErrorFailure: $paymentDetailsErrorFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.paymentDetailsErrorFailure,
                    paymentDetailsErrorFailure) ||
                const DeepCollectionEquality().equals(
                    other.paymentDetailsErrorFailure,
                    paymentDetailsErrorFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(paymentDetailsErrorFailure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<PaymentDetails> paymentDetails),
    @required
        TResult loadFailure(
            PaymentDetailsErrorFailure paymentDetailsErrorFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(paymentDetailsErrorFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<PaymentDetails> paymentDetails),
    TResult loadFailure(PaymentDetailsErrorFailure paymentDetailsErrorFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(paymentDetailsErrorFailure);
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

abstract class _LoadFailure implements PaymentSenderState {
  const factory _LoadFailure(
      PaymentDetailsErrorFailure paymentDetailsErrorFailure) = _$_LoadFailure;

  PaymentDetailsErrorFailure get paymentDetailsErrorFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
