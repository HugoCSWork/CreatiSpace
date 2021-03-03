// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'streaming_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
StreamingMessage _$StreamingMessageFromJson(Map<String, dynamic> json) {
  return _StreamingMessage.fromJson(json);
}

/// @nodoc
class _$StreamingMessageTearOff {
  const _$StreamingMessageTearOff();

// ignore: unused_element
  _StreamingMessage call(
      {@required String username,
      @required String image,
      @required String message}) {
    return _StreamingMessage(
      username: username,
      image: image,
      message: message,
    );
  }

// ignore: unused_element
  StreamingMessage fromJson(Map<String, Object> json) {
    return StreamingMessage.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $StreamingMessage = _$StreamingMessageTearOff();

/// @nodoc
mixin _$StreamingMessage {
  String get username;
  String get image;
  String get message;

  Map<String, dynamic> toJson();
  $StreamingMessageCopyWith<StreamingMessage> get copyWith;
}

/// @nodoc
abstract class $StreamingMessageCopyWith<$Res> {
  factory $StreamingMessageCopyWith(
          StreamingMessage value, $Res Function(StreamingMessage) then) =
      _$StreamingMessageCopyWithImpl<$Res>;
  $Res call({String username, String image, String message});
}

/// @nodoc
class _$StreamingMessageCopyWithImpl<$Res>
    implements $StreamingMessageCopyWith<$Res> {
  _$StreamingMessageCopyWithImpl(this._value, this._then);

  final StreamingMessage _value;
  // ignore: unused_field
  final $Res Function(StreamingMessage) _then;

  @override
  $Res call({
    Object username = freezed,
    Object image = freezed,
    Object message = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed ? _value.username : username as String,
      image: image == freezed ? _value.image : image as String,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

/// @nodoc
abstract class _$StreamingMessageCopyWith<$Res>
    implements $StreamingMessageCopyWith<$Res> {
  factory _$StreamingMessageCopyWith(
          _StreamingMessage value, $Res Function(_StreamingMessage) then) =
      __$StreamingMessageCopyWithImpl<$Res>;
  @override
  $Res call({String username, String image, String message});
}

/// @nodoc
class __$StreamingMessageCopyWithImpl<$Res>
    extends _$StreamingMessageCopyWithImpl<$Res>
    implements _$StreamingMessageCopyWith<$Res> {
  __$StreamingMessageCopyWithImpl(
      _StreamingMessage _value, $Res Function(_StreamingMessage) _then)
      : super(_value, (v) => _then(v as _StreamingMessage));

  @override
  _StreamingMessage get _value => super._value as _StreamingMessage;

  @override
  $Res call({
    Object username = freezed,
    Object image = freezed,
    Object message = freezed,
  }) {
    return _then(_StreamingMessage(
      username: username == freezed ? _value.username : username as String,
      image: image == freezed ? _value.image : image as String,
      message: message == freezed ? _value.message : message as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_StreamingMessage extends _StreamingMessage {
  const _$_StreamingMessage(
      {@required this.username, @required this.image, @required this.message})
      : assert(username != null),
        assert(image != null),
        assert(message != null),
        super._();

  factory _$_StreamingMessage.fromJson(Map<String, dynamic> json) =>
      _$_$_StreamingMessageFromJson(json);

  @override
  final String username;
  @override
  final String image;
  @override
  final String message;

  @override
  String toString() {
    return 'StreamingMessage(username: $username, image: $image, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StreamingMessage &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(message);

  @override
  _$StreamingMessageCopyWith<_StreamingMessage> get copyWith =>
      __$StreamingMessageCopyWithImpl<_StreamingMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StreamingMessageToJson(this);
  }
}

abstract class _StreamingMessage extends StreamingMessage {
  const _StreamingMessage._() : super._();
  const factory _StreamingMessage(
      {@required String username,
      @required String image,
      @required String message}) = _$_StreamingMessage;

  factory _StreamingMessage.fromJson(Map<String, dynamic> json) =
      _$_StreamingMessage.fromJson;

  @override
  String get username;
  @override
  String get image;
  @override
  String get message;
  @override
  _$StreamingMessageCopyWith<_StreamingMessage> get copyWith;
}
