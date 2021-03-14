// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'profile_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ProfileActorEventTearOff {
  const _$ProfileActorEventTearOff();

// ignore: unused_element
  _FollowUpdate followUpdate(bool option, String id) {
    return _FollowUpdate(
      option,
      id,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ProfileActorEvent = _$ProfileActorEventTearOff();

/// @nodoc
mixin _$ProfileActorEvent {
  bool get option;
  String get id;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult followUpdate(bool option, String id),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult followUpdate(bool option, String id),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult followUpdate(_FollowUpdate value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult followUpdate(_FollowUpdate value),
    @required TResult orElse(),
  });

  @JsonKey(ignore: true)
  $ProfileActorEventCopyWith<ProfileActorEvent> get copyWith;
}

/// @nodoc
abstract class $ProfileActorEventCopyWith<$Res> {
  factory $ProfileActorEventCopyWith(
          ProfileActorEvent value, $Res Function(ProfileActorEvent) then) =
      _$ProfileActorEventCopyWithImpl<$Res>;
  $Res call({bool option, String id});
}

/// @nodoc
class _$ProfileActorEventCopyWithImpl<$Res>
    implements $ProfileActorEventCopyWith<$Res> {
  _$ProfileActorEventCopyWithImpl(this._value, this._then);

  final ProfileActorEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileActorEvent) _then;

  @override
  $Res call({
    Object option = freezed,
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      option: option == freezed ? _value.option : option as bool,
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
abstract class _$FollowUpdateCopyWith<$Res>
    implements $ProfileActorEventCopyWith<$Res> {
  factory _$FollowUpdateCopyWith(
          _FollowUpdate value, $Res Function(_FollowUpdate) then) =
      __$FollowUpdateCopyWithImpl<$Res>;
  @override
  $Res call({bool option, String id});
}

/// @nodoc
class __$FollowUpdateCopyWithImpl<$Res>
    extends _$ProfileActorEventCopyWithImpl<$Res>
    implements _$FollowUpdateCopyWith<$Res> {
  __$FollowUpdateCopyWithImpl(
      _FollowUpdate _value, $Res Function(_FollowUpdate) _then)
      : super(_value, (v) => _then(v as _FollowUpdate));

  @override
  _FollowUpdate get _value => super._value as _FollowUpdate;

  @override
  $Res call({
    Object option = freezed,
    Object id = freezed,
  }) {
    return _then(_FollowUpdate(
      option == freezed ? _value.option : option as bool,
      id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
class _$_FollowUpdate implements _FollowUpdate {
  const _$_FollowUpdate(this.option, this.id)
      : assert(option != null),
        assert(id != null);

  @override
  final bool option;
  @override
  final String id;

  @override
  String toString() {
    return 'ProfileActorEvent.followUpdate(option: $option, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FollowUpdate &&
            (identical(other.option, option) ||
                const DeepCollectionEquality().equals(other.option, option)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(option) ^
      const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$FollowUpdateCopyWith<_FollowUpdate> get copyWith =>
      __$FollowUpdateCopyWithImpl<_FollowUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult followUpdate(bool option, String id),
  }) {
    assert(followUpdate != null);
    return followUpdate(option, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult followUpdate(bool option, String id),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (followUpdate != null) {
      return followUpdate(option, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult followUpdate(_FollowUpdate value),
  }) {
    assert(followUpdate != null);
    return followUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult followUpdate(_FollowUpdate value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (followUpdate != null) {
      return followUpdate(this);
    }
    return orElse();
  }
}

abstract class _FollowUpdate implements ProfileActorEvent {
  const factory _FollowUpdate(bool option, String id) = _$_FollowUpdate;

  @override
  bool get option;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$FollowUpdateCopyWith<_FollowUpdate> get copyWith;
}

/// @nodoc
class _$ProfileActorStateTearOff {
  const _$ProfileActorStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ActionInProgress actionInProgress() {
    return const _ActionInProgress();
  }

// ignore: unused_element
  _FollowUpdateFailure followUpdateFailure(
      ProfileErrorFailure profileErrorFailure) {
    return _FollowUpdateFailure(
      profileErrorFailure,
    );
  }

// ignore: unused_element
  _FollowUpdateSuccess followUpdateSuccess() {
    return const _FollowUpdateSuccess();
  }
}

/// @nodoc
// ignore: unused_element
const $ProfileActorState = _$ProfileActorStateTearOff();

/// @nodoc
mixin _$ProfileActorState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required
        TResult followUpdateFailure(ProfileErrorFailure profileErrorFailure),
    @required TResult followUpdateSuccess(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult followUpdateFailure(ProfileErrorFailure profileErrorFailure),
    TResult followUpdateSuccess(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult followUpdateFailure(_FollowUpdateFailure value),
    @required TResult followUpdateSuccess(_FollowUpdateSuccess value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult followUpdateFailure(_FollowUpdateFailure value),
    TResult followUpdateSuccess(_FollowUpdateSuccess value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $ProfileActorStateCopyWith<$Res> {
  factory $ProfileActorStateCopyWith(
          ProfileActorState value, $Res Function(ProfileActorState) then) =
      _$ProfileActorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileActorStateCopyWithImpl<$Res>
    implements $ProfileActorStateCopyWith<$Res> {
  _$ProfileActorStateCopyWithImpl(this._value, this._then);

  final ProfileActorState _value;
  // ignore: unused_field
  final $Res Function(ProfileActorState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ProfileActorStateCopyWithImpl<$Res>
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
    return 'ProfileActorState.initial()';
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
    @required TResult actionInProgress(),
    @required
        TResult followUpdateFailure(ProfileErrorFailure profileErrorFailure),
    @required TResult followUpdateSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(followUpdateFailure != null);
    assert(followUpdateSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult followUpdateFailure(ProfileErrorFailure profileErrorFailure),
    TResult followUpdateSuccess(),
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
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult followUpdateFailure(_FollowUpdateFailure value),
    @required TResult followUpdateSuccess(_FollowUpdateSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(followUpdateFailure != null);
    assert(followUpdateSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult followUpdateFailure(_FollowUpdateFailure value),
    TResult followUpdateSuccess(_FollowUpdateSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProfileActorState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ActionInProgressCopyWith<$Res> {
  factory _$ActionInProgressCopyWith(
          _ActionInProgress value, $Res Function(_ActionInProgress) then) =
      __$ActionInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$ActionInProgressCopyWithImpl<$Res>
    extends _$ProfileActorStateCopyWithImpl<$Res>
    implements _$ActionInProgressCopyWith<$Res> {
  __$ActionInProgressCopyWithImpl(
      _ActionInProgress _value, $Res Function(_ActionInProgress) _then)
      : super(_value, (v) => _then(v as _ActionInProgress));

  @override
  _ActionInProgress get _value => super._value as _ActionInProgress;
}

/// @nodoc
class _$_ActionInProgress implements _ActionInProgress {
  const _$_ActionInProgress();

  @override
  String toString() {
    return 'ProfileActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required
        TResult followUpdateFailure(ProfileErrorFailure profileErrorFailure),
    @required TResult followUpdateSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(followUpdateFailure != null);
    assert(followUpdateSuccess != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult followUpdateFailure(ProfileErrorFailure profileErrorFailure),
    TResult followUpdateSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult followUpdateFailure(_FollowUpdateFailure value),
    @required TResult followUpdateSuccess(_FollowUpdateSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(followUpdateFailure != null);
    assert(followUpdateSuccess != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult followUpdateFailure(_FollowUpdateFailure value),
    TResult followUpdateSuccess(_FollowUpdateSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class _ActionInProgress implements ProfileActorState {
  const factory _ActionInProgress() = _$_ActionInProgress;
}

/// @nodoc
abstract class _$FollowUpdateFailureCopyWith<$Res> {
  factory _$FollowUpdateFailureCopyWith(_FollowUpdateFailure value,
          $Res Function(_FollowUpdateFailure) then) =
      __$FollowUpdateFailureCopyWithImpl<$Res>;
  $Res call({ProfileErrorFailure profileErrorFailure});

  $ProfileErrorFailureCopyWith<$Res> get profileErrorFailure;
}

/// @nodoc
class __$FollowUpdateFailureCopyWithImpl<$Res>
    extends _$ProfileActorStateCopyWithImpl<$Res>
    implements _$FollowUpdateFailureCopyWith<$Res> {
  __$FollowUpdateFailureCopyWithImpl(
      _FollowUpdateFailure _value, $Res Function(_FollowUpdateFailure) _then)
      : super(_value, (v) => _then(v as _FollowUpdateFailure));

  @override
  _FollowUpdateFailure get _value => super._value as _FollowUpdateFailure;

  @override
  $Res call({
    Object profileErrorFailure = freezed,
  }) {
    return _then(_FollowUpdateFailure(
      profileErrorFailure == freezed
          ? _value.profileErrorFailure
          : profileErrorFailure as ProfileErrorFailure,
    ));
  }

  @override
  $ProfileErrorFailureCopyWith<$Res> get profileErrorFailure {
    if (_value.profileErrorFailure == null) {
      return null;
    }
    return $ProfileErrorFailureCopyWith<$Res>(_value.profileErrorFailure,
        (value) {
      return _then(_value.copyWith(profileErrorFailure: value));
    });
  }
}

/// @nodoc
class _$_FollowUpdateFailure implements _FollowUpdateFailure {
  const _$_FollowUpdateFailure(this.profileErrorFailure)
      : assert(profileErrorFailure != null);

  @override
  final ProfileErrorFailure profileErrorFailure;

  @override
  String toString() {
    return 'ProfileActorState.followUpdateFailure(profileErrorFailure: $profileErrorFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FollowUpdateFailure &&
            (identical(other.profileErrorFailure, profileErrorFailure) ||
                const DeepCollectionEquality()
                    .equals(other.profileErrorFailure, profileErrorFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(profileErrorFailure);

  @JsonKey(ignore: true)
  @override
  _$FollowUpdateFailureCopyWith<_FollowUpdateFailure> get copyWith =>
      __$FollowUpdateFailureCopyWithImpl<_FollowUpdateFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required
        TResult followUpdateFailure(ProfileErrorFailure profileErrorFailure),
    @required TResult followUpdateSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(followUpdateFailure != null);
    assert(followUpdateSuccess != null);
    return followUpdateFailure(profileErrorFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult followUpdateFailure(ProfileErrorFailure profileErrorFailure),
    TResult followUpdateSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (followUpdateFailure != null) {
      return followUpdateFailure(profileErrorFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult followUpdateFailure(_FollowUpdateFailure value),
    @required TResult followUpdateSuccess(_FollowUpdateSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(followUpdateFailure != null);
    assert(followUpdateSuccess != null);
    return followUpdateFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult followUpdateFailure(_FollowUpdateFailure value),
    TResult followUpdateSuccess(_FollowUpdateSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (followUpdateFailure != null) {
      return followUpdateFailure(this);
    }
    return orElse();
  }
}

abstract class _FollowUpdateFailure implements ProfileActorState {
  const factory _FollowUpdateFailure(ProfileErrorFailure profileErrorFailure) =
      _$_FollowUpdateFailure;

  ProfileErrorFailure get profileErrorFailure;
  @JsonKey(ignore: true)
  _$FollowUpdateFailureCopyWith<_FollowUpdateFailure> get copyWith;
}

/// @nodoc
abstract class _$FollowUpdateSuccessCopyWith<$Res> {
  factory _$FollowUpdateSuccessCopyWith(_FollowUpdateSuccess value,
          $Res Function(_FollowUpdateSuccess) then) =
      __$FollowUpdateSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$FollowUpdateSuccessCopyWithImpl<$Res>
    extends _$ProfileActorStateCopyWithImpl<$Res>
    implements _$FollowUpdateSuccessCopyWith<$Res> {
  __$FollowUpdateSuccessCopyWithImpl(
      _FollowUpdateSuccess _value, $Res Function(_FollowUpdateSuccess) _then)
      : super(_value, (v) => _then(v as _FollowUpdateSuccess));

  @override
  _FollowUpdateSuccess get _value => super._value as _FollowUpdateSuccess;
}

/// @nodoc
class _$_FollowUpdateSuccess implements _FollowUpdateSuccess {
  const _$_FollowUpdateSuccess();

  @override
  String toString() {
    return 'ProfileActorState.followUpdateSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FollowUpdateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult actionInProgress(),
    @required
        TResult followUpdateFailure(ProfileErrorFailure profileErrorFailure),
    @required TResult followUpdateSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(followUpdateFailure != null);
    assert(followUpdateSuccess != null);
    return followUpdateSuccess();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult actionInProgress(),
    TResult followUpdateFailure(ProfileErrorFailure profileErrorFailure),
    TResult followUpdateSuccess(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (followUpdateSuccess != null) {
      return followUpdateSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult actionInProgress(_ActionInProgress value),
    @required TResult followUpdateFailure(_FollowUpdateFailure value),
    @required TResult followUpdateSuccess(_FollowUpdateSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(followUpdateFailure != null);
    assert(followUpdateSuccess != null);
    return followUpdateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult actionInProgress(_ActionInProgress value),
    TResult followUpdateFailure(_FollowUpdateFailure value),
    TResult followUpdateSuccess(_FollowUpdateSuccess value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (followUpdateSuccess != null) {
      return followUpdateSuccess(this);
    }
    return orElse();
  }
}

abstract class _FollowUpdateSuccess implements ProfileActorState {
  const factory _FollowUpdateSuccess() = _$_FollowUpdateSuccess;
}
