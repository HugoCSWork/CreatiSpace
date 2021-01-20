part of 'user_conversation_bloc.dart';

@freezed
abstract class UserConversationEvent with _$UserConversationEvent {
  const factory UserConversationEvent.watchAllUserConversation(String peerId) =
      _watchAllUserConversation;
  const factory UserConversationEvent.MessagingListReceived(
    Either<UserErrorFailure, KtList<UserConversation>> failureOrMessages,
  ) = _UserConversationReceived;
  const factory UserConversationEvent.sendMessage(String peerId, String message, int type) =
  _SendMessage;
}
