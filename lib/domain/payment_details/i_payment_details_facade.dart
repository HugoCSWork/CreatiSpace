import 'package:creatispace/domain/items/item_error/item_error_failures.dart';
import 'package:creatispace/domain/payment_details/payment_details.dart';
import 'package:creatispace/domain/payment_details/payment_details_error/payment_details_error.dart';
import 'package:creatispace/infrastructure/items/item_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

abstract class IPaymentDetailsFacade {
  Stream<Either<PaymentDetailsErrorFailure, KtList<PaymentDetails>>>
      retrievePaymentSendingDetails();
  Stream<Either<PaymentDetailsErrorFailure, KtList<PaymentDetails>>>
      retrievePaymentReceivingDetails();
  Future<Either<ItemErrorFailure, ItemDto>> retrievePaymentItem(
      String peerId, String itemId);
  Future<Either<ItemErrorFailure, Unit>> updateOrderStatus(String status, String paymentId, String userId,  bool isSeller);
}
