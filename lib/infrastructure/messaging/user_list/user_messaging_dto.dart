
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:creatispace/domain/user_messaging/user_list/user_messaging.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_messaging_dto.freezed.dart';
part 'user_messaging_dto.g.dart';

@freezed
abstract class UserMessagingDto implements _$UserMessagingDto {
  const UserMessagingDto._();

  const factory UserMessagingDto({
    @JsonKey(ignore: true) String id,
    @required String userMessagingName,
    String lastMessage,
    String lastSeen,
    String unreadMessages,
    String userId
  }) = _UserMessagingDto;

  factory UserMessagingDto.fromDomain(UserMessaging userMessages) {
    return UserMessagingDto(
        id: userMessages.id,
        userMessagingName: userMessages.userMessagingName,
        lastMessage: userMessages.lastMessage,
        lastSeen: userMessages.lastSeen,
        unreadMessages: userMessages.unreadMessages,
        userId: userMessages.userId
    );
  }

  UserMessaging toDomain() {
    return UserMessaging(
        id: id,
        userMessagingName: userMessagingName,
        lastMessage: lastMessage.length >= 40 ? lastMessage.substring(0, 40) + " ..." : lastMessage,
        lastSeen:  lastSeen,
        unreadMessages: unreadMessages,
        userId: userId
    );
  }

  factory UserMessagingDto.fromJson(Map<String, dynamic> json) =>
      _$UserMessagingDtoFromJson(json);

  factory UserMessagingDto.fromFirestore(DocumentSnapshot doc, String userId) {
    return UserMessagingDto.fromJson(doc.data()).copyWith(id: doc.id, userId: userId);
  }
}