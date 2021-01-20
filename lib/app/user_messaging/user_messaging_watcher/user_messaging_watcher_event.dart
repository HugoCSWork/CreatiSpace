part of 'user_messaging_watcher_bloc.dart';

@freezed
abstract class UserMessagingWatcherEvent with _$UserMessagingWatcherEvent {
  const factory UserMessagingWatcherEvent.watchAllUserMessagingList() = _watchAllUserMessagingList;
  const factory UserMessagingWatcherEvent.MessagingListReceived(
    Either<UserErrorFailure, KtList<UserMessaging>> failureOrMessages,
  ) = _UserMessagesRecievedReceived;
}