// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'profile_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProfileFormEventTearOff {
  const _$ProfileFormEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<UserProfileData> initialItemOption) {
    return _Initialized(
      initialItemOption,
    );
  }

// ignore: unused_element
  _UsernameChanged usernameChanged(String username) {
    return _UsernameChanged(
      username,
    );
  }

// ignore: unused_element
  _BackgroundImageURLChanged backgroundImageURLChanged(
      String backgroundImageURL) {
    return _BackgroundImageURLChanged(
      backgroundImageURL,
    );
  }

// ignore: unused_element
  _ProfileImageURL profileImageURLChanged(String profileImageURL) {
    return _ProfileImageURL(
      profileImageURL,
    );
  }

// ignore: unused_element
  _DescriptionChanged descriptionChanged(String description) {
    return _DescriptionChanged(
      description,
    );
  }

// ignore: unused_element
  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
// ignore: unused_element
const $ProfileFormEvent = _$ProfileFormEventTearOff();

/// @nodoc
mixin _$ProfileFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<UserProfileData> initialItemOption),
    @required TResult usernameChanged(String username),
    @required TResult backgroundImageURLChanged(String backgroundImageURL),
    @required TResult profileImageURLChanged(String profileImageURL),
    @required TResult descriptionChanged(String description),
    @required TResult saved(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<UserProfileData> initialItemOption),
    TResult usernameChanged(String username),
    TResult backgroundImageURLChanged(String backgroundImageURL),
    TResult profileImageURLChanged(String profileImageURL),
    TResult descriptionChanged(String description),
    TResult saved(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult usernameChanged(_UsernameChanged value),
    @required
        TResult backgroundImageURLChanged(_BackgroundImageURLChanged value),
    @required TResult profileImageURLChanged(_ProfileImageURL value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult saved(_Saved value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult usernameChanged(_UsernameChanged value),
    TResult backgroundImageURLChanged(_BackgroundImageURLChanged value),
    TResult profileImageURLChanged(_ProfileImageURL value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ProfileFormEventCopyWith<$Res> {
  factory $ProfileFormEventCopyWith(
          ProfileFormEvent value, $Res Function(ProfileFormEvent) then) =
      _$ProfileFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileFormEventCopyWithImpl<$Res>
    implements $ProfileFormEventCopyWith<$Res> {
  _$ProfileFormEventCopyWithImpl(this._value, this._then);

  final ProfileFormEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<UserProfileData> initialItemOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialItemOption = freezed,
  }) {
    return _then(_Initialized(
      initialItemOption == freezed
          ? _value.initialItemOption
          : initialItemOption as Option<UserProfileData>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialItemOption)
      : assert(initialItemOption != null);

  @override
  final Option<UserProfileData> initialItemOption;

  @override
  String toString() {
    return 'ProfileFormEvent.initialized(initialItemOption: $initialItemOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialItemOption, initialItemOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialItemOption, initialItemOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialItemOption);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<UserProfileData> initialItemOption),
    @required TResult usernameChanged(String username),
    @required TResult backgroundImageURLChanged(String backgroundImageURL),
    @required TResult profileImageURLChanged(String profileImageURL),
    @required TResult descriptionChanged(String description),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(usernameChanged != null);
    assert(backgroundImageURLChanged != null);
    assert(profileImageURLChanged != null);
    assert(descriptionChanged != null);
    assert(saved != null);
    return initialized(initialItemOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<UserProfileData> initialItemOption),
    TResult usernameChanged(String username),
    TResult backgroundImageURLChanged(String backgroundImageURL),
    TResult profileImageURLChanged(String profileImageURL),
    TResult descriptionChanged(String description),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialItemOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult usernameChanged(_UsernameChanged value),
    @required
        TResult backgroundImageURLChanged(_BackgroundImageURLChanged value),
    @required TResult profileImageURLChanged(_ProfileImageURL value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(usernameChanged != null);
    assert(backgroundImageURLChanged != null);
    assert(profileImageURLChanged != null);
    assert(descriptionChanged != null);
    assert(saved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult usernameChanged(_UsernameChanged value),
    TResult backgroundImageURLChanged(_BackgroundImageURLChanged value),
    TResult profileImageURLChanged(_ProfileImageURL value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ProfileFormEvent {
  const factory _Initialized(Option<UserProfileData> initialItemOption) =
      _$_Initialized;

  Option<UserProfileData> get initialItemOption;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$UsernameChangedCopyWith<$Res> {
  factory _$UsernameChangedCopyWith(
          _UsernameChanged value, $Res Function(_UsernameChanged) then) =
      __$UsernameChangedCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class __$UsernameChangedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$UsernameChangedCopyWith<$Res> {
  __$UsernameChangedCopyWithImpl(
      _UsernameChanged _value, $Res Function(_UsernameChanged) _then)
      : super(_value, (v) => _then(v as _UsernameChanged));

  @override
  _UsernameChanged get _value => super._value as _UsernameChanged;

  @override
  $Res call({
    Object username = freezed,
  }) {
    return _then(_UsernameChanged(
      username == freezed ? _value.username : username as String,
    ));
  }
}

/// @nodoc
class _$_UsernameChanged implements _UsernameChanged {
  const _$_UsernameChanged(this.username) : assert(username != null);

  @override
  final String username;

  @override
  String toString() {
    return 'ProfileFormEvent.usernameChanged(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UsernameChanged &&
            (identical(other.username, username) ||
                const DeepCollectionEquality()
                    .equals(other.username, username)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(username);

  @JsonKey(ignore: true)
  @override
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith =>
      __$UsernameChangedCopyWithImpl<_UsernameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<UserProfileData> initialItemOption),
    @required TResult usernameChanged(String username),
    @required TResult backgroundImageURLChanged(String backgroundImageURL),
    @required TResult profileImageURLChanged(String profileImageURL),
    @required TResult descriptionChanged(String description),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(usernameChanged != null);
    assert(backgroundImageURLChanged != null);
    assert(profileImageURLChanged != null);
    assert(descriptionChanged != null);
    assert(saved != null);
    return usernameChanged(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<UserProfileData> initialItemOption),
    TResult usernameChanged(String username),
    TResult backgroundImageURLChanged(String backgroundImageURL),
    TResult profileImageURLChanged(String profileImageURL),
    TResult descriptionChanged(String description),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult usernameChanged(_UsernameChanged value),
    @required
        TResult backgroundImageURLChanged(_BackgroundImageURLChanged value),
    @required TResult profileImageURLChanged(_ProfileImageURL value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(usernameChanged != null);
    assert(backgroundImageURLChanged != null);
    assert(profileImageURLChanged != null);
    assert(descriptionChanged != null);
    assert(saved != null);
    return usernameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult usernameChanged(_UsernameChanged value),
    TResult backgroundImageURLChanged(_BackgroundImageURLChanged value),
    TResult profileImageURLChanged(_ProfileImageURL value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (usernameChanged != null) {
      return usernameChanged(this);
    }
    return orElse();
  }
}

abstract class _UsernameChanged implements ProfileFormEvent {
  const factory _UsernameChanged(String username) = _$_UsernameChanged;

  String get username;
  @JsonKey(ignore: true)
  _$UsernameChangedCopyWith<_UsernameChanged> get copyWith;
}

/// @nodoc
abstract class _$BackgroundImageURLChangedCopyWith<$Res> {
  factory _$BackgroundImageURLChangedCopyWith(_BackgroundImageURLChanged value,
          $Res Function(_BackgroundImageURLChanged) then) =
      __$BackgroundImageURLChangedCopyWithImpl<$Res>;
  $Res call({String backgroundImageURL});
}

/// @nodoc
class __$BackgroundImageURLChangedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$BackgroundImageURLChangedCopyWith<$Res> {
  __$BackgroundImageURLChangedCopyWithImpl(_BackgroundImageURLChanged _value,
      $Res Function(_BackgroundImageURLChanged) _then)
      : super(_value, (v) => _then(v as _BackgroundImageURLChanged));

  @override
  _BackgroundImageURLChanged get _value =>
      super._value as _BackgroundImageURLChanged;

  @override
  $Res call({
    Object backgroundImageURL = freezed,
  }) {
    return _then(_BackgroundImageURLChanged(
      backgroundImageURL == freezed
          ? _value.backgroundImageURL
          : backgroundImageURL as String,
    ));
  }
}

/// @nodoc
class _$_BackgroundImageURLChanged implements _BackgroundImageURLChanged {
  const _$_BackgroundImageURLChanged(this.backgroundImageURL)
      : assert(backgroundImageURL != null);

  @override
  final String backgroundImageURL;

  @override
  String toString() {
    return 'ProfileFormEvent.backgroundImageURLChanged(backgroundImageURL: $backgroundImageURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BackgroundImageURLChanged &&
            (identical(other.backgroundImageURL, backgroundImageURL) ||
                const DeepCollectionEquality()
                    .equals(other.backgroundImageURL, backgroundImageURL)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(backgroundImageURL);

  @JsonKey(ignore: true)
  @override
  _$BackgroundImageURLChangedCopyWith<_BackgroundImageURLChanged>
      get copyWith =>
          __$BackgroundImageURLChangedCopyWithImpl<_BackgroundImageURLChanged>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<UserProfileData> initialItemOption),
    @required TResult usernameChanged(String username),
    @required TResult backgroundImageURLChanged(String backgroundImageURL),
    @required TResult profileImageURLChanged(String profileImageURL),
    @required TResult descriptionChanged(String description),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(usernameChanged != null);
    assert(backgroundImageURLChanged != null);
    assert(profileImageURLChanged != null);
    assert(descriptionChanged != null);
    assert(saved != null);
    return backgroundImageURLChanged(backgroundImageURL);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<UserProfileData> initialItemOption),
    TResult usernameChanged(String username),
    TResult backgroundImageURLChanged(String backgroundImageURL),
    TResult profileImageURLChanged(String profileImageURL),
    TResult descriptionChanged(String description),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (backgroundImageURLChanged != null) {
      return backgroundImageURLChanged(backgroundImageURL);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult usernameChanged(_UsernameChanged value),
    @required
        TResult backgroundImageURLChanged(_BackgroundImageURLChanged value),
    @required TResult profileImageURLChanged(_ProfileImageURL value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(usernameChanged != null);
    assert(backgroundImageURLChanged != null);
    assert(profileImageURLChanged != null);
    assert(descriptionChanged != null);
    assert(saved != null);
    return backgroundImageURLChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult usernameChanged(_UsernameChanged value),
    TResult backgroundImageURLChanged(_BackgroundImageURLChanged value),
    TResult profileImageURLChanged(_ProfileImageURL value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (backgroundImageURLChanged != null) {
      return backgroundImageURLChanged(this);
    }
    return orElse();
  }
}

abstract class _BackgroundImageURLChanged implements ProfileFormEvent {
  const factory _BackgroundImageURLChanged(String backgroundImageURL) =
      _$_BackgroundImageURLChanged;

  String get backgroundImageURL;
  @JsonKey(ignore: true)
  _$BackgroundImageURLChangedCopyWith<_BackgroundImageURLChanged> get copyWith;
}

/// @nodoc
abstract class _$ProfileImageURLCopyWith<$Res> {
  factory _$ProfileImageURLCopyWith(
          _ProfileImageURL value, $Res Function(_ProfileImageURL) then) =
      __$ProfileImageURLCopyWithImpl<$Res>;
  $Res call({String profileImageURL});
}

/// @nodoc
class __$ProfileImageURLCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$ProfileImageURLCopyWith<$Res> {
  __$ProfileImageURLCopyWithImpl(
      _ProfileImageURL _value, $Res Function(_ProfileImageURL) _then)
      : super(_value, (v) => _then(v as _ProfileImageURL));

  @override
  _ProfileImageURL get _value => super._value as _ProfileImageURL;

  @override
  $Res call({
    Object profileImageURL = freezed,
  }) {
    return _then(_ProfileImageURL(
      profileImageURL == freezed
          ? _value.profileImageURL
          : profileImageURL as String,
    ));
  }
}

/// @nodoc
class _$_ProfileImageURL implements _ProfileImageURL {
  const _$_ProfileImageURL(this.profileImageURL)
      : assert(profileImageURL != null);

  @override
  final String profileImageURL;

  @override
  String toString() {
    return 'ProfileFormEvent.profileImageURLChanged(profileImageURL: $profileImageURL)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileImageURL &&
            (identical(other.profileImageURL, profileImageURL) ||
                const DeepCollectionEquality()
                    .equals(other.profileImageURL, profileImageURL)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(profileImageURL);

  @JsonKey(ignore: true)
  @override
  _$ProfileImageURLCopyWith<_ProfileImageURL> get copyWith =>
      __$ProfileImageURLCopyWithImpl<_ProfileImageURL>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<UserProfileData> initialItemOption),
    @required TResult usernameChanged(String username),
    @required TResult backgroundImageURLChanged(String backgroundImageURL),
    @required TResult profileImageURLChanged(String profileImageURL),
    @required TResult descriptionChanged(String description),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(usernameChanged != null);
    assert(backgroundImageURLChanged != null);
    assert(profileImageURLChanged != null);
    assert(descriptionChanged != null);
    assert(saved != null);
    return profileImageURLChanged(profileImageURL);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<UserProfileData> initialItemOption),
    TResult usernameChanged(String username),
    TResult backgroundImageURLChanged(String backgroundImageURL),
    TResult profileImageURLChanged(String profileImageURL),
    TResult descriptionChanged(String description),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (profileImageURLChanged != null) {
      return profileImageURLChanged(profileImageURL);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult usernameChanged(_UsernameChanged value),
    @required
        TResult backgroundImageURLChanged(_BackgroundImageURLChanged value),
    @required TResult profileImageURLChanged(_ProfileImageURL value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(usernameChanged != null);
    assert(backgroundImageURLChanged != null);
    assert(profileImageURLChanged != null);
    assert(descriptionChanged != null);
    assert(saved != null);
    return profileImageURLChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult usernameChanged(_UsernameChanged value),
    TResult backgroundImageURLChanged(_BackgroundImageURLChanged value),
    TResult profileImageURLChanged(_ProfileImageURL value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (profileImageURLChanged != null) {
      return profileImageURLChanged(this);
    }
    return orElse();
  }
}

abstract class _ProfileImageURL implements ProfileFormEvent {
  const factory _ProfileImageURL(String profileImageURL) = _$_ProfileImageURL;

  String get profileImageURL;
  @JsonKey(ignore: true)
  _$ProfileImageURLCopyWith<_ProfileImageURL> get copyWith;
}

/// @nodoc
abstract class _$DescriptionChangedCopyWith<$Res> {
  factory _$DescriptionChangedCopyWith(
          _DescriptionChanged value, $Res Function(_DescriptionChanged) then) =
      __$DescriptionChangedCopyWithImpl<$Res>;
  $Res call({String description});
}

/// @nodoc
class __$DescriptionChangedCopyWithImpl<$Res>
    extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$DescriptionChangedCopyWith<$Res> {
  __$DescriptionChangedCopyWithImpl(
      _DescriptionChanged _value, $Res Function(_DescriptionChanged) _then)
      : super(_value, (v) => _then(v as _DescriptionChanged));

  @override
  _DescriptionChanged get _value => super._value as _DescriptionChanged;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(_DescriptionChanged(
      description == freezed ? _value.description : description as String,
    ));
  }
}

/// @nodoc
class _$_DescriptionChanged implements _DescriptionChanged {
  const _$_DescriptionChanged(this.description) : assert(description != null);

  @override
  final String description;

  @override
  String toString() {
    return 'ProfileFormEvent.descriptionChanged(description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DescriptionChanged &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith =>
      __$DescriptionChangedCopyWithImpl<_DescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<UserProfileData> initialItemOption),
    @required TResult usernameChanged(String username),
    @required TResult backgroundImageURLChanged(String backgroundImageURL),
    @required TResult profileImageURLChanged(String profileImageURL),
    @required TResult descriptionChanged(String description),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(usernameChanged != null);
    assert(backgroundImageURLChanged != null);
    assert(profileImageURLChanged != null);
    assert(descriptionChanged != null);
    assert(saved != null);
    return descriptionChanged(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<UserProfileData> initialItemOption),
    TResult usernameChanged(String username),
    TResult backgroundImageURLChanged(String backgroundImageURL),
    TResult profileImageURLChanged(String profileImageURL),
    TResult descriptionChanged(String description),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult usernameChanged(_UsernameChanged value),
    @required
        TResult backgroundImageURLChanged(_BackgroundImageURLChanged value),
    @required TResult profileImageURLChanged(_ProfileImageURL value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(usernameChanged != null);
    assert(backgroundImageURLChanged != null);
    assert(profileImageURLChanged != null);
    assert(descriptionChanged != null);
    assert(saved != null);
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult usernameChanged(_UsernameChanged value),
    TResult backgroundImageURLChanged(_BackgroundImageURLChanged value),
    TResult profileImageURLChanged(_ProfileImageURL value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements ProfileFormEvent {
  const factory _DescriptionChanged(String description) = _$_DescriptionChanged;

  String get description;
  @JsonKey(ignore: true)
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$ProfileFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc
class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'ProfileFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<UserProfileData> initialItemOption),
    @required TResult usernameChanged(String username),
    @required TResult backgroundImageURLChanged(String backgroundImageURL),
    @required TResult profileImageURLChanged(String profileImageURL),
    @required TResult descriptionChanged(String description),
    @required TResult saved(),
  }) {
    assert(initialized != null);
    assert(usernameChanged != null);
    assert(backgroundImageURLChanged != null);
    assert(profileImageURLChanged != null);
    assert(descriptionChanged != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<UserProfileData> initialItemOption),
    TResult usernameChanged(String username),
    TResult backgroundImageURLChanged(String backgroundImageURL),
    TResult profileImageURLChanged(String profileImageURL),
    TResult descriptionChanged(String description),
    TResult saved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult usernameChanged(_UsernameChanged value),
    @required
        TResult backgroundImageURLChanged(_BackgroundImageURLChanged value),
    @required TResult profileImageURLChanged(_ProfileImageURL value),
    @required TResult descriptionChanged(_DescriptionChanged value),
    @required TResult saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(usernameChanged != null);
    assert(backgroundImageURLChanged != null);
    assert(profileImageURLChanged != null);
    assert(descriptionChanged != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult usernameChanged(_UsernameChanged value),
    TResult backgroundImageURLChanged(_BackgroundImageURLChanged value),
    TResult profileImageURLChanged(_ProfileImageURL value),
    TResult descriptionChanged(_DescriptionChanged value),
    TResult saved(_Saved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements ProfileFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$ProfileFormStateTearOff {
  const _$ProfileFormStateTearOff();

// ignore: unused_element
  _ProfileFormState call(
      {@required
          UserProfileData item,
      @required
          AutovalidateMode showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Option<Either<ProfileErrorFailure, Unit>>
              saveFailureOrSuccessOption}) {
    return _ProfileFormState(
      item: item,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProfileFormState = _$ProfileFormStateTearOff();

/// @nodoc
mixin _$ProfileFormState {
  UserProfileData get item;
  AutovalidateMode get showErrorMessages;
  bool get isEditing;
  bool get isSaving;
  Option<Either<ProfileErrorFailure, Unit>> get saveFailureOrSuccessOption;

  @JsonKey(ignore: true)
  $ProfileFormStateCopyWith<ProfileFormState> get copyWith;
}

/// @nodoc
abstract class $ProfileFormStateCopyWith<$Res> {
  factory $ProfileFormStateCopyWith(
          ProfileFormState value, $Res Function(ProfileFormState) then) =
      _$ProfileFormStateCopyWithImpl<$Res>;
  $Res call(
      {UserProfileData item,
      AutovalidateMode showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<ProfileErrorFailure, Unit>> saveFailureOrSuccessOption});

  $UserProfileDataCopyWith<$Res> get item;
}

/// @nodoc
class _$ProfileFormStateCopyWithImpl<$Res>
    implements $ProfileFormStateCopyWith<$Res> {
  _$ProfileFormStateCopyWithImpl(this._value, this._then);

  final ProfileFormState _value;
  // ignore: unused_field
  final $Res Function(ProfileFormState) _then;

  @override
  $Res call({
    Object item = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      item: item == freezed ? _value.item : item as UserProfileData,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as AutovalidateMode,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption
              as Option<Either<ProfileErrorFailure, Unit>>,
    ));
  }

  @override
  $UserProfileDataCopyWith<$Res> get item {
    if (_value.item == null) {
      return null;
    }
    return $UserProfileDataCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value));
    });
  }
}

/// @nodoc
abstract class _$ProfileFormStateCopyWith<$Res>
    implements $ProfileFormStateCopyWith<$Res> {
  factory _$ProfileFormStateCopyWith(
          _ProfileFormState value, $Res Function(_ProfileFormState) then) =
      __$ProfileFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserProfileData item,
      AutovalidateMode showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<ProfileErrorFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $UserProfileDataCopyWith<$Res> get item;
}

/// @nodoc
class __$ProfileFormStateCopyWithImpl<$Res>
    extends _$ProfileFormStateCopyWithImpl<$Res>
    implements _$ProfileFormStateCopyWith<$Res> {
  __$ProfileFormStateCopyWithImpl(
      _ProfileFormState _value, $Res Function(_ProfileFormState) _then)
      : super(_value, (v) => _then(v as _ProfileFormState));

  @override
  _ProfileFormState get _value => super._value as _ProfileFormState;

  @override
  $Res call({
    Object item = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_ProfileFormState(
      item: item == freezed ? _value.item : item as UserProfileData,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as AutovalidateMode,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption
              as Option<Either<ProfileErrorFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_ProfileFormState implements _ProfileFormState {
  const _$_ProfileFormState(
      {@required this.item,
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption})
      : assert(item != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final UserProfileData item;
  @override
  final AutovalidateMode showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<ProfileErrorFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'ProfileFormState(item: $item, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProfileFormState &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(item) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$ProfileFormStateCopyWith<_ProfileFormState> get copyWith =>
      __$ProfileFormStateCopyWithImpl<_ProfileFormState>(this, _$identity);
}

abstract class _ProfileFormState implements ProfileFormState {
  const factory _ProfileFormState(
      {@required
          UserProfileData item,
      @required
          AutovalidateMode showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Option<Either<ProfileErrorFailure, Unit>>
              saveFailureOrSuccessOption}) = _$_ProfileFormState;

  @override
  UserProfileData get item;
  @override
  AutovalidateMode get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<ProfileErrorFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$ProfileFormStateCopyWith<_ProfileFormState> get copyWith;
}
