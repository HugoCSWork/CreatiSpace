// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_conversation_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserConversationDto _$UserConversationDtoFromJson(Map<String, dynamic> json) {
  return _UserConversationDto.fromJson(json);
}

/// @nodoc
class _$UserConversationDtoTearOff {
  const _$UserConversationDtoTearOff();

// ignore: unused_element
  _UserConversationDto call(
      {@required String content,
      @required String idFrom,
      @required String idTo,
      @required String timestamp,
      @required int type}) {
    return _UserConversationDto(
      content: content,
      idFrom: idFrom,
      idTo: idTo,
      timestamp: timestamp,
      type: type,
    );
  }

// ignore: unused_element
  UserConversationDto fromJson(Map<String, Object> json) {
    return UserConversationDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserConversationDto = _$UserConversationDtoTearOff();

/// @nodoc
mixin _$UserConversationDto {
  String get content;
  String get idFrom;
  String get idTo;
  String get timestamp;
  int get type;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $UserConversationDtoCopyWith<UserConversationDto> get copyWith;
}

/// @nodoc
abstract class $UserConversationDtoCopyWith<$Res> {
  factory $UserConversationDtoCopyWith(
          UserConversationDto value, $Res Function(UserConversationDto) then) =
      _$UserConversationDtoCopyWithImpl<$Res>;
  $Res call(
      {String content, String idFrom, String idTo, String timestamp, int type});
}

/// @nodoc
class _$UserConversationDtoCopyWithImpl<$Res>
    implements $UserConversationDtoCopyWith<$Res> {
  _$UserConversationDtoCopyWithImpl(this._value, this._then);

  final UserConversationDto _value;
  // ignore: unused_field
  final $Res Function(UserConversationDto) _then;

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
abstract class _$UserConversationDtoCopyWith<$Res>
    implements $UserConversationDtoCopyWith<$Res> {
  factory _$UserConversationDtoCopyWith(_UserConversationDto value,
          $Res Function(_UserConversationDto) then) =
      __$UserConversationDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String content, String idFrom, String idTo, String timestamp, int type});
}

/// @nodoc
class __$UserConversationDtoCopyWithImpl<$Res>
    extends _$UserConversationDtoCopyWithImpl<$Res>
    implements _$UserConversationDtoCopyWith<$Res> {
  __$UserConversationDtoCopyWithImpl(
      _UserConversationDto _value, $Res Function(_UserConversationDto) _then)
      : super(_value, (v) => _then(v as _UserConversationDto));

  @override
  _UserConversationDto get _value => super._value as _UserConversationDto;

  @override
  $Res call({
    Object content = freezed,
    Object idFrom = freezed,
    Object idTo = freezed,
    Object timestamp = freezed,
    Object type = freezed,
  }) {
    return _then(_UserConversationDto(
      content: content == freezed ? _value.content : content as String,
      idFrom: idFrom == freezed ? _value.idFrom : idFrom as String,
      idTo: idTo == freezed ? _value.idTo : idTo as String,
      timestamp: timestamp == freezed ? _value.timestamp : timestamp as String,
      type: type == freezed ? _value.type : type as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserConversationDto extends _UserConversationDto {
  const _$_UserConversationDto(
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

  factory _$_UserConversationDto.fromJson(Map<String, dynamic> json) =>
      _$_$_UserConversationDtoFromJson(json);

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
    return 'UserConversationDto(content: $content, idFrom: $idFrom, idTo: $idTo, timestamp: $timestamp, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserConversationDto &&
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
  _$UserConversationDtoCopyWith<_UserConversationDto> get copyWith =>
      __$UserConversationDtoCopyWithImpl<_UserConversationDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserConversationDtoToJson(this);
  }
}

abstract class _UserConversationDto extends UserConversationDto {
  const _UserConversationDto._() : super._();
  const factory _UserConversationDto(
      {@required String content,
      @required String idFrom,
      @required String idTo,
      @required String timestamp,
      @required int type}) = _$_UserConversationDto;

  factory _UserConversationDto.fromJson(Map<String, dynamic> json) =
      _$_UserConversationDto.fromJson;

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
  _$UserConversationDtoCopyWith<_UserConversationDto> get copyWith;
}
