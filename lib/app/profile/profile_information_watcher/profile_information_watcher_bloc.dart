import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:creatispace/domain/profile/i_profile_facade.dart';
import 'package:creatispace/domain/profile/profile_data/user_profile.dart';
import 'package:creatispace/domain/profile/profile_error/profile_error_failures.dart';
import 'package:creatispace/domain/user_messaging/user_list/user_messaging.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'profile_information_watcher_event.dart';
part 'profile_information_watcher_state.dart';
part 'profile_information_watcher_bloc.freezed.dart';

@injectable
class ProfileInformationWatcherBloc extends Bloc<ProfileInformationWatcherEvent, ProfileInformationWatcherState> {

  final IProfileFacade _iProfileFacade;

  ProfileInformationWatcherBloc(this._iProfileFacade)
      : super(const ProfileInformationWatcherState.initial());

  StreamSubscription<Either<ProfileErrorFailure, UserProfileData>>
  _userMessagingStreamSubscription;

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
        });
  }
}
