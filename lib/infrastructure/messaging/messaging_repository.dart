

import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:creatispace/domain/core/value_objects.dart';
import 'package:creatispace/domain/user_messaging/IUserFacade.dart';
import 'package:creatispace/domain/user_messaging/user_conversation/user_conversation.dart';
import 'package:creatispace/domain/user_messaging/user_list/user_messaging.dart';
import 'package:creatispace/domain/user_messaging/user_list_error/user_messaging_error_failures.dart';
import 'package:creatispace/infrastructure/messaging/conversation/user_conversation_dto.dart';
import 'package:creatispace/infrastructure/messaging/user_list/user_messaging_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:creatispace/infrastructure/core/firestore_helpers.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uuid/uuid.dart';

@LazySingleton(as: IUserFacade)
class UserMessagesRepository implements IUserFacade {
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseStorage _firebaseStorage;
  final FirebaseAuth _firebaseAuth;

  UserMessagesRepository(this._firebaseFirestore,
      this._firebaseStorage, this._firebaseAuth);

  @override
  Stream<Either<UserErrorFailure, KtList<UserMessaging>>>
      GetAllUserMessagesList() async* {

    final userDoc = await _firebaseFirestore.userDocument();
    yield* userDoc.UserMessagesCollection
            .snapshots()
            .map(
            (snapshot) => right<UserErrorFailure, KtList<UserMessaging>>(
              snapshot.docs
                  .map(
                    (doc) {
                      UserMessaging dto = UserMessagingDto.fromFirestore(doc, _firebaseAuth.currentUser.uid).toDomain();
                      // TODO Add profile images when actually implemented
                      return dto;
                    })
                    .toImmutableList(),
            ),
          ).onErrorReturnWith((error) {
            if (error is FirebaseException && error.message.contains('PERMISSION_DENIED')) {
              return left(const UserErrorFailure.insufficientPermissions());
            } else {
              return left(const UserErrorFailure.unexpected());
            }
          });
  }

  @override
  Stream<Either<UserErrorFailure, KtList<UserConversation>>> GetAllUserMessages(String peerId) async* {
    final userDoc = await _firebaseFirestore.userDocumentMessage(peerId);
    yield* userDoc.UserMessagesConversationCollection
        .orderBy('timestamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<UserErrorFailure, KtList<UserConversation>>(
        snapshot.docs
            .map(
                (doc) => UserConversationDto.fromFirestore(doc).toDomain()
            ).toImmutableList(),
      ),
    ).onErrorReturnWith((error) {
      if (error is FirebaseException && error.message.contains('PERMISSION_DENIED')) {
        return left(const UserErrorFailure.insufficientPermissions());
      } else {
        return left(const UserErrorFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<UserErrorFailure, Unit>> sendMessage({String peerId, String message, int type}) async {
    final userDoc = await _firebaseFirestore.userDocumentMessage(peerId);
    final peerDoc = await _firebaseFirestore.peerDocumentMessage(peerId);
    final userId =  _firebaseAuth.currentUser.uid;
    final timestamp = DateTime.now().millisecondsSinceEpoch.toString();
    final imagePath = "user_messages/${userId}/${peerId}/${Uuid().v4()}";

    if(type == 1) {
      final imageReference = FirebaseStorage.instance
          .ref()
          .child(imagePath);

      await imageReference.putFile(File(message));
      message = await FirebaseStorage.instance
          .ref()
          .child(imagePath)
          .getDownloadURL();
    }

    UserConversationDto userMessage = new UserConversationDto(
        content: message,
        idFrom: userId,
        idTo: peerId,
        timestamp: timestamp,
        type: type
    );

    await userDoc.UserMessagesConversationCollection
              .doc(timestamp)
              .set(userMessage.toJson());

    await peerDoc.UserMessagesConversationCollection
        .doc(timestamp)
        .set(userMessage.toJson());
    return right(unit);
  }
}