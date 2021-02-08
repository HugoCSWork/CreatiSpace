part of 'profile_information_watcher_bloc.dart';

@freezed
abstract class ProfileInformationWatcherEvent with _$ProfileInformationWatcherEvent {
  const factory ProfileInformationWatcherEvent.watchProfileInformation() = _watchProfileInformation;
  const factory ProfileInformationWatcherEvent.profileInformationReceived(
      Either<ProfileErrorFailure, UserProfileData> failureOrMessages,
      ) = _profileInformationReceived;
  const factory ProfileInformationWatcherEvent.watchPeerProfileInformation(String id) = _watchPeerProfileInformation;
  const factory ProfileInformationWatcherEvent.peerProfileInformationReceived(
      Either<ProfileErrorFailure, PeerProfileData> failureOrMessages,
      ) = _peerProfileInformationReceived;
}