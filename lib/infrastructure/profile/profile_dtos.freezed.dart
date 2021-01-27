// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'profile_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserProfileDto _$UserProfileDtoFromJson(Map<String, dynamic> json) {
  return _UserProfileDto.fromJson(json);
}

/// @nodoc
class _$UserProfileDtoTearOff {
  const _$UserProfileDtoTearOff();

// ignore: unused_element
  _UserProfileDto call(
      {@required int following,
      @required int followers,
      @required String profileImageURL,
      @required String backgroundImageURL,
      @required String username,
      @required String description}) {
    return _UserProfileDto(
      following: following,
      followers: followers,
      profileImageURL: profileImageURL,
      backgroundImageURL: backgroundImageURL,
      username: username,
      description: description,
    );
  }

// ignore: unused_element
  UserProfileDto fromJson(Map<String, Object> json) {
    return UserProfileDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $UserProfileDto = _$UserProfileDtoTearOff();

/// @nodoc
mixin _$UserProfileDto {
  int get following;
  int get followers;
  String get profileImageURL;
  String get backgroundImageURL;
  String get username;
  String get description;

  Map<String, dynamic> toJson();
  $UserProfileDtoCopyWith<UserProfileDto> get copyWith;
}

/// @nodoc
abstract class $UserProfileDtoCopyWith<$Res> {
  factory $UserProfileDtoCopyWith(
          UserProfileDto value, $Res Function(UserProfileDto) then) =
      _$UserProfileDtoCopyWithImpl<$Res>;
  $Res call(
      {int following,
      int followers,
      String profileImageURL,
      String backgroundImageURL,
      String username,
      String description});
}

/// @nodoc
class _$UserProfileDtoCopyWithImpl<$Res>
    implements $UserProfileDtoCopyWith<$Res> {
  _$UserProfileDtoCopyWithImpl(this._value, this._then);

  final UserProfileDto _value;
  // ignore: unused_field
  final $Res Function(UserProfileDto) _then;

  @override
  $Res call({
    Object following = freezed,
    Object followers = freezed,
    Object profileImageURL = freezed,
    Object backgroundImageURL = freezed,
    Object username = freezed,
    Object description = freezed,
  }) {
    return _then(_value.copyWith(
      following: following == freezed ? _value.following : following as int,
      followers: followers == freezed ? _value.followers : followers as int,
      profileImageURL: profileImageURL == freezed
          ? _value.profileImageURL
          : profileImageURL as String,
      backgroundImageURL: backgroundImageURL == freezed
          ? _value.backgroundImageURL
          : backgroundImageURL as String,
      username: username == freezed ? _value.username : username as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
abstract class _$UserProfileDtoCopyWith<$Res>
    implements $UserProfileDtoCopyWith<$Res> {
  factory _$UserProfileDtoCopyWith(
          _UserProfileDto value, $Res Function(_UserProfileDto) then) =
      __$UserProfileDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int following,
      int followers,
      String profileImageURL,
      String backgroundImageURL,
      String username,
      String description});
}

/// @nodoc
class __$UserProfileDtoCopyWithImpl<$Res>
    extends _$UserProfileDtoCopyWithImpl<$Res>
    implements _$UserProfileDtoCopyWith<$Res> {
  __$UserProfileDtoCopyWithImpl(
      _UserProfileDto _value, $Res Function(_UserProfileDto) _then)
      : super(_value, (v) => _then(v as _UserProfileDto));

  @override
  _UserProfileDto get _value => super._value as _UserProfileDto;

  @override
  $Res call({
    Object following = freezed,
    Object followers = freezed,
    Object profileImageURL = freezed,
    Object backgroundImageURL = freezed,
    Object username = freezed,
    Object description = freezed,
  }) {
    return _then(_UserProfileDto(
      following: following == freezed ? _value.following : following as int,
      followers: followers == freezed ? _value.followers : followers as int,
      profileImageURL: profileImageURL == freezed
          ? _value.profileImageURL
          : profileImageURL as String,
      backgroundImageURL: backgroundImageURL == freezed
          ? _value.backgroundImageURL
          : backgroundImageURL as String,
      username: username == freezed ? _value.username : username as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserProfileDto extends _UserProfileDto {
  const _$_UserProfileDto(
      {@required this.following,
      @required this.followers,
      @required this.profileImageURL,
      @required this.backgroundImageURL,
      @required this.username,
      @required this.description})
      : assert(following != null),
        assert(followers != null),
        assert(profileImageURL != null),
        assert(backgroundImageURL != null),
        assert(username != null),
        assert(description != null),
        super._();

  factory _$_UserProfileDto.fromJson(Map<String, dynamic> json) =>
      _$_$_UserProfileDtoFromJson(json);

  @override
  final int following;
  @override
  final int followers;
  @override
  final String profileImageURL;
  @override
  final String backgroundImageURL;
  @override
  final String username;
  @override
  final String description;

  @override
  String toString() {
    return 'UserProfileDto(following: $following, followers: $followers, profileImageURL: $profileImageURL, backgroundImageURL: $backgroundImageURL, username: $username, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserProfileDto &&
            (identical(other.following, following) ||
                const DeepCollectionEquality()
                    .equals(other.following, following)) &&
            (identical(other.followers, followers) ||
                const DeepCollectionEquality()
                    .equals(other.followers, followers)) &&
            (identical(other.profileImageURL, profileImageURL) ||
                const DeepCollectionEquality()
                    .equals(other.profileImageURL, profileImageURL)) &&
            (identical(other.backgroundImageURL, backgroundImageURL) ||
                const DeepCollectionEquality()
                    .equals(other.backgroundImageURL, backgroundImageURL)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(following) ^
      const DeepCollectionEquality().hash(followers) ^
      const DeepCollectionEquality().hash(profileImageURL) ^
      const DeepCollectionEquality().hash(backgroundImageURL) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(description);

  @override
  _$UserProfileDtoCopyWith<_UserProfileDto> get copyWith =>
      __$UserProfileDtoCopyWithImpl<_UserProfileDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserProfileDtoToJson(this);
  }
}

abstract class _UserProfileDto extends UserProfileDto {
  const _UserProfileDto._() : super._();
  const factory _UserProfileDto(
      {@required int following,
      @required int followers,
      @required String profileImageURL,
      @required String backgroundImageURL,
      @required String username,
      @required String description}) = _$_UserProfileDto;

  factory _UserProfileDto.fromJson(Map<String, dynamic> json) =
      _$_UserProfileDto.fromJson;

  @override
  int get following;
  @override
  int get followers;
  @override
  String get profileImageURL;
  @override
  String get backgroundImageURL;
  @override
  String get username;
  @override
  String get description;
  @override
  _$UserProfileDtoCopyWith<_UserProfileDto> get copyWith;
}
