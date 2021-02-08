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
      {@required String id,
      @required ProfileName username,
      @required ProfileDescription description,
      @required ProfileFollowing following,
      @required ProfileFollowers followers,
      @required ProfileImageURL profileImageURL,
      @required ProfileBackgroundImageURL backgroundImageURL}) {
    return _UserProfileData(
      id: id,
      username: username,
      description: description,
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
  String get id;
  ProfileName get username;
  ProfileDescription get description;
  ProfileFollowing get following;
  ProfileFollowers get followers;
  ProfileImageURL get profileImageURL;
  ProfileBackgroundImageURL get backgroundImageURL;

  $UserProfileDataCopyWith<UserProfileData> get copyWith;
}

/// @nodoc
abstract class $UserProfileDataCopyWith<$Res> {
  factory $UserProfileDataCopyWith(
          UserProfileData value, $Res Function(UserProfileData) then) =
      _$UserProfileDataCopyWithImpl<$Res>;
  $Res call(
      {String id,
      ProfileName username,
      ProfileDescription description,
      ProfileFollowing following,
      ProfileFollowers followers,
      ProfileImageURL profileImageURL,
      ProfileBackgroundImageURL backgroundImageURL});
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
    Object id = freezed,
    Object username = freezed,
    Object description = freezed,
    Object following = freezed,
    Object followers = freezed,
    Object profileImageURL = freezed,
    Object backgroundImageURL = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      username: username == freezed ? _value.username : username as ProfileName,
      description: description == freezed
          ? _value.description
          : description as ProfileDescription,
      following: following == freezed
          ? _value.following
          : following as ProfileFollowing,
      followers: followers == freezed
          ? _value.followers
          : followers as ProfileFollowers,
      profileImageURL: profileImageURL == freezed
          ? _value.profileImageURL
          : profileImageURL as ProfileImageURL,
      backgroundImageURL: backgroundImageURL == freezed
          ? _value.backgroundImageURL
          : backgroundImageURL as ProfileBackgroundImageURL,
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
      {String id,
      ProfileName username,
      ProfileDescription description,
      ProfileFollowing following,
      ProfileFollowers followers,
      ProfileImageURL profileImageURL,
      ProfileBackgroundImageURL backgroundImageURL});
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
    Object id = freezed,
    Object username = freezed,
    Object description = freezed,
    Object following = freezed,
    Object followers = freezed,
    Object profileImageURL = freezed,
    Object backgroundImageURL = freezed,
  }) {
    return _then(_UserProfileData(
      id: id == freezed ? _value.id : id as String,
      username: username == freezed ? _value.username : username as ProfileName,
      description: description == freezed
          ? _value.description
          : description as ProfileDescription,
      following: following == freezed
          ? _value.following
          : following as ProfileFollowing,
      followers: followers == freezed
          ? _value.followers
          : followers as ProfileFollowers,
      profileImageURL: profileImageURL == freezed
          ? _value.profileImageURL
          : profileImageURL as ProfileImageURL,
      backgroundImageURL: backgroundImageURL == freezed
          ? _value.backgroundImageURL
          : backgroundImageURL as ProfileBackgroundImageURL,
    ));
  }
}

/// @nodoc
class _$_UserProfileData extends _UserProfileData {
  const _$_UserProfileData(
      {@required this.id,
      @required this.username,
      @required this.description,
      @required this.following,
      @required this.followers,
      @required this.profileImageURL,
      @required this.backgroundImageURL})
      : assert(id != null),
        assert(username != null),
        assert(description != null),
        assert(following != null),
        assert(followers != null),
        assert(profileImageURL != null),
        assert(backgroundImageURL != null),
        super._();

  @override
  final String id;
  @override
  final ProfileName username;
  @override
  final ProfileDescription description;
  @override
  final ProfileFollowing following;
  @override
  final ProfileFollowers followers;
  @override
  final ProfileImageURL profileImageURL;
  @override
  final ProfileBackgroundImageURL backgroundImageURL;

  @override
  String toString() {
    return 'UserProfileData(id: $id, username: $username, description: $description, following: $following, followers: $followers, profileImageURL: $profileImageURL, backgroundImageURL: $backgroundImageURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserProfileData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
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
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(following) ^
      const DeepCollectionEquality().hash(followers) ^
      const DeepCollectionEquality().hash(profileImageURL) ^
      const DeepCollectionEquality().hash(backgroundImageURL);

  @override
  _$UserProfileDataCopyWith<_UserProfileData> get copyWith =>
      __$UserProfileDataCopyWithImpl<_UserProfileData>(this, _$identity);
}

abstract class _UserProfileData extends UserProfileData {
  const _UserProfileData._() : super._();
  const factory _UserProfileData(
          {@required String id,
          @required ProfileName username,
          @required ProfileDescription description,
          @required ProfileFollowing following,
          @required ProfileFollowers followers,
          @required ProfileImageURL profileImageURL,
          @required ProfileBackgroundImageURL backgroundImageURL}) =
      _$_UserProfileData;

  @override
  String get id;
  @override
  ProfileName get username;
  @override
  ProfileDescription get description;
  @override
  ProfileFollowing get following;
  @override
  ProfileFollowers get followers;
  @override
  ProfileImageURL get profileImageURL;
  @override
  ProfileBackgroundImageURL get backgroundImageURL;
  @override
  _$UserProfileDataCopyWith<_UserProfileData> get copyWith;
}
