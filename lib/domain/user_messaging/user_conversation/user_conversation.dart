import 'package:creatispace/domain/following_followers/following_follower/following_follower.dart';
import 'package:creatispace/domain/following_followers/following_follower_error/following_follower_error_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

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