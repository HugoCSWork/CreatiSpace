// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_messaging_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserMessagingDto _$UserMessagingDtoFromJson(Map<String, dynamic> json) {
  return _UserMessagingDto.fromJson(json);
}

/// @nodoc
class _$UserMessagingDtoTearOff {
  const _$UserMessagingDtoTearOff();

// ignore: unused_element
  _UserMessagingDto call(
      {@JsonKey(ignore: true) String id,
      @required String userMessagingName,
      String lastMessage,
      String lastSeen,
      String imageUrl,
      bool unreadMessages,
      String userId}) {
    return _UserMessagingDto(
      id: id,
      userMessagingName: userMessagingName,
      lastMessage: lastMessage,
      lastSeen: lastSeen,
      imageUrl: imageUrl,
      unreadMessages: unreadMessages,
      userId: userId,
    );
  }

// ignore: unused_element
  UserMessagingDto fromJson(Map<String, Object> json) {
    return UserMessagingDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserMessagingDto = _$UserMessagingDtoTearOff();

/// @nodoc
mixin _$UserMessagingDto {
  @JsonKey(ignore: true)
  String get id;
  String get userMessagingName;
  String get lastMessage;
  String get lastSeen;
  String get imageUrl;
  bool get unreadMessages;
  String get userId;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserMessagingDtoCopyWith<UserMessagingDto> get copyWith;
}

/// @nodoc
abstract class $UserMessagingDtoCopyWith<$Res> {
  factory $UserMessagingDtoCopyWith(
          UserMessagingDto value, $Res Function(UserMessagingDto) then) =
      _$UserMessagingDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String userMessagingName,
      String lastMessage,
      String lastSeen,
      String imageUrl,
      bool unreadMessages,
      String userId});
}

/// @nodoc
class _$UserMessagingDtoCopyWithImpl<$Res>
    implements $UserMessagingDtoCopyWith<$Res> {
  _$UserMessagingDtoCopyWithImpl(this._value, this._then);

  final UserMessagingDto _value;
  // ignore: unused_field
  final $Res Function(UserMessagingDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object userMessagingName = freezed,
    Object lastMessage = freezed,
    Object lastSeen = freezed,
    Object imageUrl = freezed,
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
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      unreadMessages: unreadMessages == freezed
          ? _value.unreadMessages
          : unreadMessages as bool,
      userId: userId == freezed ? _value.userId : userId as String,
    ));
  }
}

/// @nodoc
abstract class _$UserMessagingDtoCopyWith<$Res>
    implements $UserMessagingDtoCopyWith<$Res> {
  factory _$UserMessagingDtoCopyWith(
          _UserMessagingDto value, $Res Function(_UserMessagingDto) then) =
      __$UserMessagingDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String userMessagingName,
      String lastMessage,
      String lastSeen,
      String imageUrl,
      bool unreadMessages,
      String userId});
}

/// @nodoc
class __$UserMessagingDtoCopyWithImpl<$Res>
    extends _$UserMessagingDtoCopyWithImpl<$Res>
    implements _$UserMessagingDtoCopyWith<$Res> {
  __$UserMessagingDtoCopyWithImpl(
      _UserMessagingDto _value, $Res Function(_UserMessagingDto) _then)
      : super(_value, (v) => _then(v as _UserMessagingDto));

  @override
  _UserMessagingDto get _value => super._value as _UserMessagingDto;

  @override
  $Res call({
    Object id = freezed,
    Object userMessagingName = freezed,
    Object lastMessage = freezed,
    Object lastSeen = freezed,
    Object imageUrl = freezed,
    Object unreadMessages = freezed,
    Object userId = freezed,
  }) {
    return _then(_UserMessagingDto(
      id: id == freezed ? _value.id : id as String,
      userMessagingName: userMessagingName == freezed
          ? _value.userMessagingName
          : userMessagingName as String,
      lastMessage:
          lastMessage == freezed ? _value.lastMessage : lastMessage as String,
      lastSeen: lastSeen == freezed ? _value.lastSeen : lastSeen as String,
      imageUrl: imageUrl == freezed ? _value.imageUrl : imageUrl as String,
      unreadMessages: unreadMessages == freezed
          ? _value.unreadMessages
          : unreadMessages as bool,
      userId: userId == freezed ? _value.userId : userId as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserMessagingDto extends _UserMessagingDto {
  const _$_UserMessagingDto(
      {@JsonKey(ignore: true) this.id,
      @required this.userMessagingName,
      this.lastMessage,
      this.lastSeen,
      this.imageUrl,
      this.unreadMessages,
      this.userId})
      : assert(userMessagingName != null),
        super._();

  factory _$_UserMessagingDto.fromJson(Map<String, dynamic> json) =>
      _$_$_UserMessagingDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String userMessagingName;
  @override
  final String lastMessage;
  @override
  final String lastSeen;
  @override
  final String imageUrl;
  @override
  final bool unreadMessages;
  @override
  final String userId;

  @override
  String toString() {
    return 'UserMessagingDto(id: $id, userMessagingName: $userMessagingName, lastMessage: $lastMessage, lastSeen: $lastSeen, imageUrl: $imageUrl, unreadMessages: $unreadMessages, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserMessagingDto &&
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
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)) &&
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
      const DeepCollectionEquality().hash(imageUrl) ^
      const DeepCollectionEquality().hash(unreadMessages) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$UserMessagingDtoCopyWith<_UserMessagingDto> get copyWith =>
      __$UserMessagingDtoCopyWithImpl<_UserMessagingDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserMessagingDtoToJson(this);
  }
}

abstract class _UserMessagingDto extends UserMessagingDto {
  const _UserMessagingDto._() : super._();
  const factory _UserMessagingDto(
      {@JsonKey(ignore: true) String id,
      @required String userMessagingName,
      String lastMessage,
      String lastSeen,
      String imageUrl,
      bool unreadMessages,
      String userId}) = _$_UserMessagingDto;

  factory _UserMessagingDto.fromJson(Map<String, dynamic> json) =
      _$_UserMessagingDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get userMessagingName;
  @override
  String get lastMessage;
  @override
  String get lastSeen;
  @override
  String get imageUrl;
  @override
  bool get unreadMessages;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$UserMessagingDtoCopyWith<_UserMessagingDto> get copyWith;
}
