// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$UserProfileDataTearOff {
  const _$UserProfileDataTearOff();

// ignore: unused_element
  _UserProfileData call(
      {@required String username,
      @required int following,
      @required int followers,
      @required String profileImageURL,
      @required String backgroundImageURL}) {
    return _UserProfileData(
      username: username,
      following: following,
      followers: followers,
      profileImageURL: profileImageURL,
      backgroundImageURL: backgroundImageURL,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $UserProfileData = _$UserProfileDataTearOff();

/// @nodoc
mixin _$UserProfileData {
  String get username;
  int get following;
  int get followers;
  String get profileImageURL;
  String get backgroundImageURL;

  $UserProfileDataCopyWith<UserProfileData> get copyWith;
}

/// @nodoc
abstract class $UserProfileDataCopyWith<$Res> {
  factory $UserProfileDataCopyWith(
          UserProfileData value, $Res Function(UserProfileData) then) =
      _$UserProfileDataCopyWithImpl<$Res>;
  $Res call(
      {String username,
      int following,
      int followers,
      String profileImageURL,
      String backgroundImageURL});
}

/// @nodoc
class _$UserProfileDataCopyWithImpl<$Res>
    implements $UserProfileDataCopyWith<$Res> {
  _$UserProfileDataCopyWithImpl(this._value, this._then);

  final UserProfileData _value;
  // ignore: unused_field
  final $Res Function(UserProfileData) _then;

  @override
  $Res call({
    Object username = freezed,
    Object following = freezed,
    Object followers = freezed,
    Object profileImageURL = freezed,
    Object backgroundImageURL = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed ? _value.username : username as String,
      following: following == freezed ? _value.following : following as int,
      followers: followers == freezed ? _value.followers : followers as int,
      profileImageURL: profileImageURL == freezed
          ? _value.profileImageURL
          : profileImageURL as String,
      backgroundImageURL: backgroundImageURL == freezed
          ? _value.backgroundImageURL
          : backgroundImageURL as String,
    ));
  }
}

/// @nodoc
abstract class _$UserProfileDataCopyWith<$Res>
    implements $UserProfileDataCopyWith<$Res> {
  factory _$UserProfileDataCopyWith(
          _UserProfileData value, $Res Function(_UserProfileData) then) =
      __$UserProfileDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String username,
      int following,
      int followers,
      String profileImageURL,
      String backgroundImageURL});
}

/// @nodoc
class __$UserProfileDataCopyWithImpl<$Res>
    extends _$UserProfileDataCopyWithImpl<$Res>
    implements _$UserProfileDataCopyWith<$Res> {
  __$UserProfileDataCopyWithImpl(
      _UserProfileData _value, $Res Function(_UserProfileData) _then)
      : super(_value, (v) => _then(v as _UserProfileData));

  @override
  _UserProfileData get _value => super._value as _UserProfileData;

  @override
  $Res call({
    Object username = freezed,
    Object following = freezed,
    Object followers = freezed,
    Object profileImageURL = freezed,
    Object backgroundImageURL = freezed,
  }) {
    return _then(_UserProfileData(
      username: username == freezed ? _value.username : username as String,
      following: following == freezed ? _value.following : following as int,
      followers: followers == freezed ? _value.followers : followers as int,
      profileImageURL: profileImageURL == freezed
          ? _value.profileImageURL
          : profileImageURL as String,
      backgroundImageURL: backgroundImageURL == freezed
          ? _value.backgroundImageURL
          : backgroundImageURL as String,
    ));
  }
}

/// @nodoc
class _$_UserProfileData implements _UserProfileData {
  const _$_UserProfileData(
      {@required this.username,
      @required this.following,
      @required this.followers,
      @required this.profileImageURL,
      @required this.backgroundImageURL})
      : assert(username != null),
        assert(following != null),
        assert(followers != null),
        assert(profileImageURL != null),
        assert(backgroundImageURL != null);

  @override
  final String username;
  @override
  final int following;
  @override
  final int followers;
  @override
  final String profileImageURL;
  @override
  final String backgroundImageURL;

  @override
  String toString() {
    return 'UserProfileData(username: $username, following: $following, followers: $followers, profileImageURL: $profileImageURL, backgroundImageURL: $backgroundImageURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserProfileData &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
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
                    .equals(other.backgroundImageURL, backgroundImageURL)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(following) ^
      const DeepCollectionEquality().hash(followers) ^
      const DeepCollectionEquality().hash(profileImageURL) ^
      const DeepCollectionEquality().hash(backgroundImageURL);

  @override
  _$UserProfileDataCopyWith<_UserProfileData> get copyWith =>
      __$UserProfileDataCopyWithImpl<_UserProfileData>(this, _$identity);
}

abstract class _UserProfileData implements UserProfileData {
  const factory _UserProfileData(
      {@required String username,
      @required int following,
      @required int followers,
      @required String profileImageURL,
      @required String backgroundImageURL}) = _$_UserProfileData;

  @override
  String get username;
  @override
  int get following;
  @override
  int get followers;
  @override
  String get profileImageURL;
  @override
  String get backgroundImageURL;
  @override
  _$UserProfileDataCopyWith<_UserProfileData> get copyWith;
}
