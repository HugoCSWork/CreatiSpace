part of 'following_bloc.dart';

@freezed
abstract class FollowingEvent with _$FollowingEvent {
  const factory FollowingEvent.watchAllFollowingList() = _watchAllFollowingList;
  const factory FollowingEvent.FollowingListReceived(
      Either<FollowingFollowerErrorFailure, KtList<FollowingFollowers>> failureOrMessages,
      ) = _FollowingListReceived;
}