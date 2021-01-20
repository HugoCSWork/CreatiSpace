part of 'user_conversation_bloc.dart';

@freezed
abstract class UserConversationState with _$UserConversationState {
  const factory UserConversationState.initial() = _Initial;
  const factory UserConversationState.loadInProgress() = _LoadInProgress;
  const factory UserConversationState.loadSuccess(KtList<UserConversation> items) = _LoadSuccess;
  const factory UserConversationState.loadFailure(UserErrorFailure itemFailure) = _LoadFailure;
  /*const factory UserConversationState.sendInProgress() = _SendInProgress;
  const factory UserConversationState.sendSuccessful() = _SendSucessful;
  const factory UserConversationState.sendFailure(UserErrorFailure sendFailure) = _SendFailure;*/
}
