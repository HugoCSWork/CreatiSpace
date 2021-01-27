// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'profile_information_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProfileInformationWatcherEventTearOff {
  const _$ProfileInformationWatcherEventTearOff();

// ignore: unused_element
  _watchProfileInformation watchProfileInformation() {
    return const _watchProfileInformation();
  }

// ignore: unused_element
  _profileInformationReceived profileInformationReceived(
      Either<ProfileErrorFailure, UserProfileData> failureOrMessages) {
    return _profileInformationReceived(
      failureOrMessages,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProfileInformationWatcherEvent =
    _$ProfileInformationWatcherEventTearOff();

/// @nodoc
mixin _$ProfileInformationWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchProfileInformation(),
    @required
        TResult profileInformationReceived(
            Either<ProfileErrorFailure, UserProfileData> failureOrMessages),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchProfileInformation(),
    TResult profileInformationReceived(
        Either<ProfileErrorFailure, UserProfileData> failureOrMessages),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchProfileInformation(_watchProfileInformation value),
    @required
        TResult profileInformationReceived(_profileInformationReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchProfileInformation(_watchProfileInformation value),
    TResult profileInformationReceived(_profileInformationReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ProfileInformationWatcherEventCopyWith<$Res> {
  factory $ProfileInformationWatcherEventCopyWith(
          ProfileInformationWatcherEvent value,
          $Res Function(ProfileInformationWatcherEvent) then) =
      _$ProfileInformationWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileInformationWatcherEventCopyWithImpl<$Res>
    implements $ProfileInformationWatcherEventCopyWith<$Res> {
  _$ProfileInformationWatcherEventCopyWithImpl(this._value, this._then);

  final ProfileInformationWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileInformationWatcherEvent) _then;
}

/// @nodoc
abstract class _$watchProfileInformationCopyWith<$Res> {
  factory _$watchProfileInformationCopyWith(_watchProfileInformation value,
          $Res Function(_watchProfileInformation) then) =
      __$watchProfileInformationCopyWithImpl<$Res>;
}

/// @nodoc
class __$watchProfileInformationCopyWithImpl<$Res>
    extends _$ProfileInformationWatcherEventCopyWithImpl<$Res>
    implements _$watchProfileInformationCopyWith<$Res> {
  __$watchProfileInformationCopyWithImpl(_watchProfileInformation _value,
      $Res Function(_watchProfileInformation) _then)
      : super(_value, (v) => _then(v as _watchProfileInformation));

  @override
  _watchProfileInformation get _value =>
      super._value as _watchProfileInformation;
}

/// @nodoc
class _$_watchProfileInformation implements _watchProfileInformation {
  const _$_watchProfileInformation();

  @override
  String toString() {
    return 'ProfileInformationWatcherEvent.watchProfileInformation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _watchProfileInformation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchProfileInformation(),
    @required
        TResult profileInformationReceived(
            Either<ProfileErrorFailure, UserProfileData> failureOrMessages),
  }) {
    assert(watchProfileInformation != null);
    assert(profileInformationReceived != null);
    return watchProfileInformation();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchProfileInformation(),
    TResult profileInformationReceived(
        Either<ProfileErrorFailure, UserProfileData> failureOrMessages),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchProfileInformation != null) {
      return watchProfileInformation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchProfileInformation(_watchProfileInformation value),
    @required
        TResult profileInformationReceived(_profileInformationReceived value),
  }) {
    assert(watchProfileInformation != null);
    assert(profileInformationReceived != null);
    return watchProfileInformation(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchProfileInformation(_watchProfileInformation value),
    TResult profileInformationReceived(_profileInformationReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchProfileInformation != null) {
      return watchProfileInformation(this);
    }
    return orElse();
  }
}

abstract class _watchProfileInformation
    implements ProfileInformationWatcherEvent {
  const factory _watchProfileInformation() = _$_watchProfileInformation;
}

/// @nodoc
abstract class _$profileInformationReceivedCopyWith<$Res> {
  factory _$profileInformationReceivedCopyWith(
          _profileInformationReceived value,
          $Res Function(_profileInformationReceived) then) =
      __$profileInformationReceivedCopyWithImpl<$Res>;
  $Res call({Either<ProfileErrorFailure, UserProfileData> failureOrMessages});
}

/// @nodoc
class __$profileInformationReceivedCopyWithImpl<$Res>
    extends _$ProfileInformationWatcherEventCopyWithImpl<$Res>
    implements _$profileInformationReceivedCopyWith<$Res> {
  __$profileInformationReceivedCopyWithImpl(_profileInformationReceived _value,
      $Res Function(_profileInformationReceived) _then)
      : super(_value, (v) => _then(v as _profileInformationReceived));

  @override
  _profileInformationReceived get _value =>
      super._value as _profileInformationReceived;

  @override
  $Res call({
    Object failureOrMessages = freezed,
  }) {
    return _then(_profileInformationReceived(
      failureOrMessages == freezed
          ? _value.failureOrMessages
          : failureOrMessages as Either<ProfileErrorFailure, UserProfileData>,
    ));
  }
}

/// @nodoc
class _$_profileInformationReceived implements _profileInformationReceived {
  const _$_profileInformationReceived(this.failureOrMessages)
      : assert(failureOrMessages != null);

  @override
  final Either<ProfileErrorFailure, UserProfileData> failureOrMessages;

  @override
  String toString() {
    return 'ProfileInformationWatcherEvent.profileInformationReceived(failureOrMessages: $failureOrMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _profileInformationReceived &&
            (identical(other.failureOrMessages, failureOrMessages) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrMessages, failureOrMessages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrMessages);

  @override
  _$profileInformationReceivedCopyWith<_profileInformationReceived>
      get copyWith => __$profileInformationReceivedCopyWithImpl<
          _profileInformationReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchProfileInformation(),
    @required
        TResult profileInformationReceived(
            Either<ProfileErrorFailure, UserProfileData> failureOrMessages),
  }) {
    assert(watchProfileInformation != null);
    assert(profileInformationReceived != null);
    return profileInformationReceived(failureOrMessages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchProfileInformation(),
    TResult profileInformationReceived(
        Either<ProfileErrorFailure, UserProfileData> failureOrMessages),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (profileInformationReceived != null) {
      return profileInformationReceived(failureOrMessages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchProfileInformation(_watchProfileInformation value),
    @required
        TResult profileInformationReceived(_profileInformationReceived value),
  }) {
    assert(watchProfileInformation != null);
    assert(profileInformationReceived != null);
    return profileInformationReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchProfileInformation(_watchProfileInformation value),
    TResult profileInformationReceived(_profileInformationReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (profileInformationReceived != null) {
      return profileInformationReceived(this);
    }
    return orElse();
  }
}

abstract class _profileInformationReceived
    implements ProfileInformationWatcherEvent {
  const factory _profileInformationReceived(
          Either<ProfileErrorFailure, UserProfileData> failureOrMessages) =
      _$_profileInformationReceived;

  Either<ProfileErrorFailure, UserProfileData> get failureOrMessages;
  _$profileInformationReceivedCopyWith<_profileInformationReceived>
      get copyWith;
}

/// @nodoc
class _$ProfileInformationWatcherStateTearOff {
  const _$ProfileInformationWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(UserProfileData userProfileData) {
    return _LoadSuccess(
      userProfileData,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(ProfileErrorFailure itemFailure) {
    return _LoadFailure(
      itemFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProfileInformationWatcherState =
    _$ProfileInformationWatcherStateTearOff();

/// @nodoc
mixin _$ProfileInformationWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(UserProfileData userProfileData),
    @required TResult loadFailure(ProfileErrorFailure itemFailure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(UserProfileData userProfileData),
    TResult loadFailure(ProfileErrorFailure itemFailure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ProfileInformationWatcherStateCopyWith<$Res> {
  factory $ProfileInformationWatcherStateCopyWith(
          ProfileInformationWatcherState value,
          $Res Function(ProfileInformationWatcherState) then) =
      _$ProfileInformationWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileInformationWatcherStateCopyWithImpl<$Res>
    implements $ProfileInformationWatcherStateCopyWith<$Res> {
  _$ProfileInformationWatcherStateCopyWithImpl(this._value, this._then);

  final ProfileInformationWatcherState _value;
  // ignore: unused_field
  final $Res Function(ProfileInformationWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$ProfileInformationWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ProfileInformationWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(UserProfileData userProfileData),
    @required TResult loadFailure(ProfileErrorFailure itemFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(UserProfileData userProfileData),
    TResult loadFailure(ProfileErrorFailure itemFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProfileInformationWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$ProfileInformationWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'ProfileInformationWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(UserProfileData userProfileData),
    @required TResult loadFailure(ProfileErrorFailure itemFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(UserProfileData userProfileData),
    TResult loadFailure(ProfileErrorFailure itemFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements ProfileInformationWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({UserProfileData userProfileData});

  $UserProfileDataCopyWith<$Res> get userProfileData;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$ProfileInformationWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object userProfileData = freezed,
  }) {
    return _then(_LoadSuccess(
      userProfileData == freezed
          ? _value.userProfileData
          : userProfileData as UserProfileData,
    ));
  }

  @override
  $UserProfileDataCopyWith<$Res> get userProfileData {
    if (_value.userProfileData == null) {
      return null;
    }
    return $UserProfileDataCopyWith<$Res>(_value.userProfileData, (value) {
      return _then(_value.copyWith(userProfileData: value));
    });
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.userProfileData) : assert(userProfileData != null);

  @override
  final UserProfileData userProfileData;

  @override
  String toString() {
    return 'ProfileInformationWatcherState.loadSuccess(userProfileData: $userProfileData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.userProfileData, userProfileData) ||
                const DeepCollectionEquality()
                    .equals(other.userProfileData, userProfileData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userProfileData);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(UserProfileData userProfileData),
    @required TResult loadFailure(ProfileErrorFailure itemFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(userProfileData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(UserProfileData userProfileData),
    TResult loadFailure(ProfileErrorFailure itemFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(userProfileData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements ProfileInformationWatcherState {
  const factory _LoadSuccess(UserProfileData userProfileData) = _$_LoadSuccess;

  UserProfileData get userProfileData;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({ProfileErrorFailure itemFailure});

  $ProfileErrorFailureCopyWith<$Res> get itemFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$ProfileInformationWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object itemFailure = freezed,
  }) {
    return _then(_LoadFailure(
      itemFailure == freezed
          ? _value.itemFailure
          : itemFailure as ProfileErrorFailure,
    ));
  }

  @override
  $ProfileErrorFailureCopyWith<$Res> get itemFailure {
    if (_value.itemFailure == null) {
      return null;
    }
    return $ProfileErrorFailureCopyWith<$Res>(_value.itemFailure, (value) {
      return _then(_value.copyWith(itemFailure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.itemFailure) : assert(itemFailure != null);

  @override
  final ProfileErrorFailure itemFailure;

  @override
  String toString() {
    return 'ProfileInformationWatcherState.loadFailure(itemFailure: $itemFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.itemFailure, itemFailure) ||
                const DeepCollectionEquality()
                    .equals(other.itemFailure, itemFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(itemFailure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(UserProfileData userProfileData),
    @required TResult loadFailure(ProfileErrorFailure itemFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(itemFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(UserProfileData userProfileData),
    TResult loadFailure(ProfileErrorFailure itemFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(itemFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements ProfileInformationWatcherState {
  const factory _LoadFailure(ProfileErrorFailure itemFailure) = _$_LoadFailure;

  ProfileErrorFailure get itemFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
