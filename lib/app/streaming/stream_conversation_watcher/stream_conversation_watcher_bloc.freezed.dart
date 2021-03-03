// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'stream_conversation_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$StreamConversationWatcherEventTearOff {
  const _$StreamConversationWatcherEventTearOff();

// ignore: unused_element
  _watchAllUserConversation watchAllUserConversation(
      String hostId, String workshopId) {
    return _watchAllUserConversation(
      hostId,
      workshopId,
    );
  }

// ignore: unused_element
  _UserConversationReceived MessagingListReceived(
      Either<String, KtList<StreamingMessage>> failureOrMessages) {
    return _UserConversationReceived(
      failureOrMessages,
    );
  }

// ignore: unused_element
  _SendMessage sendMessage(String peerId, String message, String workshopId) {
    return _SendMessage(
      peerId,
      message,
      workshopId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $StreamConversationWatcherEvent =
    _$StreamConversationWatcherEventTearOff();

/// @nodoc
mixin _$StreamConversationWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult watchAllUserConversation(String hostId, String workshopId),
    @required
        TResult MessagingListReceived(
            Either<String, KtList<StreamingMessage>> failureOrMessages),
    @required
        TResult sendMessage(String peerId, String message, String workshopId),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllUserConversation(String hostId, String workshopId),
    TResult MessagingListReceived(
        Either<String, KtList<StreamingMessage>> failureOrMessages),
    TResult sendMessage(String peerId, String message, String workshopId),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllUserConversation(_watchAllUserConversation value),
    @required TResult MessagingListReceived(_UserConversationReceived value),
    @required TResult sendMessage(_SendMessage value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllUserConversation(_watchAllUserConversation value),
    TResult MessagingListReceived(_UserConversationReceived value),
    TResult sendMessage(_SendMessage value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $StreamConversationWatcherEventCopyWith<$Res> {
  factory $StreamConversationWatcherEventCopyWith(
          StreamConversationWatcherEvent value,
          $Res Function(StreamConversationWatcherEvent) then) =
      _$StreamConversationWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$StreamConversationWatcherEventCopyWithImpl<$Res>
    implements $StreamConversationWatcherEventCopyWith<$Res> {
  _$StreamConversationWatcherEventCopyWithImpl(this._value, this._then);

  final StreamConversationWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(StreamConversationWatcherEvent) _then;
}

/// @nodoc
abstract class _$watchAllUserConversationCopyWith<$Res> {
  factory _$watchAllUserConversationCopyWith(_watchAllUserConversation value,
          $Res Function(_watchAllUserConversation) then) =
      __$watchAllUserConversationCopyWithImpl<$Res>;
  $Res call({String hostId, String workshopId});
}

/// @nodoc
class __$watchAllUserConversationCopyWithImpl<$Res>
    extends _$StreamConversationWatcherEventCopyWithImpl<$Res>
    implements _$watchAllUserConversationCopyWith<$Res> {
  __$watchAllUserConversationCopyWithImpl(_watchAllUserConversation _value,
      $Res Function(_watchAllUserConversation) _then)
      : super(_value, (v) => _then(v as _watchAllUserConversation));

  @override
  _watchAllUserConversation get _value =>
      super._value as _watchAllUserConversation;

  @override
  $Res call({
    Object hostId = freezed,
    Object workshopId = freezed,
  }) {
    return _then(_watchAllUserConversation(
      hostId == freezed ? _value.hostId : hostId as String,
      workshopId == freezed ? _value.workshopId : workshopId as String,
    ));
  }
}

/// @nodoc
class _$_watchAllUserConversation implements _watchAllUserConversation {
  const _$_watchAllUserConversation(this.hostId, this.workshopId)
      : assert(hostId != null),
        assert(workshopId != null);

  @override
  final String hostId;
  @override
  final String workshopId;

  @override
  String toString() {
    return 'StreamConversationWatcherEvent.watchAllUserConversation(hostId: $hostId, workshopId: $workshopId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _watchAllUserConversation &&
            (identical(other.hostId, hostId) ||
                const DeepCollectionEquality().equals(other.hostId, hostId)) &&
            (identical(other.workshopId, workshopId) ||
                const DeepCollectionEquality()
                    .equals(other.workshopId, workshopId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(hostId) ^
      const DeepCollectionEquality().hash(workshopId);

  @override
  _$watchAllUserConversationCopyWith<_watchAllUserConversation> get copyWith =>
      __$watchAllUserConversationCopyWithImpl<_watchAllUserConversation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult watchAllUserConversation(String hostId, String workshopId),
    @required
        TResult MessagingListReceived(
            Either<String, KtList<StreamingMessage>> failureOrMessages),
    @required
        TResult sendMessage(String peerId, String message, String workshopId),
  }) {
    assert(watchAllUserConversation != null);
    assert(MessagingListReceived != null);
    assert(sendMessage != null);
    return watchAllUserConversation(hostId, workshopId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllUserConversation(String hostId, String workshopId),
    TResult MessagingListReceived(
        Either<String, KtList<StreamingMessage>> failureOrMessages),
    TResult sendMessage(String peerId, String message, String workshopId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllUserConversation != null) {
      return watchAllUserConversation(hostId, workshopId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllUserConversation(_watchAllUserConversation value),
    @required TResult MessagingListReceived(_UserConversationReceived value),
    @required TResult sendMessage(_SendMessage value),
  }) {
    assert(watchAllUserConversation != null);
    assert(MessagingListReceived != null);
    assert(sendMessage != null);
    return watchAllUserConversation(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllUserConversation(_watchAllUserConversation value),
    TResult MessagingListReceived(_UserConversationReceived value),
    TResult sendMessage(_SendMessage value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllUserConversation != null) {
      return watchAllUserConversation(this);
    }
    return orElse();
  }
}

abstract class _watchAllUserConversation
    implements StreamConversationWatcherEvent {
  const factory _watchAllUserConversation(String hostId, String workshopId) =
      _$_watchAllUserConversation;

  String get hostId;
  String get workshopId;
  _$watchAllUserConversationCopyWith<_watchAllUserConversation> get copyWith;
}

/// @nodoc
abstract class _$UserConversationReceivedCopyWith<$Res> {
  factory _$UserConversationReceivedCopyWith(_UserConversationReceived value,
          $Res Function(_UserConversationReceived) then) =
      __$UserConversationReceivedCopyWithImpl<$Res>;
  $Res call({Either<String, KtList<StreamingMessage>> failureOrMessages});
}

/// @nodoc
class __$UserConversationReceivedCopyWithImpl<$Res>
    extends _$StreamConversationWatcherEventCopyWithImpl<$Res>
    implements _$UserConversationReceivedCopyWith<$Res> {
  __$UserConversationReceivedCopyWithImpl(_UserConversationReceived _value,
      $Res Function(_UserConversationReceived) _then)
      : super(_value, (v) => _then(v as _UserConversationReceived));

  @override
  _UserConversationReceived get _value =>
      super._value as _UserConversationReceived;

  @override
  $Res call({
    Object failureOrMessages = freezed,
  }) {
    return _then(_UserConversationReceived(
      failureOrMessages == freezed
          ? _value.failureOrMessages
          : failureOrMessages as Either<String, KtList<StreamingMessage>>,
    ));
  }
}

/// @nodoc
class _$_UserConversationReceived implements _UserConversationReceived {
  const _$_UserConversationReceived(this.failureOrMessages)
      : assert(failureOrMessages != null);

  @override
  final Either<String, KtList<StreamingMessage>> failureOrMessages;

  @override
  String toString() {
    return 'StreamConversationWatcherEvent.MessagingListReceived(failureOrMessages: $failureOrMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserConversationReceived &&
            (identical(other.failureOrMessages, failureOrMessages) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrMessages, failureOrMessages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrMessages);

  @override
  _$UserConversationReceivedCopyWith<_UserConversationReceived> get copyWith =>
      __$UserConversationReceivedCopyWithImpl<_UserConversationReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult watchAllUserConversation(String hostId, String workshopId),
    @required
        TResult MessagingListReceived(
            Either<String, KtList<StreamingMessage>> failureOrMessages),
    @required
        TResult sendMessage(String peerId, String message, String workshopId),
  }) {
    assert(watchAllUserConversation != null);
    assert(MessagingListReceived != null);
    assert(sendMessage != null);
    return MessagingListReceived(failureOrMessages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllUserConversation(String hostId, String workshopId),
    TResult MessagingListReceived(
        Either<String, KtList<StreamingMessage>> failureOrMessages),
    TResult sendMessage(String peerId, String message, String workshopId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (MessagingListReceived != null) {
      return MessagingListReceived(failureOrMessages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllUserConversation(_watchAllUserConversation value),
    @required TResult MessagingListReceived(_UserConversationReceived value),
    @required TResult sendMessage(_SendMessage value),
  }) {
    assert(watchAllUserConversation != null);
    assert(MessagingListReceived != null);
    assert(sendMessage != null);
    return MessagingListReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllUserConversation(_watchAllUserConversation value),
    TResult MessagingListReceived(_UserConversationReceived value),
    TResult sendMessage(_SendMessage value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (MessagingListReceived != null) {
      return MessagingListReceived(this);
    }
    return orElse();
  }
}

abstract class _UserConversationReceived
    implements StreamConversationWatcherEvent {
  const factory _UserConversationReceived(
          Either<String, KtList<StreamingMessage>> failureOrMessages) =
      _$_UserConversationReceived;

  Either<String, KtList<StreamingMessage>> get failureOrMessages;
  _$UserConversationReceivedCopyWith<_UserConversationReceived> get copyWith;
}

/// @nodoc
abstract class _$SendMessageCopyWith<$Res> {
  factory _$SendMessageCopyWith(
          _SendMessage value, $Res Function(_SendMessage) then) =
      __$SendMessageCopyWithImpl<$Res>;
  $Res call({String peerId, String message, String workshopId});
}

/// @nodoc
class __$SendMessageCopyWithImpl<$Res>
    extends _$StreamConversationWatcherEventCopyWithImpl<$Res>
    implements _$SendMessageCopyWith<$Res> {
  __$SendMessageCopyWithImpl(
      _SendMessage _value, $Res Function(_SendMessage) _then)
      : super(_value, (v) => _then(v as _SendMessage));

  @override
  _SendMessage get _value => super._value as _SendMessage;

  @override
  $Res call({
    Object peerId = freezed,
    Object message = freezed,
    Object workshopId = freezed,
  }) {
    return _then(_SendMessage(
      peerId == freezed ? _value.peerId : peerId as String,
      message == freezed ? _value.message : message as String,
      workshopId == freezed ? _value.workshopId : workshopId as String,
    ));
  }
}

/// @nodoc
class _$_SendMessage implements _SendMessage {
  const _$_SendMessage(this.peerId, this.message, this.workshopId)
      : assert(peerId != null),
        assert(message != null),
        assert(workshopId != null);

  @override
  final String peerId;
  @override
  final String message;
  @override
  final String workshopId;

  @override
  String toString() {
    return 'StreamConversationWatcherEvent.sendMessage(peerId: $peerId, message: $message, workshopId: $workshopId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SendMessage &&
            (identical(other.peerId, peerId) ||
                const DeepCollectionEquality().equals(other.peerId, peerId)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.workshopId, workshopId) ||
                const DeepCollectionEquality()
                    .equals(other.workshopId, workshopId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(peerId) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(workshopId);

  @override
  _$SendMessageCopyWith<_SendMessage> get copyWith =>
      __$SendMessageCopyWithImpl<_SendMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required
        TResult watchAllUserConversation(String hostId, String workshopId),
    @required
        TResult MessagingListReceived(
            Either<String, KtList<StreamingMessage>> failureOrMessages),
    @required
        TResult sendMessage(String peerId, String message, String workshopId),
  }) {
    assert(watchAllUserConversation != null);
    assert(MessagingListReceived != null);
    assert(sendMessage != null);
    return sendMessage(peerId, message, workshopId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllUserConversation(String hostId, String workshopId),
    TResult MessagingListReceived(
        Either<String, KtList<StreamingMessage>> failureOrMessages),
    TResult sendMessage(String peerId, String message, String workshopId),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sendMessage != null) {
      return sendMessage(peerId, message, workshopId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllUserConversation(_watchAllUserConversation value),
    @required TResult MessagingListReceived(_UserConversationReceived value),
    @required TResult sendMessage(_SendMessage value),
  }) {
    assert(watchAllUserConversation != null);
    assert(MessagingListReceived != null);
    assert(sendMessage != null);
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllUserConversation(_watchAllUserConversation value),
    TResult MessagingListReceived(_UserConversationReceived value),
    TResult sendMessage(_SendMessage value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements StreamConversationWatcherEvent {
  const factory _SendMessage(String peerId, String message, String workshopId) =
      _$_SendMessage;

  String get peerId;
  String get message;
  String get workshopId;
  _$SendMessageCopyWith<_SendMessage> get copyWith;
}

/// @nodoc
class _$StreamConversationWatcherStateTearOff {
  const _$StreamConversationWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(KtList<StreamingMessage> items) {
    return _LoadSuccess(
      items,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(String itemFailure) {
    return _LoadFailure(
      itemFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $StreamConversationWatcherState =
    _$StreamConversationWatcherStateTearOff();

/// @nodoc
mixin _$StreamConversationWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<StreamingMessage> items),
    @required TResult loadFailure(String itemFailure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<StreamingMessage> items),
    TResult loadFailure(String itemFailure),
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
abstract class $StreamConversationWatcherStateCopyWith<$Res> {
  factory $StreamConversationWatcherStateCopyWith(
          StreamConversationWatcherState value,
          $Res Function(StreamConversationWatcherState) then) =
      _$StreamConversationWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$StreamConversationWatcherStateCopyWithImpl<$Res>
    implements $StreamConversationWatcherStateCopyWith<$Res> {
  _$StreamConversationWatcherStateCopyWithImpl(this._value, this._then);

  final StreamConversationWatcherState _value;
  // ignore: unused_field
  final $Res Function(StreamConversationWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$StreamConversationWatcherStateCopyWithImpl<$Res>
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
    return 'StreamConversationWatcherState.initial()';
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
    @required TResult loadSuccess(KtList<StreamingMessage> items),
    @required TResult loadFailure(String itemFailure),
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
    TResult loadSuccess(KtList<StreamingMessage> items),
    TResult loadFailure(String itemFailure),
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

abstract class _Initial implements StreamConversationWatcherState {
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
    extends _$StreamConversationWatcherStateCopyWithImpl<$Res>
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
    return 'StreamConversationWatcherState.loadInProgress()';
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
    @required TResult loadSuccess(KtList<StreamingMessage> items),
    @required TResult loadFailure(String itemFailure),
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
    TResult loadSuccess(KtList<StreamingMessage> items),
    TResult loadFailure(String itemFailure),
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

abstract class _LoadInProgress implements StreamConversationWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<StreamingMessage> items});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$StreamConversationWatcherStateCopyWithImpl<$Res>
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
      items == freezed ? _value.items : items as KtList<StreamingMessage>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.items) : assert(items != null);

  @override
  final KtList<StreamingMessage> items;

  @override
  String toString() {
    return 'StreamConversationWatcherState.loadSuccess(items: $items)';
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
    @required TResult loadSuccess(KtList<StreamingMessage> items),
    @required TResult loadFailure(String itemFailure),
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
    TResult loadSuccess(KtList<StreamingMessage> items),
    TResult loadFailure(String itemFailure),
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

abstract class _LoadSuccess implements StreamConversationWatcherState {
  const factory _LoadSuccess(KtList<StreamingMessage> items) = _$_LoadSuccess;

  KtList<StreamingMessage> get items;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({String itemFailure});
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$StreamConversationWatcherStateCopyWithImpl<$Res>
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
      itemFailure == freezed ? _value.itemFailure : itemFailure as String,
    ));
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.itemFailure) : assert(itemFailure != null);

  @override
  final String itemFailure;

  @override
  String toString() {
    return 'StreamConversationWatcherState.loadFailure(itemFailure: $itemFailure)';
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
    @required TResult loadSuccess(KtList<StreamingMessage> items),
    @required TResult loadFailure(String itemFailure),
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
    TResult loadSuccess(KtList<StreamingMessage> items),
    TResult loadFailure(String itemFailure),
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

abstract class _LoadFailure implements StreamConversationWatcherState {
  const factory _LoadFailure(String itemFailure) = _$_LoadFailure;

  String get itemFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
