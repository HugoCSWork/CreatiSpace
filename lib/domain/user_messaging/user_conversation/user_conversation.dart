import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_conversation.freezed.dart';

@freezed
abstract class UserConversation implements _$UserConversation {
  const factory UserConversation({
    @required String content,
    @required String idFrom,
    @required String idTo,
    @required String timestamp,
    @required int type
  }) = _UserConversation;

  const UserConversation._();
}