part of 'user_messaging_watcher_bloc.dart';

@freezed
abstract class UserMessagingWatcherState with _$UserMessagingWatcherState {
  const factory UserMessagingWatcherState.initial() = _Initial;
  const factory UserMessagingWatcherState.loadInProgress() = _LoadInProgress;
  const factory UserMessagingWatcherState.loadSuccess(KtList<UserMessaging> items) = _LoadSuccess;
  const factory UserMessagingWatcherState.loadFailure(UserErrorFailure itemFailure) = _LoadFailure;
}
