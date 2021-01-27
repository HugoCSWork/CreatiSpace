part of 'profile_information_watcher_bloc.dart';

@freezed
abstract class ProfileInformationWatcherState with _$ProfileInformationWatcherState {
  const factory ProfileInformationWatcherState.initial() = _Initial;
  const factory ProfileInformationWatcherState.loadInProgress() = _LoadInProgress;
  const factory ProfileInformationWatcherState.loadSuccess(UserProfileData userProfileData) = _LoadSuccess;
  const factory ProfileInformationWatcherState.loadFailure(ProfileErrorFailure itemFailure) = _LoadFailure;
}
