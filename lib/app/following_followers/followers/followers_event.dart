part of 'followers_bloc.dart';

@freezed
abstract class FollowersEvent with _$FollowersEvent {
  const factory FollowersEvent.watchAllFollowersList() = _watchAllFollowersList;
  const factory FollowersEvent.FollowersListReceived(
      Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>> failureOrMessages,
      ) = _FollowersListReceived;
}