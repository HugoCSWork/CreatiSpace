// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'followers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$FollowersEventTearOff {
  const _$FollowersEventTearOff();

// ignore: unused_element
  _watchAllFollowersList watchAllFollowersList() {
    return const _watchAllFollowersList();
  }

// ignore: unused_element
  _FollowersListReceived FollowersListReceived(
      Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>
          failureOrMessages) {
    return _FollowersListReceived(
      failureOrMessages,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FollowersEvent = _$FollowersEventTearOff();

/// @nodoc
mixin _$FollowersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllFollowersList(),
    @required
        TResult FollowersListReceived(
            Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>
                failureOrMessages),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllFollowersList(),
    TResult FollowersListReceived(
        Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>
            failureOrMessages),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllFollowersList(_watchAllFollowersList value),
    @required TResult FollowersListReceived(_FollowersListReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllFollowersList(_watchAllFollowersList value),
    TResult FollowersListReceived(_FollowersListReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $FollowersEventCopyWith<$Res> {
  factory $FollowersEventCopyWith(
          FollowersEvent value, $Res Function(FollowersEvent) then) =
      _$FollowersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FollowersEventCopyWithImpl<$Res>
    implements $FollowersEventCopyWith<$Res> {
  _$FollowersEventCopyWithImpl(this._value, this._then);

  final FollowersEvent _value;
  // ignore: unused_field
  final $Res Function(FollowersEvent) _then;
}

/// @nodoc
abstract class _$watchAllFollowersListCopyWith<$Res> {
  factory _$watchAllFollowersListCopyWith(_watchAllFollowersList value,
          $Res Function(_watchAllFollowersList) then) =
      __$watchAllFollowersListCopyWithImpl<$Res>;
}

/// @nodoc
class __$watchAllFollowersListCopyWithImpl<$Res>
    extends _$FollowersEventCopyWithImpl<$Res>
    implements _$watchAllFollowersListCopyWith<$Res> {
  __$watchAllFollowersListCopyWithImpl(_watchAllFollowersList _value,
      $Res Function(_watchAllFollowersList) _then)
      : super(_value, (v) => _then(v as _watchAllFollowersList));

  @override
  _watchAllFollowersList get _value => super._value as _watchAllFollowersList;
}

/// @nodoc
class _$_watchAllFollowersList implements _watchAllFollowersList {
  const _$_watchAllFollowersList();

  @override
  String toString() {
    return 'FollowersEvent.watchAllFollowersList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _watchAllFollowersList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllFollowersList(),
    @required
        TResult FollowersListReceived(
            Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>
                failureOrMessages),
  }) {
    assert(watchAllFollowersList != null);
    assert(FollowersListReceived != null);
    return watchAllFollowersList();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllFollowersList(),
    TResult FollowersListReceived(
        Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>
            failureOrMessages),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllFollowersList != null) {
      return watchAllFollowersList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllFollowersList(_watchAllFollowersList value),
    @required TResult FollowersListReceived(_FollowersListReceived value),
  }) {
    assert(watchAllFollowersList != null);
    assert(FollowersListReceived != null);
    return watchAllFollowersList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllFollowersList(_watchAllFollowersList value),
    TResult FollowersListReceived(_FollowersListReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllFollowersList != null) {
      return watchAllFollowersList(this);
    }
    return orElse();
  }
}

abstract class _watchAllFollowersList implements FollowersEvent {
  const factory _watchAllFollowersList() = _$_watchAllFollowersList;
}

/// @nodoc
abstract class _$FollowersListReceivedCopyWith<$Res> {
  factory _$FollowersListReceivedCopyWith(_FollowersListReceived value,
          $Res Function(_FollowersListReceived) then) =
      __$FollowersListReceivedCopyWithImpl<$Res>;
  $Res call(
      {Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>
          failureOrMessages});
}

/// @nodoc
class __$FollowersListReceivedCopyWithImpl<$Res>
    extends _$FollowersEventCopyWithImpl<$Res>
    implements _$FollowersListReceivedCopyWith<$Res> {
  __$FollowersListReceivedCopyWithImpl(_FollowersListReceived _value,
      $Res Function(_FollowersListReceived) _then)
      : super(_value, (v) => _then(v as _FollowersListReceived));

  @override
  _FollowersListReceived get _value => super._value as _FollowersListReceived;

  @override
  $Res call({
    Object failureOrMessages = freezed,
  }) {
    return _then(_FollowersListReceived(
      failureOrMessages == freezed
          ? _value.failureOrMessages
          : failureOrMessages as Either<FollowingFollowerErrorFailure,
              KtList<FollowingFollowers>>,
    ));
  }
}

/// @nodoc
class _$_FollowersListReceived implements _FollowersListReceived {
  const _$_FollowersListReceived(this.failureOrMessages)
      : assert(failureOrMessages != null);

  @override
  final Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>
      failureOrMessages;

  @override
  String toString() {
    return 'FollowersEvent.FollowersListReceived(failureOrMessages: $failureOrMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FollowersListReceived &&
            (identical(other.failureOrMessages, failureOrMessages) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrMessages, failureOrMessages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrMessages);

  @JsonKey(ignore: true)
  @override
  _$FollowersListReceivedCopyWith<_FollowersListReceived> get copyWith =>
      __$FollowersListReceivedCopyWithImpl<_FollowersListReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllFollowersList(),
    @required
        TResult FollowersListReceived(
            Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>
                failureOrMessages),
  }) {
    assert(watchAllFollowersList != null);
    assert(FollowersListReceived != null);
    return FollowersListReceived(failureOrMessages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllFollowersList(),
    TResult FollowersListReceived(
        Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>
            failureOrMessages),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (FollowersListReceived != null) {
      return FollowersListReceived(failureOrMessages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllFollowersList(_watchAllFollowersList value),
    @required TResult FollowersListReceived(_FollowersListReceived value),
  }) {
    assert(watchAllFollowersList != null);
    assert(FollowersListReceived != null);
    return FollowersListReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllFollowersList(_watchAllFollowersList value),
    TResult FollowersListReceived(_FollowersListReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (FollowersListReceived != null) {
      return FollowersListReceived(this);
    }
    return orElse();
  }
}

abstract class _FollowersListReceived implements FollowersEvent {
  const factory _FollowersListReceived(
      Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>
          failureOrMessages) = _$_FollowersListReceived;

  Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>>
      get failureOrMessages;
  @JsonKey(ignore: true)
  _$FollowersListReceivedCopyWith<_FollowersListReceived> get copyWith;
}

/// @nodoc
class _$FollowersStateTearOff {
  const _$FollowersStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgressFollowers loadInProgress() {
    return const _LoadInProgressFollowers();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(KtList<FollowingFollowers> followers) {
    return _LoadSuccess(
      followers,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(
      FollowingFollowerErrorFailure followingFollowerErrorFailure) {
    return _LoadFailure(
      followingFollowerErrorFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $FollowersState = _$FollowersStateTearOff();

/// @nodoc
mixin _$FollowersState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<FollowingFollowers> followers),
    @required
        TResult loadFailure(
            FollowingFollowerErrorFailure followingFollowerErrorFailure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<FollowingFollowers> followers),
    TResult loadFailure(
        FollowingFollowerErrorFailure followingFollowerErrorFailure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgressFollowers value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgressFollowers value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $FollowersStateCopyWith<$Res> {
  factory $FollowersStateCopyWith(
          FollowersState value, $Res Function(FollowersState) then) =
      _$FollowersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FollowersStateCopyWithImpl<$Res>
    implements $FollowersStateCopyWith<$Res> {
  _$FollowersStateCopyWithImpl(this._value, this._then);

  final FollowersState _value;
  // ignore: unused_field
  final $Res Function(FollowersState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$FollowersStateCopyWithImpl<$Res>
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
    return 'FollowersState.initial()';
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
    @required TResult loadSuccess(KtList<FollowingFollowers> followers),
    @required
        TResult loadFailure(
            FollowingFollowerErrorFailure followingFollowerErrorFailure),
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
    TResult loadSuccess(KtList<FollowingFollowers> followers),
    TResult loadFailure(
        FollowingFollowerErrorFailure followingFollowerErrorFailure),
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
    @required TResult loadInProgress(_LoadInProgressFollowers value),
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
    TResult loadInProgress(_LoadInProgressFollowers value),
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

abstract class _Initial implements FollowersState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressFollowersCopyWith<$Res> {
  factory _$LoadInProgressFollowersCopyWith(_LoadInProgressFollowers value,
          $Res Function(_LoadInProgressFollowers) then) =
      __$LoadInProgressFollowersCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressFollowersCopyWithImpl<$Res>
    extends _$FollowersStateCopyWithImpl<$Res>
    implements _$LoadInProgressFollowersCopyWith<$Res> {
  __$LoadInProgressFollowersCopyWithImpl(_LoadInProgressFollowers _value,
      $Res Function(_LoadInProgressFollowers) _then)
      : super(_value, (v) => _then(v as _LoadInProgressFollowers));

  @override
  _LoadInProgressFollowers get _value =>
      super._value as _LoadInProgressFollowers;
}

/// @nodoc
class _$_LoadInProgressFollowers implements _LoadInProgressFollowers {
  const _$_LoadInProgressFollowers();

  @override
  String toString() {
    return 'FollowersState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgressFollowers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<FollowingFollowers> followers),
    @required
        TResult loadFailure(
            FollowingFollowerErrorFailure followingFollowerErrorFailure),
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
    TResult loadSuccess(KtList<FollowingFollowers> followers),
    TResult loadFailure(
        FollowingFollowerErrorFailure followingFollowerErrorFailure),
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
    @required TResult loadInProgress(_LoadInProgressFollowers value),
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
    TResult loadInProgress(_LoadInProgressFollowers value),
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

abstract class _LoadInProgressFollowers implements FollowersState {
  const factory _LoadInProgressFollowers() = _$_LoadInProgressFollowers;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({KtList<FollowingFollowers> followers});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$FollowersStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object followers = freezed,
  }) {
    return _then(_LoadSuccess(
      followers == freezed
          ? _value.followers
          : followers as KtList<FollowingFollowers>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.followers) : assert(followers != null);

  @override
  final KtList<FollowingFollowers> followers;

  @override
  String toString() {
    return 'FollowersState.loadSuccess(followers: $followers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.followers, followers) ||
                const DeepCollectionEquality()
                    .equals(other.followers, followers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(followers);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<FollowingFollowers> followers),
    @required
        TResult loadFailure(
            FollowingFollowerErrorFailure followingFollowerErrorFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(followers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<FollowingFollowers> followers),
    TResult loadFailure(
        FollowingFollowerErrorFailure followingFollowerErrorFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(followers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgressFollowers value),
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
    TResult loadInProgress(_LoadInProgressFollowers value),
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

abstract class _LoadSuccess implements FollowersState {
  const factory _LoadSuccess(KtList<FollowingFollowers> followers) =
      _$_LoadSuccess;

  KtList<FollowingFollowers> get followers;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({FollowingFollowerErrorFailure followingFollowerErrorFailure});

  $FollowingFollowerErrorFailureCopyWith<$Res>
      get followingFollowerErrorFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$FollowersStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object followingFollowerErrorFailure = freezed,
  }) {
    return _then(_LoadFailure(
      followingFollowerErrorFailure == freezed
          ? _value.followingFollowerErrorFailure
          : followingFollowerErrorFailure as FollowingFollowerErrorFailure,
    ));
  }

  @override
  $FollowingFollowerErrorFailureCopyWith<$Res>
      get followingFollowerErrorFailure {
    if (_value.followingFollowerErrorFailure == null) {
      return null;
    }
    return $FollowingFollowerErrorFailureCopyWith<$Res>(
        _value.followingFollowerErrorFailure, (value) {
      return _then(_value.copyWith(followingFollowerErrorFailure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.followingFollowerErrorFailure)
      : assert(followingFollowerErrorFailure != null);

  @override
  final FollowingFollowerErrorFailure followingFollowerErrorFailure;

  @override
  String toString() {
    return 'FollowersState.loadFailure(followingFollowerErrorFailure: $followingFollowerErrorFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.followingFollowerErrorFailure,
                    followingFollowerErrorFailure) ||
                const DeepCollectionEquality().equals(
                    other.followingFollowerErrorFailure,
                    followingFollowerErrorFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(followingFollowerErrorFailure);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(KtList<FollowingFollowers> followers),
    @required
        TResult loadFailure(
            FollowingFollowerErrorFailure followingFollowerErrorFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(followingFollowerErrorFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(KtList<FollowingFollowers> followers),
    TResult loadFailure(
        FollowingFollowerErrorFailure followingFollowerErrorFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(followingFollowerErrorFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgressFollowers value),
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
    TResult loadInProgress(_LoadInProgressFollowers value),
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

abstract class _LoadFailure implements FollowersState {
  const factory _LoadFailure(
          FollowingFollowerErrorFailure followingFollowerErrorFailure) =
      _$_LoadFailure;

  FollowingFollowerErrorFailure get followingFollowerErrorFailure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
