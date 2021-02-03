// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'following_followers_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
FollowingFollowerDto _$FollowingFollowerDtoFromJson(Map<String, dynamic> json) {
  return _FollowingFollowerDto.fromJson(json);
}

/// @nodoc
class _$FollowingFollowerDtoTearOff {
  const _$FollowingFollowerDtoTearOff();

// ignore: unused_element
  _FollowingFollowerDto call(
      {@JsonKey(ignore: true) String id,
      @required String username,
      @required String profileImageURL}) {
    return _FollowingFollowerDto(
      id: id,
      username: username,
      profileImageURL: profileImageURL,
    );
  }

// ignore: unused_element
  FollowingFollowerDto fromJson(Map<String, Object> json) {
    return FollowingFollowerDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $FollowingFollowerDto = _$FollowingFollowerDtoTearOff();

/// @nodoc
mixin _$FollowingFollowerDto {
  @JsonKey(ignore: true)
  String get id;
  String get username;
  String get profileImageURL;

  Map<String, dynamic> toJson();
  $FollowingFollowerDtoCopyWith<FollowingFollowerDto> get copyWith;
}

/// @nodoc
abstract class $FollowingFollowerDtoCopyWith<$Res> {
  factory $FollowingFollowerDtoCopyWith(FollowingFollowerDto value,
          $Res Function(FollowingFollowerDto) then) =
      _$FollowingFollowerDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String username,
      String profileImageURL});
}

/// @nodoc
class _$FollowingFollowerDtoCopyWithImpl<$Res>
    implements $FollowingFollowerDtoCopyWith<$Res> {
  _$FollowingFollowerDtoCopyWithImpl(this._value, this._then);

  final FollowingFollowerDto _value;
  // ignore: unused_field
  final $Res Function(FollowingFollowerDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object username = freezed,
    Object profileImageURL = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      username: username == freezed ? _value.username : username as String,
      profileImageURL: profileImageURL == freezed
          ? _value.profileImageURL
          : profileImageURL as String,
    ));
  }
}

/// @nodoc
abstract class _$FollowingFollowerDtoCopyWith<$Res>
    implements $FollowingFollowerDtoCopyWith<$Res> {
  factory _$FollowingFollowerDtoCopyWith(_FollowingFollowerDto value,
          $Res Function(_FollowingFollowerDto) then) =
      __$FollowingFollowerDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String username,
      String profileImageURL});
}

/// @nodoc
class __$FollowingFollowerDtoCopyWithImpl<$Res>
    extends _$FollowingFollowerDtoCopyWithImpl<$Res>
    implements _$FollowingFollowerDtoCopyWith<$Res> {
  __$FollowingFollowerDtoCopyWithImpl(
      _FollowingFollowerDto _value, $Res Function(_FollowingFollowerDto) _then)
      : super(_value, (v) => _then(v as _FollowingFollowerDto));

  @override
  _FollowingFollowerDto get _value => super._value as _FollowingFollowerDto;

  @override
  $Res call({
    Object id = freezed,
    Object username = freezed,
    Object profileImageURL = freezed,
  }) {
    return _then(_FollowingFollowerDto(
      id: id == freezed ? _value.id : id as String,
      username: username == freezed ? _value.username : username as String,
      profileImageURL: profileImageURL == freezed
          ? _value.profileImageURL
          : profileImageURL as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_FollowingFollowerDto extends _FollowingFollowerDto {
  const _$_FollowingFollowerDto(
      {@JsonKey(ignore: true) this.id,
      @required this.username,
      @required this.profileImageURL})
      : assert(username != null),
        assert(profileImageURL != null),
        super._();

  factory _$_FollowingFollowerDto.fromJson(Map<String, dynamic> json) =>
      _$_$_FollowingFollowerDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String username;
  @override
  final String profileImageURL;

  @override
  String toString() {
    return 'FollowingFollowerDto(id: $id, username: $username, profileImageURL: $profileImageURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FollowingFollowerDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.profileImageURL, profileImageURL) ||
                const DeepCollectionEquality()
                    .equals(other.profileImageURL, profileImageURL)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(profileImageURL);

  @override
  _$FollowingFollowerDtoCopyWith<_FollowingFollowerDto> get copyWith =>
      __$FollowingFollowerDtoCopyWithImpl<_FollowingFollowerDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FollowingFollowerDtoToJson(this);
  }
}

abstract class _FollowingFollowerDto extends FollowingFollowerDto {
  const _FollowingFollowerDto._() : super._();
  const factory _FollowingFollowerDto(
      {@JsonKey(ignore: true) String id,
      @required String username,
      @required String profileImageURL}) = _$_FollowingFollowerDto;

  factory _FollowingFollowerDto.fromJson(Map<String, dynamic> json) =
      _$_FollowingFollowerDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get username;
  @override
  String get profileImageURL;
  @override
  _$FollowingFollowerDtoCopyWith<_FollowingFollowerDto> get copyWith;
}
