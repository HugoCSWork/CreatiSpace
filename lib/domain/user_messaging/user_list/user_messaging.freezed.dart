// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_messaging.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserMessagingTearOff {
  const _$UserMessagingTearOff();

// ignore: unused_element
  _UserMessaging call(
      {@required String id,
      @required String userMessagingName,
      String lastMessage,
      String lastSeen,
      String unreadMessages,
      String userId}) {
    return _UserMessaging(
      id: id,
      userMessagingName: userMessagingName,
      lastMessage: lastMessage,
      lastSeen: lastSeen,
      unreadMessages: unreadMessages,
      userId: userId,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserMessaging = _$UserMessagingTearOff();

/// @nodoc
mixin _$UserMessaging {
  String get id;
  String get userMessagingName;
  String get lastMessage;
  String get lastSeen;
  String get unreadMessages;
  String get userId;

  $UserMessagingCopyWith<UserMessaging> get copyWith;
}

/// @nodoc
abstract class $UserMessagingCopyWith<$Res> {
  factory $UserMessagingCopyWith(
          UserMessaging value, $Res Function(UserMessaging) then) =
      _$UserMessagingCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String userMessagingName,
      String lastMessage,
      String lastSeen,
      String unreadMessages,
      String userId});
}

/// @nodoc
class _$UserMessagingCopyWithImpl<$Res>
    implements $UserMessagingCopyWith<$Res> {
  _$UserMessagingCopyWithImpl(this._value, this._then);

  final UserMessaging _value;
  // ignore: unused_field
  final $Res Function(UserMessaging) _then;

  @override
  $Res call({
    Object id = freezed,
    Object userMessagingName = freezed,
    Object lastMessage = freezed,
    Object lastSeen = freezed,
    Object unreadMessages = freezed,
    Object userId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      userMessagingName: userMessagingName == freezed
          ? _value.userMessagingName
          : userMessagingName as String,
      lastMessage:
          lastMessage == freezed ? _value.lastMessage : lastMessage as String,
      lastSeen: lastSeen == freezed ? _value.lastSeen : lastSeen as String,
      unreadMessages: unreadMessages == freezed
          ? _value.unreadMessages
          : unreadMessages as String,
      userId: userId == freezed ? _value.userId : userId as String,
    ));
  }
}

/// @nodoc
abstract class _$UserMessagingCopyWith<$Res>
    implements $UserMessagingCopyWith<$Res> {
  factory _$UserMessagingCopyWith(
          _UserMessaging value, $Res Function(_UserMessaging) then) =
      __$UserMessagingCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String userMessagingName,
      String lastMessage,
      String lastSeen,
      String unreadMessages,
      String userId});
}

/// @nodoc
class __$UserMessagingCopyWithImpl<$Res>
    extends _$UserMessagingCopyWithImpl<$Res>
    implements _$UserMessagingCopyWith<$Res> {
  __$UserMessagingCopyWithImpl(
      _UserMessaging _value, $Res Function(_UserMessaging) _then)
      : super(_value, (v) => _then(v as _UserMessaging));

  @override
  _UserMessaging get _value => super._value as _UserMessaging;

  @override
  $Res call({
    Object id = freezed,
    Object userMessagingName = freezed,
    Object lastMessage = freezed,
    Object lastSeen = freezed,
    Object unreadMessages = freezed,
    Object userId = freezed,
  }) {
    return _then(_UserMessaging(
      id: id == freezed ? _value.id : id as String,
      userMessagingName: userMessagingName == freezed
          ? _value.userMessagingName
          : userMessagingName as String,
      lastMessage:
          lastMessage == freezed ? _value.lastMessage : lastMessage as String,
      lastSeen: lastSeen == freezed ? _value.lastSeen : lastSeen as String,
      unreadMessages: unreadMessages == freezed
          ? _value.unreadMessages
          : unreadMessages as String,
      userId: userId == freezed ? _value.userId : userId as String,
    ));
  }
}

/// @nodoc
class _$_UserMessaging extends _UserMessaging {
  const _$_UserMessaging(
      {@required this.id,
      @required this.userMessagingName,
      this.lastMessage,
      this.lastSeen,
      this.unreadMessages,
      this.userId})
      : assert(id != null),
        assert(userMessagingName != null),
        super._();

  @override
  final String id;
  @override
  final String userMessagingName;
  @override
  final String lastMessage;
  @override
  final String lastSeen;
  @override
  final String unreadMessages;
  @override
  final String userId;

  @override
  String toString() {
    return 'UserMessaging(id: $id, userMessagingName: $userMessagingName, lastMessage: $lastMessage, lastSeen: $lastSeen, unreadMessages: $unreadMessages, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserMessaging &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.userMessagingName, userMessagingName) ||
                const DeepCollectionEquality()
                    .equals(other.userMessagingName, userMessagingName)) &&
            (identical(other.lastMessage, lastMessage) ||
                const DeepCollectionEquality()
                    .equals(other.lastMessage, lastMessage)) &&
            (identical(other.lastSeen, lastSeen) ||
                const DeepCollectionEquality()
                    .equals(other.lastSeen, lastSeen)) &&
            (identical(other.unreadMessages, unreadMessages) ||
                const DeepCollectionEquality()
                    .equals(other.unreadMessages, unreadMessages)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(userMessagingName) ^
      const DeepCollectionEquality().hash(lastMessage) ^
      const DeepCollectionEquality().hash(lastSeen) ^
      const DeepCollectionEquality().hash(unreadMessages) ^
      const DeepCollectionEquality().hash(userId);

  @override
  _$UserMessagingCopyWith<_UserMessaging> get copyWith =>
      __$UserMessagingCopyWithImpl<_UserMessaging>(this, _$identity);
}

abstract class _UserMessaging extends UserMessaging {
  const _UserMessaging._() : super._();
  const factory _UserMessaging(
      {@required String id,
      @required String userMessagingName,
      String lastMessage,
      String lastSeen,
      String unreadMessages,
      String userId}) = _$_UserMessaging;

  @override
  String get id;
  @override
  String get userMessagingName;
  @override
  String get lastMessage;
  @override
  String get lastSeen;
  @override
  String get unreadMessages;
  @override
  String get userId;
  @override
  _$UserMessagingCopyWith<_UserMessaging> get copyWith;
}
