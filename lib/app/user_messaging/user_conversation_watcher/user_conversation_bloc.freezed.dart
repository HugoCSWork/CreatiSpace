// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_conversation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserConversationEventTearOff {
  const _$UserConversationEventTearOff();

// ignore: unused_element
  _watchAllUserConversation watchAllUserConversation(String peerId) {
    return _watchAllUserConversation(
      peerId,
    );
  }

// ignore: unused_element
  _UserConversationReceived MessagingListReceived(
      Either<UserErrorFailure, KtList<UserConversation>> failureOrMessages) {
    return _UserConversationReceived(
      failureOrMessages,
    );
  }

// ignore: unused_element
  _SendMessage sendMessage(String peerId, String message, int type) {
    return _SendMessage(
      peerId,
      message,
      type,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserConversationEvent = _$UserConversationEventTearOff();

/// @nodoc
mixin _$UserConversationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllUserConversation(String peerId),
    @required
        TResult MessagingListReceived(
            Either<UserErrorFailure, KtList<UserConversation>>
                failureOrMessages),
    @required TResult sendMessage(String peerId, String message, int type),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllUserConversation(String peerId),
    TResult MessagingListReceived(
        Either<UserErrorFailure, KtList<UserConversation>> failureOrMessages),
    TResult sendMessage(String peerId, String message, int type),
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
abstract class $UserConversationEventCopyWith<$Res> {
  factory $UserConversationEventCopyWith(UserConversationEvent value,
          $Res Function(UserConversationEvent) then) =
      _$UserConversationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserConversationEventCopyWithImpl<$Res>
    implements $UserConversationEventCopyWith<$Res> {
  _$UserConversationEventCopyWithImpl(this._value, this._then);

  final UserConversationEvent _value;
  // ignore: unused_field
  final $Res Function(UserConversationEvent) _then;
}

/// @nodoc
abstract class _$watchAllUserConversationCopyWith<$Res> {
  factory _$watchAllUserConversationCopyWith(_watchAllUserConversation value,
          $Res Function(_watchAllUserConversation) then) =
      __$watchAllUserConversationCopyWithImpl<$Res>;
  $Res call({String peerId});
}

/// @nodoc
class __$watchAllUserConversationCopyWithImpl<$Res>
    extends _$UserConversationEventCopyWithImpl<$Res>
    implements _$watchAllUserConversationCopyWith<$Res> {
  __$watchAllUserConversationCopyWithImpl(_watchAllUserConversation _value,
      $Res Function(_watchAllUserConversation) _then)
      : super(_value, (v) => _then(v as _watchAllUserConversation));

  @override
  _watchAllUserConversation get _value =>
      super._value as _watchAllUserConversation;

  @override
  $Res call({
    Object peerId = freezed,
  }) {
    return _then(_watchAllUserConversation(
      peerId == freezed ? _value.peerId : peerId as String,
    ));
  }
}

/// @nodoc
class _$_watchAllUserConversation implements _watchAllUserConversation {
  const _$_watchAllUserConversation(this.peerId) : assert(peerId != null);

  @override
  final String peerId;

  @override
  String toString() {
    return 'UserConversationEvent.watchAllUserConversation(peerId: $peerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _watchAllUserConversation &&
            (identical(other.peerId, peerId) ||
                const DeepCollectionEquality().equals(other.peerId, peerId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(peerId);

  @override
  _$watchAllUserConversationCopyWith<_watchAllUserConversation> get copyWith =>
      __$watchAllUserConversationCopyWithImpl<_watchAllUserConversation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllUserConversation(String peerId),
    @required
        TResult MessagingListReceived(
            Either<UserErrorFailure, KtList<UserConversation>>
                failureOrMessages),
    @required TResult sendMessage(String peerId, String message, int type),
  }) {
    assert(watchAllUserConversation != null);
    assert(MessagingListReceived != null);
    assert(sendMessage != null);
    return watchAllUserConversation(peerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllUserConversation(String peerId),
    TResult MessagingListReceived(
        Either<UserErrorFailure, KtList<UserConversation>> failureOrMessages),
    TResult sendMessage(String peerId, String message, int type),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllUserConversation != null) {
      return watchAllUserConversation(peerId);
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

abstract class _watchAllUserConversation implements UserConversationEvent {
  const factory _watchAllUserConversation(String peerId) =
      _$_watchAllUserConversation;

  String get peerId;
  _$watchAllUserConversationCopyWith<_watchAllUserConversation> get copyWith;
}

/// @nodoc
abstract class _$UserConversationReceivedCopyWith<$Res> {
  factory _$UserConversationReceivedCopyWith(_UserConversationReceived value,
          $Res Function(_UserConversationReceived) then) =
      __$UserConversationReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<UserErrorFailure, KtList<UserConversation>> failureOrMessages});
}

/// @nodoc
class __$UserConversationReceivedCopyWithImpl<$Res>
    extends _$UserConversationEventCopyWithImpl<$Res>
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
          : failureOrMessages
              as Either<UserErrorFailure, KtList<UserConversation>>,
    ));
  }
}

/// @nodoc
class _$_UserConversationReceived implements _UserConversationReceived {
  const _$_UserConversationReceived(this.failureOrMessages)
      : assert(failureOrMessages != null);

  @override
  final Either<UserErrorFailure, KtList<UserConversation>> failureOrMessages;

  @override
  String toString() {
    return 'UserConversationEvent.MessagingListReceived(failureOrMessages: $failureOrMessages)';
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
    @required TResult watchAllUserConversation(String peerId),
    @required
        TResult MessagingListReceived(
            Either<UserErrorFailure, KtList<UserConversation>>
                failureOrMessages),
    @required TResult sendMessage(String peerId, String message, int type),
  }) {
    assert(watchAllUserConversation != null);
    assert(MessagingListReceived != null);
    assert(sendMessage != null);
    return MessagingListReceived(failureOrMessages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllUserConversation(String peerId),
    TResult MessagingListReceived(
        Either<UserErrorFailure, KtList<UserConversation>> failureOrMessages),
    TResult sendMessage(String peerId, String message, int type),
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

abstract class _UserConversationReceived implements UserConversationEvent {
  const factory _UserConversationReceived(
      Either<UserErrorFailure, KtList<UserConversation>>
          failureOrMessages) = _$_UserConversationReceived;

  Either<UserErrorFailure, KtList<UserConversation>> get failureOrMessages;
  _$UserConversationReceivedCopyWith<_UserConversationReceived> get copyWith;
}

/// @nodoc
abstract class _$SendMessageCopyWith<$Res> {
  factory _$SendMessageCopyWith(
          _SendMessage value, $Res Function(_SendMessage) then) =
      __$SendMessageCopyWithImpl<$Res>;
  $Res call({String peerId, String message, int type});
}

/// @nodoc
class __$SendMessageCopyWithImpl<$Res>
    extends _$UserConversationEventCopyWithImpl<$Res>
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
    Object type = freezed,
  }) {
    return _then(_SendMessage(
      peerId == freezed ? _value.peerId : peerId as String,
      message == freezed ? _value.message : message as String,
      type == freezed ? _value.type : type as int,
    ));
  }
}

