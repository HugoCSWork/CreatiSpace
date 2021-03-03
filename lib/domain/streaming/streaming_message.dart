import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'streaming_message.freezed.dart';
part 'streaming_message.g.dart';

@freezed
abstract class StreamingMessage implements _$StreamingMessage {
  const factory StreamingMessage({
    @required String username,
    @required String image,
    @required String message,
  }) = _StreamingMessage;

  const StreamingMessage._();

  factory StreamingMessage.fromJson(Map<String, dynamic> json) =>
      _$StreamingMessageFromJson(json);

  StreamingMessage toDomain() {
    return StreamingMessage(
        username: username,
        image: image,
        message: message
    );
  }

  factory StreamingMessage.fromFirestore(DocumentSnapshot doc) =>
      StreamingMessage.fromJson(doc.data());
}