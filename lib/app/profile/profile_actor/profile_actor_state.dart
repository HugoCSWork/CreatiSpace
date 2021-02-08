part of 'profile_actor_bloc.dart';

@freezed
abstract class ProfileActorState with _$ProfileActorState {
  const factory ProfileActorState.initial() = _Initial;
  const factory ProfileActorState.actionInProgress() = _ActionInProgress;
  const factory ProfileActorState.followUpdateFailure(ProfileErrorFailure profileErrorFailure) = _FollowUpdateFailure;
  const factory ProfileActorState.followUpdateSuccess() = _FollowUpdateSuccess;
}
