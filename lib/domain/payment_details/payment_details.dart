import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_details.freezed.dart';

@freezed
abstract class PaymentDetails implements _$PaymentDetails {
  const factory PaymentDetails({
    @required String id,
    @required String userId,
    @required String username,
    @required String image,
    @required String quantity,
    @required String receiptEmail,
    @required String peerId,
    @required String itemId,
    @required String peerUsername,
    @required Map<String, dynamic> shipping,
    @required double amount,
    @required String deliveryStatus
  }) = _PaymentDetails;

  const PaymentDetails._();

  factory PaymentDetails.empty() => PaymentDetails(
      id: '',
      peerId: '',
      peerUsername: '',
      quantity: '',
      amount: 0,
      deliveryStatus: '',
      itemId: '',
      receiptEmail: '',
      image: '',
      username: '',
      userId: '',
      shipping: {}
  );
}
