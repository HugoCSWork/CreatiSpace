import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:creatispace/domain/streaming/i_streaming_facade.dart';
import 'package:creatispace/domain/streaming/streaming_message.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:creatispace/infrastructure/core/firestore_helpers.dart';
import 'package:kt_dart/collection.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IStreamingFacade)
class StreamingRepository implements IStreamingFacade {
  final FirebaseFirestore _firebaseFirestore;

  StreamingRepository(this._firebaseFirestore);

  @override
  Future<Either<String, Unit>> addMessage(String message, String id, String workshopId) async {
    try {
      final userDoc = await _firebaseFirestore.userDocument();
      final userDocName = await _firebaseFirestore.userDocumentName(userDoc.id);
      final userDocImage = await _firebaseFirestore.userDocumentProfileImage(userDoc.id);
      final timestamp = DateTime.now().millisecondsSinceEpoch.toString();

      final StreamingMessage sendMessage = StreamingMessage(
          username: userDocName, image: userDocImage, message: message);
      var streamingOwner = await _firebaseFirestore.peerDocument(id);
      streamingOwner.workshopCollection.doc(workshopId).collection('conversation').doc(timestamp).set(sendMessage.toJson());
      return right(unit);
    } catch (err) {
      return left(err.toString());
    }
  }

  @override
  Future<Either<String, Unit>> endStream(String workshopId) async{
    try {
      final userDoc = await _firebaseFirestore.userDocument();
      var userData = await userDoc.collection('workshops').doc(workshopId);
      await userData.update({ "hasStarted": "ended" });
      var retrievedData = await  userData.get();

      var workshopData = await retrievedData.data();
      var workshopParticipants = workshopData["attendees"] as List<dynamic>;

      var batch = _firebaseFirestore.batch();
      await workshopParticipants.forEach((element) {
        var docRef = _firebaseFirestore
            .collection('users')
            .doc(element.toString())
            .collection('workshops_attending')
            .doc(workshopId);
        batch.update(docRef, {"hasStarted" : "ended"});
      });

      batch.commit();
      return right(unit);
    } catch (err) {
      return left(err.toString());
    }

  }

  @override
  Future<Either<String, String>> joinStream(String workshopId) async {
    try {
      final userDoc = await _firebaseFirestore.userDocument();
      var userData = await userDoc.collection('workshops_attending').doc(workshopId);
      var retrievedData = await  userData.get();
      var workshopData = await retrievedData.data();
      if(workshopData["hasStarted"] == "pending") {
        return left("Event hasn't started");
      }
      return right(workshopData["eventCode"].toString());
    } catch (err) {
      return left(err.toString());
    }

  }

  @override
  Future<Either<String, String>> startStream(String workshopId) async {
    try {
    final userDoc = await _firebaseFirestore.userDocument();
    var userData = await userDoc.collection('workshops').doc(workshopId);
      await userData.update({ "hasStarted": "started" });

      var retrievedData = await  userData.get();

      var workshopData = await retrievedData.data();
      var workshopParticipants = workshopData["attendees"] as List<dynamic>;


      Map<String, String> customHeaders = {
        "content-type": "application/json"
      };
      var bodyData =  jsonEncode(<String, String>{
        'channelName': workshopId,
      });
      var response = await http.post('https://creatispacemobile.azurewebsites.net/v1/streaming/create-token', headers: customHeaders, body: bodyData);
      if(response.statusCode != 201) {
        return left('Error retrieving code');
      }

      var batch = _firebaseFirestore.batch();
      await workshopParticipants.forEach((element) {
        var docRef = _firebaseFirestore
            .collection('users')
            .doc(element.toString())
            .collection('workshops_attending')
            .doc(workshopId);
        batch.update(docRef, {"hasStarted" : "started", "eventCode" : response.body});
      });

      batch.commit();

      return right(response.body);
    } catch (err) {
      return left(err.toString());
    }
  }

  @override
  Stream<Either<String, KtList<StreamingMessage>>> watchAllMessaging(String hostId, String workshopId) async* {
    var streamingOwner = await _firebaseFirestore.peerDocument(hostId);
    var messagesPath = streamingOwner.workshopCollection.doc(workshopId.replaceAll(' ', '')).collection('conversation');
    yield* messagesPath
        .snapshots()
        .map(
          (snapshot) => right<String, KtList<StreamingMessage>>(
        snapshot.docs
            .map(
                (doc) => StreamingMessage.fromFirestore(doc).toDomain()
        ).toImmutableList(),
      ),
    ).onErrorReturnWith((error) {
      if (error is FirebaseException && error.message.contains('PERMISSION_DENIED')) {
        return left('Insufficient Permissions');
      } else {
        return left('Unexpected Error');
      }
    });
  }
}