// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'following_follower.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FollowingFollowersTearOff {
  const _$FollowingFollowersTearOff();

// ignore: unused_element
  _FollowingFollowers call(
      {@required String id,
      @required String username,
      @required String profileImageURL}) {
    return _FollowingFollowers(
      id: id,
      username: username,
      profileImageURL: profileImageURL,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FollowingFollowers = _$FollowingFollowersTearOff();

/// @nodoc
mixin _$FollowingFollowers {
  String get id;
  String get username;
  String get profileImageURL;

  @JsonKey(ignore: true)
  $FollowingFollowersCopyWith<FollowingFollowers> get copyWith;
}

/// @nodoc
abstract class $FollowingFollowersCopyWith<$Res> {
  factory $FollowingFollowersCopyWith(
          FollowingFollowers value, $Res Function(FollowingFollowers) then) =
      _$FollowingFollowersCopyWithImpl<$Res>;
  $Res call({String id, String username, String profileImageURL});
}

/// @nodoc
class _$FollowingFollowersCopyWithImpl<$Res>
    implements $FollowingFollowersCopyWith<$Res> {
  _$FollowingFollowersCopyWithImpl(this._value, this._then);

  final FollowingFollowers _value;
  // ignore: unused_field
  final $Res Function(FollowingFollowers) _then;

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
abstract class _$FollowingFollowersCopyWith<$Res>
    implements $FollowingFollowersCopyWith<$Res> {
  factory _$FollowingFollowersCopyWith(
          _FollowingFollowers value, $Res Function(_FollowingFollowers) then) =
      __$FollowingFollowersCopyWithImpl<$Res>;
  @override
  $Res call({String id, String username, String profileImageURL});
}

/// @nodoc
class __$FollowingFollowersCopyWithImpl<$Res>
    extends _$FollowingFollowersCopyWithImpl<$Res>
    implements _$FollowingFollowersCopyWith<$Res> {
  __$FollowingFollowersCopyWithImpl(
      _FollowingFollowers _value, $Res Function(_FollowingFollowers) _then)
      : super(_value, (v) => _then(v as _FollowingFollowers));

  @override
  _FollowingFollowers get _value => super._value as _FollowingFollowers;

  @override
  $Res call({
    Object id = freezed,
    Object username = freezed,
    Object profileImageURL = freezed,
  }) {
    return _then(_FollowingFollowers(
      id: id == freezed ? _value.id : id as String,
      username: username == freezed ? _value.username : username as String,
      profileImageURL: profileImageURL == freezed
          ? _value.profileImageURL
          : profileImageURL as String,
    ));
  }
}

/// @nodoc
class _$_FollowingFollowers extends _FollowingFollowers {
  const _$_FollowingFollowers(
      {@required this.id,
      @required this.username,
      @required this.profileImageURL})
      : assert(id != null),
        assert(username != null),
        assert(profileImageURL != null),
        super._();

  @override
  final String id;
  @override
  final String username;
  @override
  final String profileImageURL;

  @override
  String toString() {
    return 'FollowingFollowers(id: $id, username: $username, profileImageURL: $profileImageURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FollowingFollowers &&
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

  @JsonKey(ignore: true)
  @override
  _$FollowingFollowersCopyWith<_FollowingFollowers> get copyWith =>
      __$FollowingFollowersCopyWithImpl<_FollowingFollowers>(this, _$identity);
}

abstract class _FollowingFollowers extends FollowingFollowers {
  const _FollowingFollowers._() : super._();
  const factory _FollowingFollowers(
      {@required String id,
      @required String username,
      @required String profileImageURL}) = _$_FollowingFollowers;

  @override
  String get id;
  @override
  String get username;
  @override
  String get profileImageURL;
  @override
  @JsonKey(ignore: true)
  _$FollowingFollowersCopyWith<_FollowingFollowers> get copyWith;
}

/// @nodoc
class _$FollowingFollowersGroupedTearOff {
  const _$FollowingFollowersGroupedTearOff();

// ignore: unused_element
  _FollowingFollowersGrouped call(
      {@required
          Stream<
                  Either<FollowingFollowerErrorFailure,
                      KtList<FollowingFollowers>>>
              followers,
      @required
          Stream<
                  Either<FollowingFollowerErrorFailure,
                      KtList<FollowingFollowers>>>
              following}) {
    return _FollowingFollowersGrouped(
      followers: followers,
      following: following,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FollowingFollowersGrouped = _$FollowingFollowersGroupedTearOff();

/// @nodoc
mixin _$FollowingFollowersGrouped {
  Stream<Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>>
      get followers;
  Stream<Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>>
      get following;

  @JsonKey(ignore: true)
  $FollowingFollowersGroupedCopyWith<FollowingFollowersGrouped> get copyWith;
}

/// @nodoc
abstract class $FollowingFollowersGroupedCopyWith<$Res> {
  factory $FollowingFollowersGroupedCopyWith(FollowingFollowersGrouped value,
          $Res Function(FollowingFollowersGrouped) then) =
      _$FollowingFollowersGroupedCopyWithImpl<$Res>;
  $Res call(
      {Stream<Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>>
          followers,
      Stream<Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>>
          following});
}

/// @nodoc
class _$FollowingFollowersGroupedCopyWithImpl<$Res>
    implements $FollowingFollowersGroupedCopyWith<$Res> {
  _$FollowingFollowersGroupedCopyWithImpl(this._value, this._then);

  final FollowingFollowersGrouped _value;
  // ignore: unused_field
  final $Res Function(FollowingFollowersGrouped) _then;

  @override
  $Res call({
    Object followers = freezed,
    Object following = freezed,
  }) {
    return _then(_value.copyWith(
      followers: followers == freezed
          ? _value.followers
          : followers as Stream<
              Either<FollowingFollowerErrorFailure,
                  KtList<FollowingFollowers>>>,
      following: following == freezed
          ? _value.following
          : following as Stream<
              Either<FollowingFollowerErrorFailure,
                  KtList<FollowingFollowers>>>,
    ));
  }
}

/// @nodoc
abstract class _$FollowingFollowersGroupedCopyWith<$Res>
    implements $FollowingFollowersGroupedCopyWith<$Res> {
  factory _$FollowingFollowersGroupedCopyWith(_FollowingFollowersGrouped value,
          $Res Function(_FollowingFollowersGrouped) then) =
      __$FollowingFollowersGroupedCopyWithImpl<$Res>;
  @override
  $Res call(
      {Stream<Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>>
          followers,
      Stream<Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>>
          following});
}

/// @nodoc
class __$FollowingFollowersGroupedCopyWithImpl<$Res>
    extends _$FollowingFollowersGroupedCopyWithImpl<$Res>
    implements _$FollowingFollowersGroupedCopyWith<$Res> {
  __$FollowingFollowersGroupedCopyWithImpl(_FollowingFollowersGrouped _value,
      $Res Function(_FollowingFollowersGrouped) _then)
      : super(_value, (v) => _then(v as _FollowingFollowersGrouped));

  @override
  _FollowingFollowersGrouped get _value =>
      super._value as _FollowingFollowersGrouped;

  @override
  $Res call({
    Object followers = freezed,
    Object following = freezed,
  }) {
    return _then(_FollowingFollowersGrouped(
      followers: followers == freezed
          ? _value.followers
          : followers as Stream<
              Either<FollowingFollowerErrorFailure,
                  KtList<FollowingFollowers>>>,
      following: following == freezed
          ? _value.following
          : following as Stream<
              Either<FollowingFollowerErrorFailure,
                  KtList<FollowingFollowers>>>,
    ));
  }
}

/// @nodoc
class _$_FollowingFollowersGrouped extends _FollowingFollowersGrouped {
  const _$_FollowingFollowersGrouped(
      {@required this.followers, @required this.following})
      : assert(followers != null),
        assert(following != null),
        super._();

  @override
  final Stream<
          Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>>
      followers;
  @override
  final Stream<
          Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>>
      following;

  @override
  String toString() {
    return 'FollowingFollowersGrouped(followers: $followers, following: $following)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FollowingFollowersGrouped &&
            (identical(other.followers, followers) ||
                const DeepCollectionEquality()
                    .equals(other.followers, followers)) &&
            (identical(other.following, following) ||
                const DeepCollectionEquality()
                    .equals(other.following, following)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(followers) ^
      const DeepCollectionEquality().hash(following);

  @JsonKey(ignore: true)
  @override
  _$FollowingFollowersGroupedCopyWith<_FollowingFollowersGrouped>
      get copyWith =>
          __$FollowingFollowersGroupedCopyWithImpl<_FollowingFollowersGrouped>(
              this, _$identity);
}

abstract class _FollowingFollowersGrouped extends FollowingFollowersGrouped {
  const _FollowingFollowersGrouped._() : super._();
  const factory _FollowingFollowersGrouped(
      {@required
          Stream<
                  Either<FollowingFollowerErrorFailure,
                      KtList<FollowingFollowers>>>
              followers,
      @required
          Stream<
                  Either<FollowingFollowerErrorFailure,
                      KtList<FollowingFollowers>>>
              following}) = _$_FollowingFollowersGrouped;

  @override
  Stream<Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>>
      get followers;
  @override
  Stream<Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>>
      get following;
  @override
  @JsonKey(ignore: true)
  _$FollowingFollowersGroupedCopyWith<_FollowingFollowersGrouped> get copyWith;
}
