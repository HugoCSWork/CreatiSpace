import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_messaging.freezed.dart';

@freezed
abstract class UserMessaging implements _$UserMessaging {
  const factory UserMessaging({
    @required String id,
    @required String userMessagingName,
    String lastMessage,
    String lastSeen,
    bool unreadMessages,
    String userId
  }) = _UserMessaging;

  const UserMessaging._();

}
