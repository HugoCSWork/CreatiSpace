import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:creatispace/domain/profile/i_profile_facade.dart';
import 'package:creatispace/domain/profile/profile_error/profile_error_failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_actor_event.dart';
part 'profile_actor_state.dart';
part 'profile_actor_bloc.freezed.dart';

@injectable
class ProfileActorBloc extends Bloc<ProfileActorEvent, ProfileActorState> {
  final IProfileFacade _iProfileFacade;

  ProfileActorBloc(this._iProfileFacade) : super(const ProfileActorState.initial());

  @override
  Stream<ProfileActorState> mapEventToState(
    ProfileActorEvent event,
  ) async* {
    yield* event.map(
        followUpdate: (e) async* {
          yield const ProfileActorState.actionInProgress();
          if(e.option) {
            final possibleFailure = await _iProfileFacade.unfollow(e.id);
            yield possibleFailure.fold(
                    (f) => ProfileActorState.followUpdateFailure(f),
                    (_) => const ProfileActorState.followUpdateSuccess());
          } else {
            final possibleFailure = await _iProfileFacade.follow(e.id);
            yield possibleFailure.fold(
                    (f) => ProfileActorState.followUpdateFailure(f),
                    (_) => const ProfileActorState.followUpdateSuccess());
          }

        }
    );
  }
}
