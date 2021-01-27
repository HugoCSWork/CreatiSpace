part of 'profile_information_watcher_bloc.dart';

@freezed
abstract class ProfileInformationWatcherEvent with _$ProfileInformationWatcherEvent {
  const factory ProfileInformationWatcherEvent.watchProfileInformation() = _watchProfileInformation;
  const factory ProfileInformationWatcherEvent.profileInformationReceived(
      Either<ProfileErrorFailure, UserProfileData> failureOrMessages,
      ) = _profileInformationReceived;
}