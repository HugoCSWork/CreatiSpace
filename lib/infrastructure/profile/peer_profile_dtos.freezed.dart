// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'peer_profile_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
PeerProfileDto _$PeerProfileDtoFromJson(Map<String, dynamic> json) {
  return _PeerProfileDto.fromJson(json);
}

/// @nodoc
class _$PeerProfileDtoTearOff {
  const _$PeerProfileDtoTearOff();

// ignore: unused_element
  _PeerProfileDto call(
      {@required int following,
      @required int followers,
      @required String profileImageURL,
      @required String backgroundImageURL,
      @required String username,
      @required String description,
      @required bool isFollowing}) {
    return _PeerProfileDto(
      following: following,
      followers: followers,
      profileImageURL: profileImageURL,
      backgroundImageURL: backgroundImageURL,
      username: username,
      description: description,
      isFollowing: isFollowing,
    );
  }

// ignore: unused_element
  PeerProfileDto fromJson(Map<String, Object> json) {
    return PeerProfileDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PeerProfileDto = _$PeerProfileDtoTearOff();

/// @nodoc
mixin _$PeerProfileDto {
  int get following;
  int get followers;
  String get profileImageURL;
  String get backgroundImageURL;
  String get username;
  String get description;
  bool get isFollowing;

  Map<String, dynamic> toJson();
  $PeerProfileDtoCopyWith<PeerProfileDto> get copyWith;
}

/// @nodoc
abstract class $PeerProfileDtoCopyWith<$Res> {
  factory $PeerProfileDtoCopyWith(
          PeerProfileDto value, $Res Function(PeerProfileDto) then) =
      _$PeerProfileDtoCopyWithImpl<$Res>;
  $Res call(
      {int following,
      int followers,
      String profileImageURL,
      String backgroundImageURL,
      String username,
      String description,
      bool isFollowing});
}

/// @nodoc
class _$PeerProfileDtoCopyWithImpl<$Res>
    implements $PeerProfileDtoCopyWith<$Res> {
  _$PeerProfileDtoCopyWithImpl(this._value, this._then);

  final PeerProfileDto _value;
  // ignore: unused_field
  final $Res Function(PeerProfileDto) _then;

  @override
  $Res call({
    Object following = freezed,
    Object followers = freezed,
    Object profileImageURL = freezed,
    Object backgroundImageURL = freezed,
    Object username = freezed,
    Object description = freezed,
    Object isFollowing = freezed,
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
      isFollowing:
          isFollowing == freezed ? _value.isFollowing : isFollowing as bool,
    ));
  }
}

/// @nodoc
abstract class _$PeerProfileDtoCopyWith<$Res>
    implements $PeerProfileDtoCopyWith<$Res> {
  factory _$PeerProfileDtoCopyWith(
          _PeerProfileDto value, $Res Function(_PeerProfileDto) then) =
      __$PeerProfileDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int following,
      int followers,
      String profileImageURL,
      String backgroundImageURL,
      String username,
      String description,
      bool isFollowing});
}

/// @nodoc
class __$PeerProfileDtoCopyWithImpl<$Res>
    extends _$PeerProfileDtoCopyWithImpl<$Res>
    implements _$PeerProfileDtoCopyWith<$Res> {
  __$PeerProfileDtoCopyWithImpl(
      _PeerProfileDto _value, $Res Function(_PeerProfileDto) _then)
      : super(_value, (v) => _then(v as _PeerProfileDto));

  @override
  _PeerProfileDto get _value => super._value as _PeerProfileDto;

  @override
  $Res call({
    Object following = freezed,
    Object followers = freezed,
    Object profileImageURL = freezed,
    Object backgroundImageURL = freezed,
    Object username = freezed,
    Object description = freezed,
    Object isFollowing = freezed,
  }) {
    return _then(_PeerProfileDto(
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
      isFollowing:
          isFollowing == freezed ? _value.isFollowing : isFollowing as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PeerProfileDto extends _PeerProfileDto {
  const _$_PeerProfileDto(
      {@required this.following,
      @required this.followers,
      @required this.profileImageURL,
      @required this.backgroundImageURL,
      @required this.username,
      @required this.description,
      @required this.isFollowing})
      : assert(following != null),
        assert(followers != null),
        assert(profileImageURL != null),
        assert(backgroundImageURL != null),
        assert(username != null),
        assert(description != null),
        assert(isFollowing != null),
        super._();

  factory _$_PeerProfileDto.fromJson(Map<String, dynamic> json) =>
      _$_$_PeerProfileDtoFromJson(json);

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
  final bool isFollowing;

  @override
  String toString() {
    return 'PeerProfileDto(following: $following, followers: $followers, profileImageURL: $profileImageURL, backgroundImageURL: $backgroundImageURL, username: $username, description: $description, isFollowing: $isFollowing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PeerProfileDto &&
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
                    .equals(other.description, description)) &&
            (identical(other.isFollowing, isFollowing) ||
                const DeepCollectionEquality()
                    .equals(other.isFollowing, isFollowing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(following) ^
      const DeepCollectionEquality().hash(followers) ^
      const DeepCollectionEquality().hash(profileImageURL) ^
      const DeepCollectionEquality().hash(backgroundImageURL) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(isFollowing);

  @override
  _$PeerProfileDtoCopyWith<_PeerProfileDto> get copyWith =>
      __$PeerProfileDtoCopyWithImpl<_PeerProfileDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PeerProfileDtoToJson(this);
  }
}

abstract class _PeerProfileDto extends PeerProfileDto {
  const _PeerProfileDto._() : super._();
  const factory _PeerProfileDto(
      {@required int following,
      @required int followers,
      @required String profileImageURL,
      @required String backgroundImageURL,
      @required String username,
      @required String description,
      @required bool isFollowing}) = _$_PeerProfileDto;

  factory _PeerProfileDto.fromJson(Map<String, dynamic> json) =
      _$_PeerProfileDto.fromJson;

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
  bool get isFollowing;
  @override
  _$PeerProfileDtoCopyWith<_PeerProfileDto> get copyWith;
}
