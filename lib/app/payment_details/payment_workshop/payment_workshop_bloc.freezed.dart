// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'payment_workshop_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PaymentWorkshopEventTearOff {
  const _$PaymentWorkshopEventTearOff();

// ignore: unused_element
  _WatchAlWorkshopList watchAlWorkshopList() {
    return const _WatchAlWorkshopList();
  }

// ignore: unused_element
  _WorkshopListReceived workshopListReceived(
      Either<PaymentDetailsErrorFailure, KtList<WorkshopPayment>>
          failureOrMessages) {
    return _WorkshopListReceived(
      failureOrMessages,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PaymentWorkshopEvent = _$PaymentWorkshopEventTearOff();

/// @nodoc
mixin _$PaymentWorkshopEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAlWorkshopList(),
    @required
        TResult workshopListReceived(
            Either<PaymentDetailsErrorFailure, KtList<WorkshopPayment>>
                failureOrMessages),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAlWorkshopList(),
    TResult workshopListReceived(
        Either<PaymentDetailsErrorFailure, KtList<WorkshopPayment>>
            failureOrMessages),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAlWorkshopList(_WatchAlWorkshopList value),
    @required TResult workshopListReceived(_WorkshopListReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAlWorkshopList(_WatchAlWorkshopList value),
    TResult workshopListReceived(_WorkshopListReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PaymentWorkshopEventCopyWith<$Res> {
  factory $PaymentWorkshopEventCopyWith(PaymentWorkshopEvent value,
          $Res Function(PaymentWorkshopEvent) then) =
      _$PaymentWorkshopEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentWorkshopEventCopyWithImpl<$Res>
    implements $PaymentWorkshopEventCopyWith<$Res> {
  _$PaymentWorkshopEventCopyWithImpl(this._value, this._then);

  final PaymentWorkshopEvent _value;
  // ignore: unused_field
  final $Res Function(PaymentWorkshopEvent) _then;
}

/// @nodoc
abstract class _$WatchAlWorkshopListCopyWith<$Res> {
  factory _$WatchAlWorkshopListCopyWith(_WatchAlWorkshopList value,
          $Res Function(_WatchAlWorkshopList) then) =
      __$WatchAlWorkshopListCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAlWorkshopListCopyWithImpl<$Res>
    extends _$PaymentWorkshopEventCopyWithImpl<$Res>
    implements _$WatchAlWorkshopListCopyWith<$Res> {
  __$WatchAlWorkshopListCopyWithImpl(
      _WatchAlWorkshopList _value, $Res Function(_WatchAlWorkshopList) _then)
      : super(_value, (v) => _then(v as _WatchAlWorkshopList));

  @override
  _WatchAlWorkshopList get _value => super._value as _WatchAlWorkshopList;
}

/// @nodoc
class _$_WatchAlWorkshopList implements _WatchAlWorkshopList {
  const _$_WatchAlWorkshopList();

  @override
  String toString() {
    return 'PaymentWorkshopEvent.watchAlWorkshopList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAlWorkshopList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAlWorkshopList(),
    @required
        TResult workshopListReceived(
            Either<PaymentDetailsErrorFailure, KtList<WorkshopPayment>>
                failureOrMessages),
  }) {
    assert(watchAlWorkshopList != null);
    assert(workshopListReceived != null);
    return watchAlWorkshopList();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAlWorkshopList(),
    TResult workshopListReceived(
        Either<PaymentDetailsErrorFailure, KtList<WorkshopPayment>>
            failureOrMessages),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAlWorkshopList != null) {
      return watchAlWorkshopList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAlWorkshopList(_WatchAlWorkshopList value),
    @required TResult workshopListReceived(_WorkshopListReceived value),
  }) {
    assert(watchAlWorkshopList != null);
    assert(workshopListReceived != null);
    return watchAlWorkshopList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAlWorkshopList(_WatchAlWorkshopList value),
    TResult workshopListReceived(_WorkshopListReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAlWorkshopList != null) {
      return watchAlWorkshopList(this);
    }
    return orElse();
  }
}

abstract class _WatchAlWorkshopList implements PaymentWorkshopEvent {
  const factory _WatchAlWorkshopList() = _$_WatchAlWorkshopList;
}

/// @nodoc
abstract class _$WorkshopListReceivedCopyWith<$Res> {
  factory _$WorkshopListReceivedCopyWith(_WorkshopListReceived value,
          $Res Function(_WorkshopListReceived) then) =
      __$WorkshopListReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<PaymentDetailsErrorFailure, KtList<WorkshopPayment>>
          failureOrMessages});
}

/// @nodoc
class __$WorkshopListReceivedCopyWithImpl<$Res>
    extends _$PaymentWorkshopEventCopyWithImpl<$Res>
    implements _$WorkshopListReceivedCopyWith<$Res> {
  __$WorkshopListReceivedCopyWithImpl(
      _WorkshopListReceived _value, $Res Function(_WorkshopListReceived) _then)
      : super(_value, (v) => _then(v as _WorkshopListReceived));

  @override
  _WorkshopListReceived get _value => super._value as _WorkshopListReceived;

  @override
  $Res call({
    Object failureOrMessages = freezed,
  }) {
    return _then(_WorkshopListReceived(
      failureOrMessages == freezed
          ? _value.failureOrMessages
          : failureOrMessages
              as Either<PaymentDetailsErrorFailure, KtList<WorkshopPayment>>,
    ));
  }
}

/// @nodoc
class _$_WorkshopListReceived implements _WorkshopListReceived {
  const _$_WorkshopListReceived(this.failureOrMessages)
      : assert(failureOrMessages != null);

  @override
  final Either<PaymentDetailsErrorFailure, KtList<WorkshopPayment>>
      failureOrMessages;

  @override
  String toString() {
    return 'PaymentWorkshopEvent.workshopListReceived(failureOrMessages: $failureOrMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkshopListReceived &&
            (identical(other.failureOrMessages, failureOrMessages) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrMessages, failureOrMessages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrMessages);

  @override
  _$WorkshopListReceivedCopyWith<_WorkshopListReceived> get copyWith =>
      __$WorkshopListReceivedCopyWithImpl<_WorkshopListReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAlWorkshopList(),
    @required
        TResult workshopListReceived(
            Either<PaymentDetailsErrorFailure, KtList<WorkshopPayment>>
                failureOrMessages),
  }) {
    assert(watchAlWorkshopList != null);
    assert(workshopListReceived != null);
    return workshopListReceived(failureOrMessages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAlWorkshopList(),
    TResult workshopListReceived(
        Either<PaymentDetailsErrorFailure, KtList<WorkshopPayment>>
            failureOrMessages),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (workshopListReceived != null) {
      return workshopListReceived(failureOrMessages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAlWorkshopList(_WatchAlWorkshopList value),
    @required TResult workshopListReceived(_WorkshopListReceived value),
  }) {
    assert(watchAlWorkshopList != null);
    assert(workshopListReceived != null);
    return workshopListReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAlWorkshopList(_WatchAlWorkshopList value),
    TResult workshopListReceived(_WorkshopListReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (workshopListReceived != null) {
      return workshopListReceived(this);
    }
    return orElse();
  }
}

abstract class _WorkshopListReceived implements PaymentWorkshopEvent {
  const factory _WorkshopListReceived(
      Either<PaymentDetailsErrorFailure, KtList<WorkshopPayment>>
          failureOrMessages) = _$_WorkshopListReceived;

  Either<PaymentDetailsErrorFailure, KtList<WorkshopPayment>>
      get failureOrMessages;
  _$WorkshopListReceivedCopyWith<_WorkshopListReceived> get copyWith;
}

/// @nodoc
class _$PaymentWorkshopStateTearOff {
  const _$PaymentWorkshopStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(KtList<WorkshopPayment> workshopPayment) {
    return _LoadSuccess(
      workshopPayment,
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
const $PaymentWorkshopState = _$PaymentWorkshopStateTearOff();

/// @nodoc
mixin _$PaymentWorkshopState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<WorkshopPayment> workshopPayment),
    @required
        TResult loadFailure(
            PaymentDetailsErrorFailure paymentDetailsErrorFailure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<WorkshopPayment> workshopPayment),
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
abstract class $PaymentWorkshopStateCopyWith<$Res> {
  factory $PaymentWorkshopStateCopyWith(PaymentWorkshopState value,
          $Res Function(PaymentWorkshopState) then) =
      _$PaymentWorkshopStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PaymentWorkshopStateCopyWithImpl<$Res>
    implements $PaymentWorkshopStateCopyWith<$Res> {
  _$PaymentWorkshopStateCopyWithImpl(this._value, this._then);

  final PaymentWorkshopState _value;
  // ignore: unused_field
  final $Res Function(PaymentWorkshopState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$PaymentWorkshopStateCopyWithImpl<$Res>
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
    return 'PaymentWorkshopState.initial()';
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
    @required TResult loadSuccess(KtList<WorkshopPayment> workshopPayment),
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
    TResult loadSuccess(KtList<WorkshopPayment> workshopPayment),
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

abstract class _Initial implements PaymentWorkshopState {
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
    extends _$PaymentWorkshopStateCopyWithImpl<$Res>
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
    return 'PaymentWorkshopState.loadInProgress()';
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
    @required TResult loadSuccess(KtList<WorkshopPayment> workshopPayment),
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
    TResult loadSuccess(KtList<WorkshopPayment> workshopPayment),
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

abstract class _LoadInProgress implements PaymentWorkshopState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<WorkshopPayment> workshopPayment});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$PaymentWorkshopStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object workshopPayment = freezed,
  }) {
    return _then(_LoadSuccess(
      workshopPayment == freezed
          ? _value.workshopPayment
          : workshopPayment as KtList<WorkshopPayment>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.workshopPayment) : assert(workshopPayment != null);

  @override
  final KtList<WorkshopPayment> workshopPayment;

  @override
  String toString() {
    return 'PaymentWorkshopState.loadSuccess(workshopPayment: $workshopPayment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.workshopPayment, workshopPayment) ||
                const DeepCollectionEquality()
                    .equals(other.workshopPayment, workshopPayment)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(workshopPayment);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<WorkshopPayment> workshopPayment),
    @required
        TResult loadFailure(
            PaymentDetailsErrorFailure paymentDetailsErrorFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(workshopPayment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<WorkshopPayment> workshopPayment),
    TResult loadFailure(PaymentDetailsErrorFailure paymentDetailsErrorFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(workshopPayment);
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

abstract class _LoadSuccess implements PaymentWorkshopState {
  const factory _LoadSuccess(KtList<WorkshopPayment> workshopPayment) =
      _$_LoadSuccess;

  KtList<WorkshopPayment> get workshopPayment;
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
    extends _$PaymentWorkshopStateCopyWithImpl<$Res>
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
    return 'PaymentWorkshopState.loadFailure(paymentDetailsErrorFailure: $paymentDetailsErrorFailure)';
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
    @required TResult loadSuccess(KtList<WorkshopPayment> workshopPayment),
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
    TResult loadSuccess(KtList<WorkshopPayment> workshopPayment),
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

abstract class _LoadFailure implements PaymentWorkshopState {
  const factory _LoadFailure(
      PaymentDetailsErrorFailure paymentDetailsErrorFailure) = _$_LoadFailure;

  PaymentDetailsErrorFailure get paymentDetailsErrorFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
