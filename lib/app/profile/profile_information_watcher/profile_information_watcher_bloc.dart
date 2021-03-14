import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:creatispace/domain/profile/i_profile_facade.dart';
import 'package:creatispace/domain/profile/profile_data/peer_profile.dart';
import 'package:creatispace/domain/profile/profile_data/user_profile.dart';
import 'package:creatispace/domain/profile/profile_error/profile_error_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'profile_information_watcher_bloc.freezed.dart';
part 'profile_information_watcher_event.dart';
part 'profile_information_watcher_state.dart';

@injectable
class ProfileInformationWatcherBloc extends Bloc<ProfileInformationWatcherEvent, ProfileInformationWatcherState> {

  final IProfileFacade _iProfileFacade;

  ProfileInformationWatcherBloc(this._iProfileFacade)
      : super(const ProfileInformationWatcherState.initial());

  StreamSubscription<Either<ProfileErrorFailure, UserProfileData>>
  _userMessagingStreamSubscription;

  StreamSubscription<Either<ProfileErrorFailure, PeerProfileData>>
  _peerMessagingStreamSubscription;
  @override
  Stream<ProfileInformationWatcherState> mapEventToState(
    ProfileInformationWatcherEvent event,
  ) async* {
    yield* event.map(
        watchProfileInformation: (e) async* {
          yield const ProfileInformationWatcherState.loadInProgress();
          await _userMessagingStreamSubscription?.cancel();
          _userMessagingStreamSubscription = _iProfileFacade.getUserData()
              .listen((failureOrItems) => add(ProfileInformationWatcherEvent
                            .profileInformationReceived(failureOrItems)));
        },
        profileInformationReceived: (e) async* {
          yield e.failureOrMessages.fold(
                (f) => ProfileInformationWatcherState.loadFailure(f),
                (userData) => ProfileInformationWatcherState.loadSuccess(userData),
          );
        },
        watchPeerProfileInformation: (e) async* {
          yield const ProfileInformationWatcherState.loadPeerInProgress();
          await _peerMessagingStreamSubscription?.cancel();
          _peerMessagingStreamSubscription = _iProfileFacade.getPeerData(e.id)
              .listen((failureOrItems) => add(ProfileInformationWatcherEvent
              .peerProfileInformationReceived(failureOrItems)));
        },
        peerProfileInformationReceived: (e) async* {
          yield e.failureOrMessages.fold(
                (f) => ProfileInformationWatcherState.loadPeerFailure(f),
                (userData) => ProfileInformationWatcherState.loadPeerSuccess(userData),
          );
        });


  }
}
