part of 'stream_conversation_watcher_bloc.dart';

@freezed
abstract class StreamConversationWatcherState with _$StreamConversationWatcherState {
  const factory StreamConversationWatcherState.initial() = _Initial;
  const factory StreamConversationWatcherState.loadInProgress() = _LoadInProgress;
  const factory StreamConversationWatcherState.loadSuccess(KtList<StreamingMessage> items) = _LoadSuccess;
  const factory StreamConversationWatcherState.loadFailure(String itemFailure) = _LoadFailure;
}