/// @nodoc
class _$_SendMessage implements _SendMessage {
  const _$_SendMessage(this.peerId, this.message, this.type)
      : assert(peerId != null),
        assert(message != null),
        assert(type != null);

  @override
  final String peerId;
  @override
  final String message;
  @override
  final int type;

  @override
  String toString() {
    return 'UserConversationEvent.sendMessage(peerId: $peerId, message: $message, type: $type)';
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
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(peerId) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type);

  @override
  _$SendMessageCopyWith<_SendMessage> get copyWith =>
      __$SendMessageCopyWithImpl<_SendMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllUserConversation(String peerId),
    @required
        TResult MessagingListReceived(
            Either<UserErrorFailure, KtList<UserConversation>>
                failureOrMessages),
    @required TResult sendMessage(String peerId, String message, int type),
  }) {
    assert(watchAllUserConversation != null);
    assert(MessagingListReceived != null);
    assert(sendMessage != null);
    return sendMessage(peerId, message, type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllUserConversation(String peerId),
    TResult MessagingListReceived(
        Either<UserErrorFailure, KtList<UserConversation>> failureOrMessages),
    TResult sendMessage(String peerId, String message, int type),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (sendMessage != null) {
      return sendMessage(peerId, message, type);
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

abstract class _SendMessage implements UserConversationEvent {
  const factory _SendMessage(String peerId, String message, int type) =
      _$_SendMessage;

  String get peerId;
  String get message;
  int get type;
  _$SendMessageCopyWith<_SendMessage> get copyWith;
}

/// @nodoc
class _$UserConversationStateTearOff {
  const _$UserConversationStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(KtList<UserConversation> items) {
    return _LoadSuccess(
      items,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(UserErrorFailure itemFailure) {
    return _LoadFailure(
      itemFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserConversationState = _$UserConversationStateTearOff();

/// @nodoc
mixin _$UserConversationState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<UserConversation> items),
    @required TResult loadFailure(UserErrorFailure itemFailure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<UserConversation> items),
    TResult loadFailure(UserErrorFailure itemFailure),
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
abstract class $UserConversationStateCopyWith<$Res> {
  factory $UserConversationStateCopyWith(UserConversationState value,
          $Res Function(UserConversationState) then) =
      _$UserConversationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserConversationStateCopyWithImpl<$Res>
    implements $UserConversationStateCopyWith<$Res> {
  _$UserConversationStateCopyWithImpl(this._value, this._then);

  final UserConversationState _value;
  // ignore: unused_field
  final $Res Function(UserConversationState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$UserConversationStateCopyWithImpl<$Res>
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
    return 'UserConversationState.initial()';
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
    @required TResult loadSuccess(KtList<UserConversation> items),
    @required TResult loadFailure(UserErrorFailure itemFailure),
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
    TResult loadSuccess(KtList<UserConversation> items),
    TResult loadFailure(UserErrorFailure itemFailure),
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

abstract class _Initial implements UserConversationState {
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
    extends _$UserConversationStateCopyWithImpl<$Res>
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
    return 'UserConversationState.loadInProgress()';
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
    @required TResult loadSuccess(KtList<UserConversation> items),
    @required TResult loadFailure(UserErrorFailure itemFailure),
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
    TResult loadSuccess(KtList<UserConversation> items),
    TResult loadFailure(UserErrorFailure itemFailure),
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

abstract class _LoadInProgress implements UserConversationState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<UserConversation> items});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$UserConversationStateCopyWithImpl<$Res>
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
      items == freezed ? _value.items : items as KtList<UserConversation>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.items) : assert(items != null);

  @override
  final KtList<UserConversation> items;

  @override
  String toString() {
    return 'UserConversationState.loadSuccess(items: $items)';
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
    @required TResult loadSuccess(KtList<UserConversation> items),
    @required TResult loadFailure(UserErrorFailure itemFailure),
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
    TResult loadSuccess(KtList<UserConversation> items),
    TResult loadFailure(UserErrorFailure itemFailure),
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

abstract class _LoadSuccess implements UserConversationState {
  const factory _LoadSuccess(KtList<UserConversation> items) = _$_LoadSuccess;

  KtList<UserConversation> get items;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({UserErrorFailure itemFailure});

  $UserErrorFailureCopyWith<$Res> get itemFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$UserConversationStateCopyWithImpl<$Res>
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
          : itemFailure as UserErrorFailure,
    ));
  }

  @override
  $UserErrorFailureCopyWith<$Res> get itemFailure {
    if (_value.itemFailure == null) {
      return null;
    }
    return $UserErrorFailureCopyWith<$Res>(_value.itemFailure, (value) {
      return _then(_value.copyWith(itemFailure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.itemFailure) : assert(itemFailure != null);

  @override
  final UserErrorFailure itemFailure;

  @override
  String toString() {
    return 'UserConversationState.loadFailure(itemFailure: $itemFailure)';
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
    @required TResult loadSuccess(KtList<UserConversation> items),
    @required TResult loadFailure(UserErrorFailure itemFailure),
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
    TResult loadSuccess(KtList<UserConversation> items),
    TResult loadFailure(UserErrorFailure itemFailure),
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

abstract class _LoadFailure implements UserConversationState {
  const factory _LoadFailure(UserErrorFailure itemFailure) = _$_LoadFailure;

  UserErrorFailure get itemFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
