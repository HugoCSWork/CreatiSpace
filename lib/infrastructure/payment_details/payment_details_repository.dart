import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:creatispace/domain/items/item_error/item_error_failures.dart';
import 'package:creatispace/domain/payment_details/i_payment_details_facade.dart';
import 'package:creatispace/domain/payment_details/payment_details.dart';
import 'package:creatispace/domain/payment_details/payment_details_error/payment_details_error.dart';
import 'package:creatispace/domain/workshop/workshop_payment.dart';
import 'package:creatispace/infrastructure/core/firestore_helpers.dart';
import 'package:creatispace/infrastructure/items/item_dtos.dart';
import 'package:creatispace/infrastructure/payment_details/payment_details_dto.dart';
import 'package:creatispace/infrastructure/payment_details/workshop_payment_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/src/collection/kt_list.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kt_dart/collection.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IPaymentDetailsFacade)
class PaymentDetailsRepository implements IPaymentDetailsFacade {
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseAuth _firebaseAuth;

  PaymentDetailsRepository(this._firebaseFirestore, this._firebaseAuth);

  @override
  Stream<Either<PaymentDetailsErrorFailure, KtList<PaymentDetails>>>
      retrievePaymentReceivingDetails() async* {
    var userDoc = await _firebaseFirestore.userDocument();

    yield* userDoc.paymentReceivingOrders
        .snapshots()
        .map(
          (snapshot) =>
              right<PaymentDetailsErrorFailure, KtList<PaymentDetails>>(
            snapshot.docs.map((doc) {
              PaymentDetails dto =
                  PaymentDetailsDto.fromFirestore(doc).toDomain();
              return dto;
            }).toImmutableList(),
          ),
        )
        .onErrorReturnWith((error) {
      if (error is FirebaseException &&
          error.message.contains('PERMISSION_DENIED')) {
        return left(const PaymentDetailsErrorFailure.insufficientPermissions());
      } else {
        return left(const PaymentDetailsErrorFailure.unexpected());
      }
    });
  }

  @override
  Stream<Either<PaymentDetailsErrorFailure, KtList<PaymentDetails>>>
      retrievePaymentSendingDetails() async* {
    var userDoc = await _firebaseFirestore.userDocument();
    yield* userDoc.paymentSendingOrders
        .snapshots()
        .map(
          (snapshot) =>
              right<PaymentDetailsErrorFailure, KtList<PaymentDetails>>(
            snapshot.docs.map((doc) {
              PaymentDetails dto =
                  PaymentDetailsDto.fromFirestore(doc).toDomain();
              return dto;
            }).toImmutableList(),
          ),
        )
        .onErrorReturnWith((error) {
      if (error is FirebaseException &&
          error.message.contains('PERMISSION_DENIED')) {
        return left(const PaymentDetailsErrorFailure.insufficientPermissions());
      } else {
        return left(const PaymentDetailsErrorFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<ItemErrorFailure, ItemDto>> retrievePaymentItem(
      String userId, String itemId) async {
    try {
      var userDoc = await _firebaseFirestore.peerDocument(userId);
      var userItem = await userDoc.itemCollection.doc(itemId).get();
      var userData = userItem.data();
      ItemDto item = ItemDto.fromJson(userData);
      return Right(item);
    } catch (e) {
      return Left(ItemErrorFailure.unexpected());
    }
  }

  @override
  Future<Either<ItemErrorFailure, Unit>> updateOrderStatus(String status, String paymentId, String userId, bool isSeller) async {
    try {
      var userDoc = await _firebaseFirestore.userDocument();
      var peerDoc = await _firebaseFirestore.peerDocument(userId);
      await userDoc.paymentSendingOrders.doc(paymentId).update({"delivery_status" : status});
      await peerDoc.paymentReceivingOrders.doc(paymentId).update({"delivery_status" : status});
      return Right(unit);
    } catch (e) {
      return Left(ItemErrorFailure.unexpected());
    }
  }

  @override
  Stream<Either<PaymentDetailsErrorFailure, KtList<WorkshopPayment>>> retrieveWorkshopPaymentDetails() async* {
    var userDoc = await _firebaseFirestore.userDocument();
    yield* userDoc.workshopAttendingCollection
        .snapshots()
        .map(
          (snapshot) =>
          right<PaymentDetailsErrorFailure, KtList<WorkshopPayment>>(
            snapshot.docs.map((doc) {
              WorkshopPayment dto = WorkshopPaymentDto.fromFirestore(doc).toDomain();
              return dto;
            }).toImmutableList(),
          ),
    )
        .onErrorReturnWith((error) {
      if (error is FirebaseException &&
          error.message.contains('PERMISSION_DENIED')) {
        return left(const PaymentDetailsErrorFailure.insufficientPermissions());
      } else {
        return left(const PaymentDetailsErrorFailure.unexpected());
      }
    });
  }
}
