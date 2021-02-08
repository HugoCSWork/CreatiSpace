part of 'profile_actor_bloc.dart';

@freezed
abstract class ProfileActorEvent with _$ProfileActorEvent {
  const factory ProfileActorEvent.followUpdate(bool option, String id) = _FollowUpdate;
}