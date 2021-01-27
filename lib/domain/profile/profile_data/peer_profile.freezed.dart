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
      {@required String id,
      @required String username,
      @required int following,
      @required int followers,
      @required String profileImageURL,
      @required Item item}) {
    return _PeerProfileData(
      id: id,
      username: username,
      following: following,
      followers: followers,
      profileImageURL: profileImageURL,
      item: item,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $PeerProfileData = _$PeerProfileDataTearOff();

/// @nodoc
mixin _$PeerProfileData {
  String get id;
  String get username;
  int get following;
  int get followers;
  String get profileImageURL;
  Item get item;

  $PeerProfileDataCopyWith<PeerProfileData> get copyWith;
}

/// @nodoc
abstract class $PeerProfileDataCopyWith<$Res> {
  factory $PeerProfileDataCopyWith(
          PeerProfileData value, $Res Function(PeerProfileData) then) =
      _$PeerProfileDataCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String username,
      int following,
      int followers,
      String profileImageURL,
      Item item});

  $ItemCopyWith<$Res> get item;
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
    Object id = freezed,
    Object username = freezed,
    Object following = freezed,
    Object followers = freezed,
    Object profileImageURL = freezed,
    Object item = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      username: username == freezed ? _value.username : username as String,
      following: following == freezed ? _value.following : following as int,
      followers: followers == freezed ? _value.followers : followers as int,
      profileImageURL: profileImageURL == freezed
          ? _value.profileImageURL
          : profileImageURL as String,
      item: item == freezed ? _value.item : item as Item,
    ));
  }

  @override
  $ItemCopyWith<$Res> get item {
    if (_value.item == null) {
      return null;
    }
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
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
      {String id,
      String username,
      int following,
      int followers,
      String profileImageURL,
      Item item});

  @override
  $ItemCopyWith<$Res> get item;
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
    Object id = freezed,
    Object username = freezed,
    Object following = freezed,
    Object followers = freezed,
    Object profileImageURL = freezed,
    Object item = freezed,
  }) {
    return _then(_PeerProfileData(
      id: id == freezed ? _value.id : id as String,
      username: username == freezed ? _value.username : username as String,
      following: following == freezed ? _value.following : following as int,
      followers: followers == freezed ? _value.followers : followers as int,
      profileImageURL: profileImageURL == freezed
          ? _value.profileImageURL
          : profileImageURL as String,
      item: item == freezed ? _value.item : item as Item,
    ));
  }
}

/// @nodoc
class _$_PeerProfileData implements _PeerProfileData {
  const _$_PeerProfileData(
      {@required this.id,
      @required this.username,
      @required this.following,
      @required this.followers,
      @required this.profileImageURL,
      @required this.item})
      : assert(id != null),
        assert(username != null),
        assert(following != null),
        assert(followers != null),
        assert(profileImageURL != null),
        assert(item != null);

  @override
  final String id;
  @override
  final String username;
  @override
  final int following;
  @override
  final int followers;
  @override
  final String profileImageURL;
  @override
  final Item item;

  @override
  String toString() {
    return 'PeerProfileData(id: $id, username: $username, following: $following, followers: $followers, profileImageURL: $profileImageURL, item: $item)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PeerProfileData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(username) ^
      const DeepCollectionEquality().hash(following) ^
      const DeepCollectionEquality().hash(followers) ^
      const DeepCollectionEquality().hash(profileImageURL) ^
      const DeepCollectionEquality().hash(item);

  @override
  _$PeerProfileDataCopyWith<_PeerProfileData> get copyWith =>
      __$PeerProfileDataCopyWithImpl<_PeerProfileData>(this, _$identity);
}

abstract class _PeerProfileData implements PeerProfileData {
  const factory _PeerProfileData(
      {@required String id,
      @required String username,
      @required int following,
      @required int followers,
      @required String profileImageURL,
      @required Item item}) = _$_PeerProfileData;

  @override
  String get id;
  @override
  String get username;
  @override
  int get following;
  @override
  int get followers;
  @override
  String get profileImageURL;
  @override
  Item get item;
  @override
  _$PeerProfileDataCopyWith<_PeerProfileData> get copyWith;
}
