
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:creatispace/domain/user_messaging/user_conversation/user_conversation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_conversation_dto.freezed.dart';
part 'user_conversation_dto.g.dart';

@freezed
abstract class UserConversationDto implements _$UserConversationDto {
  const UserConversationDto._();

  const factory UserConversationDto({
    @required String content,
    @required String idFrom,
    @required String idTo,
    @required String timestamp,
    @required int type
  }) = _UserConversationDto;

  factory UserConversationDto.fromDomain(UserConversation userConversation) {
    return UserConversationDto(
        content: userConversation.content,
        idFrom: userConversation.idFrom,
        idTo: userConversation.idTo,
        timestamp: userConversation.timestamp,
        type: userConversation.type
    );
  }

  UserConversation toDomain() {
    return UserConversation(
        content: content,
        idFrom: idFrom,
        idTo: idTo,
        timestamp:  timestamp,
        type: type
    );
  }

  factory UserConversationDto.fromJson(Map<String, dynamic> json) =>
      _$UserConversationDtoFromJson(json);

  factory UserConversationDto.fromFirestore(DocumentSnapshot doc) {
    return UserConversationDto.fromJson(doc.data());
  }
}