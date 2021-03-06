import 'package:creatispace/domain/user_messaging/user_conversation/user_conversation.dart';
import 'package:creatispace/domain/user_messaging/user_list/user_messaging.dart';
import 'package:creatispace/domain/user_messaging/user_list_error/user_messaging_error_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:kt_dart/collection.dart';

abstract class IUserFacade {
  Stream<Either<UserErrorFailure, KtList<UserMessaging>>> GetAllUserMessagesList();
  Stream<Either<UserErrorFailure, KtList<UserMessaging>>> GetAllUserFollowingList();
  Stream<Either<UserErrorFailure, KtList<UserConversation>>> GetAllUserMessages(String peerId, String peerName);
  Future<Either<UserErrorFailure, Unit>> sendMessage({ @required String peerId, @required String message, @required int type });
  Future<Either<UserErrorFailure, Unit>> deleteConversation({ @required String peerId });
}