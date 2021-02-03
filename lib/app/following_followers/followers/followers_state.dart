part of 'followers_bloc.dart';

@freezed
abstract class FollowersState with _$FollowersState {
  const factory FollowersState.initial() = _Initial;
  const factory FollowersState.loadInProgress() = _LoadInProgressFollowers;
  const factory FollowersState.loadSuccess(KtList<FollowingFollowers> followers) = _LoadSuccess;
  const factory FollowersState.loadFailure(FollowingFollowerErrorFailure followingFollowerErrorFailure) = _LoadFailure;
}
