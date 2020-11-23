part of 'item_actor_bloc.dart';

@freezed
abstract class ItemActorState with _$ItemActorState {
  const factory ItemActorState.initial() = _Initial;
  const factory ItemActorState.actionInProgress() = _ActionInProgress;
  const factory ItemActorState.deleteFailure(ItemErrorFailure itemFailure) = _DeleteFailure;
  const factory ItemActorState.deleteSuccess() = _DeleteSuccess;
  
}
