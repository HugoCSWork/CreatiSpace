// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'peer_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$PeerProfileDataTearOff {
  const _$PeerProfileDataTearOff();

// ignore: unused_element
  _PeerProfileData call(
      {@required ProfileName username,
      @required ProfileDescription description,
      @required ProfileFollowing following,
      @required ProfileFollowers followers,
      @required ProfileImageURL profileImageURL,
      @required ProfileBackgroundImageURL backgroundImageURL,
      @required bool isFollowing}) {
    return _PeerProfileData(
      username: username,
      description: description,
      following: following,
      followers: followers,
      profileImageURL: profileImageURL,
      backgroundImageURL: backgroundImageURL,
      isFollowing: isFollowing,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PeerProfileData = _$PeerProfileDataTearOff();

/// @nodoc
mixin _$PeerProfileData {
  ProfileName get username;
  ProfileDescription get description;
  ProfileFollowing get following;
  ProfileFollowers get followers;
  ProfileImageURL get profileImageURL;
  ProfileBackgroundImageURL get backgroundImageURL;
  bool get isFollowing;

  $PeerProfileDataCopyWith<PeerProfileData> get copyWith;
}

/// @nodoc
abstract class $PeerProfileDataCopyWith<$Res> {
  factory $PeerProfileDataCopyWith(
          PeerProfileData value, $Res Function(PeerProfileData) then) =
      _$PeerProfileDataCopyWithImpl<$Res>;
  $Res call(
      {ProfileName username,
      ProfileDescription description,
      ProfileFollowing following,
      ProfileFollowers followers,
      ProfileImageURL profileImageURL,
      ProfileBackgroundImageURL backgroundImageURL,
      bool isFollowing});
}

/// @nodoc
class _$PeerProfileDataCopyWithImpl<$Res>
    implements $PeerProfileDataCopyWith<$Res> {
  _$PeerProfileDataCopyWithImpl(this._value, this._then);

  final PeerProfileData _value;
  // ignore: unused_field
  final $Res Function(PeerProfileData) _then;

  @override
  $Res call({
    Object username = freezed,
    Object description = freezed,
    Object following = freezed,
    Object followers = freezed,
    Object profileImageURL = freezed,
    Object backgroundImageURL = freezed,
    Object isFollowing = freezed,
  }) {
    return _then(_value.copyWith(
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
      isFollowing:
          isFollowing == freezed ? _value.isFollowing : isFollowing as bool,
    ));
  }
}

/// @nodoc
abstract class _$PeerProfileDataCopyWith<$Res>
    implements $PeerProfileDataCopyWith<$Res> {
  factory _$PeerProfileDataCopyWith(
          _PeerProfileData value, $Res Function(_PeerProfileData) then) =
      __$PeerProfileDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {ProfileName username,
      ProfileDescription description,
      ProfileFollowing following,
      ProfileFollowers followers,
      ProfileImageURL profileImageURL,
      ProfileBackgroundImageURL backgroundImageURL,
      bool isFollowing});
}

/// @nodoc
class __$PeerProfileDataCopyWithImpl<$Res>
    extends _$PeerProfileDataCopyWithImpl<$Res>
    implements _$PeerProfileDataCopyWith<$Res> {
  __$PeerProfileDataCopyWithImpl(
      _PeerProfileData _value, $Res Function(_PeerProfileData) _then)
      : super(_value, (v) => _then(v as _PeerProfileData));

  @override
  _PeerProfileData get _value => super._value as _PeerProfileData;

  @override
  $Res call({
    Object username = freezed,
    Object description = freezed,
    Object following = freezed,
    Object followers = freezed,
    Object profileImageURL = freezed,
    Object backgroundImageURL = freezed,
    Object isFollowing = freezed,
  }) {
    return _then(_PeerProfileData(
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
      isFollowing:
          isFollowing == freezed ? _value.isFollowing : isFollowing as bool,
    ));
  }
}

/// @nodoc
class _$_PeerProfileData extends _PeerProfileData {
  const _$_PeerProfileData(
      {@required this.username,
      @required this.description,
      @required this.following,
      @required this.followers,
      @required this.profileImageURL,
      @required this.backgroundImageURL,
      @required this.isFollowing})
      : assert(username != null),
        assert(description != null),
        assert(following != null),
        assert(followers != null),
        assert(profileImageURL != null),
        assert(backgroundImageURL != null),
        assert(isFollowing != null),
        super._();

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
  final bool isFollowing;

  @override
  String toString() {
    return 'PeerProfileData(username: $username, description: $description, following: $following, followers: $followers, profileImageURL: $profileImageURL, backgroundImageURL: $backgroundImageURL, isFollowing: $isFollowing)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PeerProfileData &&
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
                    .equals(other.backgroundImageURL, backgroundImageURL)) &&
            (identical(other.isFollowing, isFollowing) ||
                const DeepCollectionEquality()
                    .equals(other.isFollowing, isFollowing)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(following) ^
      const DeepCollectionEquality().hash(followers) ^
      const DeepCollectionEquality().hash(profileImageURL) ^
      const DeepCollectionEquality().hash(backgroundImageURL) ^
      const DeepCollectionEquality().hash(isFollowing);

  @override
  _$PeerProfileDataCopyWith<_PeerProfileData> get copyWith =>
      __$PeerProfileDataCopyWithImpl<_PeerProfileData>(this, _$identity);
}

abstract class _PeerProfileData extends PeerProfileData {
  const _PeerProfileData._() : super._();
  const factory _PeerProfileData(
      {@required ProfileName username,
      @required ProfileDescription description,
      @required ProfileFollowing following,
      @required ProfileFollowers followers,
      @required ProfileImageURL profileImageURL,
      @required ProfileBackgroundImageURL backgroundImageURL,
      @required bool isFollowing}) = _$_PeerProfileData;

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
  bool get isFollowing;
  @override
  _$PeerProfileDataCopyWith<_PeerProfileData> get copyWith;
}
