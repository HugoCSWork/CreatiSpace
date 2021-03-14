// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_conversation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserConversationTearOff {
  const _$UserConversationTearOff();

// ignore: unused_element
  _UserConversation call(
      {@required String content,
      @required String idFrom,
      @required String idTo,
      @required String timestamp,
      @required int type}) {
    return _UserConversation(
      content: content,
      idFrom: idFrom,
      idTo: idTo,
      timestamp: timestamp,
      type: type,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserConversation = _$UserConversationTearOff();

/// @nodoc
mixin _$UserConversation {
  String get content;
  String get idFrom;
  String get idTo;
  String get timestamp;
  int get type;

  @JsonKey(ignore: true)
  $UserConversationCopyWith<UserConversation> get copyWith;
}

/// @nodoc
abstract class $UserConversationCopyWith<$Res> {
  factory $UserConversationCopyWith(
          UserConversation value, $Res Function(UserConversation) then) =
      _$UserConversationCopyWithImpl<$Res>;
  $Res call(
      {String content, String idFrom, String idTo, String timestamp, int type});
}

/// @nodoc
class _$UserConversationCopyWithImpl<$Res>
    implements $UserConversationCopyWith<$Res> {
  _$UserConversationCopyWithImpl(this._value, this._then);

  final UserConversation _value;
  // ignore: unused_field
  final $Res Function(UserConversation) _then;

  @override
  $Res call({
    Object content = freezed,
    Object idFrom = freezed,
    Object idTo = freezed,
    Object timestamp = freezed,
    Object type = freezed,
  }) {
    return _then(_value.copyWith(
      content: content == freezed ? _value.content : content as String,
      idFrom: idFrom == freezed ? _value.idFrom : idFrom as String,
      idTo: idTo == freezed ? _value.idTo : idTo as String,
      timestamp: timestamp == freezed ? _value.timestamp : timestamp as String,
      type: type == freezed ? _value.type : type as int,
    ));
  }
}

/// @nodoc
abstract class _$UserConversationCopyWith<$Res>
    implements $UserConversationCopyWith<$Res> {
  factory _$UserConversationCopyWith(
          _UserConversation value, $Res Function(_UserConversation) then) =
      __$UserConversationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String content, String idFrom, String idTo, String timestamp, int type});
}

/// @nodoc
class __$UserConversationCopyWithImpl<$Res>
    extends _$UserConversationCopyWithImpl<$Res>
    implements _$UserConversationCopyWith<$Res> {
  __$UserConversationCopyWithImpl(
      _UserConversation _value, $Res Function(_UserConversation) _then)
      : super(_value, (v) => _then(v as _UserConversation));

  @override
  _UserConversation get _value => super._value as _UserConversation;

  @override
  $Res call({
    Object content = freezed,
    Object idFrom = freezed,
    Object idTo = freezed,
    Object timestamp = freezed,
    Object type = freezed,
  }) {
    return _then(_UserConversation(
      content: content == freezed ? _value.content : content as String,
      idFrom: idFrom == freezed ? _value.idFrom : idFrom as String,
      idTo: idTo == freezed ? _value.idTo : idTo as String,
      timestamp: timestamp == freezed ? _value.timestamp : timestamp as String,
      type: type == freezed ? _value.type : type as int,
    ));
  }
}

/// @nodoc
class _$_UserConversation extends _UserConversation {
  const _$_UserConversation(
      {@required this.content,
      @required this.idFrom,
      @required this.idTo,
      @required this.timestamp,
      @required this.type})
      : assert(content != null),
        assert(idFrom != null),
        assert(idTo != null),
        assert(timestamp != null),
        assert(type != null),
        super._();

  @override
  final String content;
  @override
  final String idFrom;
  @override
  final String idTo;
  @override
  final String timestamp;
  @override
  final int type;

  @override
  String toString() {
    return 'UserConversation(content: $content, idFrom: $idFrom, idTo: $idTo, timestamp: $timestamp, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserConversation &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.idFrom, idFrom) ||
                const DeepCollectionEquality().equals(other.idFrom, idFrom)) &&
            (identical(other.idTo, idTo) ||
                const DeepCollectionEquality().equals(other.idTo, idTo)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(idFrom) ^
      const DeepCollectionEquality().hash(idTo) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(type);

  @JsonKey(ignore: true)
  @override
  _$UserConversationCopyWith<_UserConversation> get copyWith =>
      __$UserConversationCopyWithImpl<_UserConversation>(this, _$identity);
}

abstract class _UserConversation extends UserConversation {
  const _UserConversation._() : super._();
  const factory _UserConversation(
      {@required String content,
      @required String idFrom,
      @required String idTo,
      @required String timestamp,
      @required int type}) = _$_UserConversation;

  @override
  String get content;
  @override
  String get idFrom;
  @override
  String get idTo;
  @override
  String get timestamp;
  @override
  int get type;
  @override
  @JsonKey(ignore: true)
  _$UserConversationCopyWith<_UserConversation> get copyWith;
}
