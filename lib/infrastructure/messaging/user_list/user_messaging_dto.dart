
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
    String imageUrl,
    bool unreadMessages,
    String userId
  }) = _UserMessagingDto;

  factory UserMessagingDto.fromDomain(UserMessaging userMessages) {
    return UserMessagingDto(
        id: userMessages.id,
        userMessagingName: userMessages.userMessagingName,
        lastMessage: userMessages.lastMessage,
        lastSeen: userMessages.lastSeen,
        imageUrl: userMessages.imageUrl,
        unreadMessages: userMessages.unreadMessages,
        userId: userMessages.userId
    );
  }

  UserMessaging toDomain() {
    return UserMessaging(
        id: id,
        imageUrl: imageUrl,
        userMessagingName: userMessagingName,
        lastMessage: lastMessage.length >= 40 ? lastMessage.substring(0, 40) + " ..." : lastMessage,
        lastSeen: lastSeen == "never" ? lastSeen : sortLastSeen(lastSeen),
        unreadMessages: unreadMessages,
        userId: userId
    );
  }

  UserMessaging toShortDomain() {
    return UserMessaging(
        id: id,
        userMessagingName: userMessagingName,
        userId: userId,
        imageUrl: imageUrl
    );
  }
  
  int calculateDifference(DateTime date) {
    DateTime now = DateTime.now();
    return DateTime(now.year, now.month, now.day).difference(DateTime(date.year, date.month, date.day)).inDays;
  }
  
  String sortLastSeen(String lastSeen) {
    DateTime dayDifference = DateTime.fromMillisecondsSinceEpoch(int.parse(lastSeen));
    var difference = calculateDifference(dayDifference);
    if(difference <= 1) {
      return "Today";
    } else if(difference < 7) {
      return "This week";
    } else if (difference < 14) {
      return "2 Weeks ago";
    } else if (difference < 30) {
      return "A month ago";
    } else {
      return "Over a month";
    }
  }

  factory UserMessagingDto.fromJson(Map<String, dynamic> json) =>
      _$UserMessagingDtoFromJson(json);

  factory UserMessagingDto.fromFirestore(DocumentSnapshot doc, String userId) =>
      UserMessagingDto.fromJson(doc.data()).copyWith(id: doc.id, userId: userId);
}