import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:creatispace/domain/following_followers/following_follower/following_follower.dart';
import 'package:creatispace/domain/payment_details/payment_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'payment_details_dto.freezed.dart';
part 'payment_details_dto.g.dart';


@freezed
abstract class PaymentDetailsDto implements _$PaymentDetailsDto {
  const PaymentDetailsDto._();

  const factory PaymentDetailsDto({
    @required String id,
    @required String quantity,
    @required String user_id,
    @required String peer_id,
    @required String item_id,
    @required String peer_username,
    @required String image,
    @required String username,
    @required String receipt_email,
    @required Map<String, dynamic> shipping,
    @required double amount,
    @required String delivery_status
  }) = _PaymentDetailsDto;

  factory PaymentDetailsDto.fromDomain(PaymentDetails paymentDetails) {
    return PaymentDetailsDto(
        id: paymentDetails.id,
        item_id: paymentDetails.itemId,
        peer_id: paymentDetails.peerId,
        peer_username: paymentDetails.peerUsername,
        shipping: paymentDetails.shipping,
        receipt_email: paymentDetails.receiptEmail,
        delivery_status: paymentDetails.deliveryStatus,
        amount: paymentDetails.amount,
        quantity: paymentDetails.quantity,
        username: paymentDetails.username,
        image: paymentDetails.image,
        user_id: paymentDetails.userId
    );
  }

  PaymentDetails toDomain() {
    return PaymentDetails(
        id: id,
        amount: amount,
        peerId: peer_id,
        itemId: item_id,
        peerUsername: peer_username,
        quantity: quantity,
        username: username,
        image: image,
        userId: user_id,
        deliveryStatus: delivery_status,
        receiptEmail: receipt_email,
        shipping: shipping
    );
  }

  factory PaymentDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$PaymentDetailsDtoFromJson(json);

  factory PaymentDetailsDto.fromFirestore(DocumentSnapshot doc) =>
      PaymentDetailsDto.fromJson(doc.data()).copyWith(id: doc.id);
}
