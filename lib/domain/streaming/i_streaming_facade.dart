import 'package:creatispace/domain/streaming/streaming_message.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

abstract class IStreamingFacade {
  Future<Either<String, String>> startStream(String workshopId);
  Future<Either<String, String>> joinStream(String workshopId);
  Future<Either<String, Unit>> endStream(String workshopId);
  Stream<Either<String, KtList<StreamingMessage>>> watchAllMessaging(String hostId, String workshopId);
  Future<Either<String, Unit>> addMessage(String message, String id, String workshopId);
}