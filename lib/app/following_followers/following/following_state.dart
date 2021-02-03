part of 'following_bloc.dart';

@freezed
abstract class FollowingState with _$FollowingState {
  const factory FollowingState.initial() = _Initial;
  const factory FollowingState.loadInProgress() = _LoadInProgress;
  const factory FollowingState.loadSuccess(KtList<FollowingFollowers> following) = _LoadSuccess;
  const factory FollowingState.loadFailure(FollowingFollowerErrorFailure followingFollowerErrorFailure) = _LoadFailure;


}
