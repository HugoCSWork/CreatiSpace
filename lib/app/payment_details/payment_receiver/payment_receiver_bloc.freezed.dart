// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'payment_receiver_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PaymentReceiverEventTearOff {
  const _$PaymentReceiverEventTearOff();

// ignore: unused_element
  _WatchAllPaymentReceiverList watchAllPaymentReceiverList() {
    return const _WatchAllPaymentReceiverList();
  }

// ignore: unused_element
  _PaymentReceiversListReceived paymentReceiversListReceived(
      Either<PaymentDetailsErrorFailure, KtList<PaymentDetails>>
          failureOrMessages) {
    return _PaymentReceiversListReceived(
      failureOrMessages,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PaymentReceiverEvent = _$PaymentReceiverEventTearOff();

/// @nodoc
mixin _$PaymentReceiverEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllPaymentReceiverList(),
    @required
        TResult paymentReceiversListReceived(
            Either<PaymentDetailsErrorFailure, KtList<PaymentDetails>>
                failureOrMessages),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllPaymentReceiverList(),
    TResult paymentReceiversListReceived(
        Either<PaymentDetailsErrorFailure, KtList<PaymentDetails>>
            failureOrMessages),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult watchAllPaymentReceiverList(_WatchAllPaymentReceiverList value),
    @required
        TResult paymentReceiversListReceived(
            _PaymentReceiversListReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllPaymentReceiverList(_WatchAllPaymentReceiverList value),
    TResult paymentReceiversListReceived(_PaymentReceiversListReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PaymentReceiverEventCopyWith<$Res> {
  factory $PaymentReceiverEventCopyWith(PaymentReceiverEvent value,
          $Res Function(PaymentReceiverEvent) then) =
      _$PaymentReceiverEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentReceiverEventCopyWithImpl<$Res>
    implements $PaymentReceiverEventCopyWith<$Res> {
  _$PaymentReceiverEventCopyWithImpl(this._value, this._then);

  final PaymentReceiverEvent _value;
  // ignore: unused_field
  final $Res Function(PaymentReceiverEvent) _then;
}

/// @nodoc
abstract class _$WatchAllPaymentReceiverListCopyWith<$Res> {
  factory _$WatchAllPaymentReceiverListCopyWith(
          _WatchAllPaymentReceiverList value,
          $Res Function(_WatchAllPaymentReceiverList) then) =
      __$WatchAllPaymentReceiverListCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllPaymentReceiverListCopyWithImpl<$Res>
    extends _$PaymentReceiverEventCopyWithImpl<$Res>
    implements _$WatchAllPaymentReceiverListCopyWith<$Res> {
  __$WatchAllPaymentReceiverListCopyWithImpl(
      _WatchAllPaymentReceiverList _value,
      $Res Function(_WatchAllPaymentReceiverList) _then)
      : super(_value, (v) => _then(v as _WatchAllPaymentReceiverList));

  @override
  _WatchAllPaymentReceiverList get _value =>
      super._value as _WatchAllPaymentReceiverList;
}

/// @nodoc
class _$_WatchAllPaymentReceiverList implements _WatchAllPaymentReceiverList {
  const _$_WatchAllPaymentReceiverList();

  @override
  String toString() {
    return 'PaymentReceiverEvent.watchAllPaymentReceiverList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllPaymentReceiverList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllPaymentReceiverList(),
    @required
        TResult paymentReceiversListReceived(
            Either<PaymentDetailsErrorFailure, KtList<PaymentDetails>>
                failureOrMessages),
  }) {
    assert(watchAllPaymentReceiverList != null);
    assert(paymentReceiversListReceived != null);
    return watchAllPaymentReceiverList();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllPaymentReceiverList(),
    TResult paymentReceiversListReceived(
        Either<PaymentDetailsErrorFailure, KtList<PaymentDetails>>
            failureOrMessages),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllPaymentReceiverList != null) {
      return watchAllPaymentReceiverList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult watchAllPaymentReceiverList(_WatchAllPaymentReceiverList value),
    @required
        TResult paymentReceiversListReceived(
            _PaymentReceiversListReceived value),
  }) {
    assert(watchAllPaymentReceiverList != null);
    assert(paymentReceiversListReceived != null);
    return watchAllPaymentReceiverList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllPaymentReceiverList(_WatchAllPaymentReceiverList value),
    TResult paymentReceiversListReceived(_PaymentReceiversListReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllPaymentReceiverList != null) {
      return watchAllPaymentReceiverList(this);
    }
    return orElse();
  }
}

abstract class _WatchAllPaymentReceiverList implements PaymentReceiverEvent {
  const factory _WatchAllPaymentReceiverList() = _$_WatchAllPaymentReceiverList;
}

/// @nodoc
abstract class _$PaymentReceiversListReceivedCopyWith<$Res> {
  factory _$PaymentReceiversListReceivedCopyWith(
          _PaymentReceiversListReceived value,
          $Res Function(_PaymentReceiversListReceived) then) =
      __$PaymentReceiversListReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<PaymentDetailsErrorFailure, KtList<PaymentDetails>>
          failureOrMessages});
}

/// @nodoc
class __$PaymentReceiversListReceivedCopyWithImpl<$Res>
    extends _$PaymentReceiverEventCopyWithImpl<$Res>
    implements _$PaymentReceiversListReceivedCopyWith<$Res> {
  __$PaymentReceiversListReceivedCopyWithImpl(
      _PaymentReceiversListReceived _value,
      $Res Function(_PaymentReceiversListReceived) _then)
      : super(_value, (v) => _then(v as _PaymentReceiversListReceived));

  @override
  _PaymentReceiversListReceived get _value =>
      super._value as _PaymentReceiversListReceived;

  @override
  $Res call({
    Object failureOrMessages = freezed,
  }) {
    return _then(_PaymentReceiversListReceived(
      failureOrMessages == freezed
          ? _value.failureOrMessages
          : failureOrMessages
              as Either<PaymentDetailsErrorFailure, KtList<PaymentDetails>>,
    ));
  }
}

/// @nodoc
class _$_PaymentReceiversListReceived implements _PaymentReceiversListReceived {
  const _$_PaymentReceiversListReceived(this.failureOrMessages)
      : assert(failureOrMessages != null);

  @override
  final Either<PaymentDetailsErrorFailure, KtList<PaymentDetails>>
      failureOrMessages;

  @override
  String toString() {
    return 'PaymentReceiverEvent.paymentReceiversListReceived(failureOrMessages: $failureOrMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PaymentReceiversListReceived &&
            (identical(other.failureOrMessages, failureOrMessages) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrMessages, failureOrMessages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrMessages);

  @override
  _$PaymentReceiversListReceivedCopyWith<_PaymentReceiversListReceived>
      get copyWith => __$PaymentReceiversListReceivedCopyWithImpl<
          _PaymentReceiversListReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllPaymentReceiverList(),
    @required
        TResult paymentReceiversListReceived(
            Either<PaymentDetailsErrorFailure, KtList<PaymentDetails>>
                failureOrMessages),
  }) {
    assert(watchAllPaymentReceiverList != null);
    assert(paymentReceiversListReceived != null);
    return paymentReceiversListReceived(failureOrMessages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllPaymentReceiverList(),
    TResult paymentReceiversListReceived(
        Either<PaymentDetailsErrorFailure, KtList<PaymentDetails>>
            failureOrMessages),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (paymentReceiversListReceived != null) {
      return paymentReceiversListReceived(failureOrMessages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required
        TResult watchAllPaymentReceiverList(_WatchAllPaymentReceiverList value),
    @required
        TResult paymentReceiversListReceived(
            _PaymentReceiversListReceived value),
  }) {
    assert(watchAllPaymentReceiverList != null);
    assert(paymentReceiversListReceived != null);
    return paymentReceiversListReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllPaymentReceiverList(_WatchAllPaymentReceiverList value),
    TResult paymentReceiversListReceived(_PaymentReceiversListReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (paymentReceiversListReceived != null) {
      return paymentReceiversListReceived(this);
    }
    return orElse();
  }
}

abstract class _PaymentReceiversListReceived implements PaymentReceiverEvent {
  const factory _PaymentReceiversListReceived(
      Either<PaymentDetailsErrorFailure, KtList<PaymentDetails>>
          failureOrMessages) = _$_PaymentReceiversListReceived;

  Either<PaymentDetailsErrorFailure, KtList<PaymentDetails>>
      get failureOrMessages;
  _$PaymentReceiversListReceivedCopyWith<_PaymentReceiversListReceived>
      get copyWith;
}

/// @nodoc
class _$PaymentReceiverStateTearOff {
  const _$PaymentReceiverStateTearOff();

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
const $PaymentReceiverState = _$PaymentReceiverStateTearOff();

/// @nodoc
mixin _$PaymentReceiverState {
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
abstract class $PaymentReceiverStateCopyWith<$Res> {
  factory $PaymentReceiverStateCopyWith(PaymentReceiverState value,
          $Res Function(PaymentReceiverState) then) =
      _$PaymentReceiverStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentReceiverStateCopyWithImpl<$Res>
    implements $PaymentReceiverStateCopyWith<$Res> {
  _$PaymentReceiverStateCopyWithImpl(this._value, this._then);

  final PaymentReceiverState _value;
  // ignore: unused_field
  final $Res Function(PaymentReceiverState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$PaymentReceiverStateCopyWithImpl<$Res>
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
    return 'PaymentReceiverState.initial()';
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

abstract class _Initial implements PaymentReceiverState {
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
    extends _$PaymentReceiverStateCopyWithImpl<$Res>
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
    return 'PaymentReceiverState.loadInProgress()';
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

abstract class _LoadInProgress implements PaymentReceiverState {
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
    extends _$PaymentReceiverStateCopyWithImpl<$Res>
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
    return 'PaymentReceiverState.loadSuccess(paymentDetails: $paymentDetails)';
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

abstract class _LoadSuccess implements PaymentReceiverState {
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
    extends _$PaymentReceiverStateCopyWithImpl<$Res>
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
    return 'PaymentReceiverState.loadFailure(paymentDetailsErrorFailure: $paymentDetailsErrorFailure)';
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

abstract class _LoadFailure implements PaymentReceiverState {
  const factory _LoadFailure(
      PaymentDetailsErrorFailure paymentDetailsErrorFailure) = _$_LoadFailure;

  PaymentDetailsErrorFailure get paymentDetailsErrorFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
