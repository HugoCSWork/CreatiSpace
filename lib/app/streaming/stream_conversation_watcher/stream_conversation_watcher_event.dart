part of 'stream_conversation_watcher_bloc.dart';

@freezed
abstract class StreamConversationWatcherEvent with _$StreamConversationWatcherEvent {
  const factory StreamConversationWatcherEvent.watchAllUserConversation(String hostId, String workshopId) =
  _watchAllUserConversation;
  const factory StreamConversationWatcherEvent.MessagingListReceived(
      Either<String, KtList<StreamingMessage>> failureOrMessages,
      ) = _UserConversationReceived;
  const factory StreamConversationWatcherEvent.sendMessage(String peerId, String message, String workshopId) =
  _SendMessage;
}

