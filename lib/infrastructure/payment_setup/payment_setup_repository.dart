import 'dart:convert';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:creatispace/domain/items/item/item.dart';
import 'package:creatispace/domain/items/item_error/item_error_failures.dart';
import 'package:creatispace/domain/payment_form/payment_form/payment_form.dart';
import 'package:creatispace/domain/payment_form/payment_form_errors/payment_form_errors.dart';
import 'package:creatispace/domain/payment_setup/i_payment_setup_facade.dart';
import 'package:creatispace/domain/payment_setup/payment_response/payment_response.dart';
import 'package:creatispace/domain/payment_setup/payment_setup_error/payment_setup_error.dart';
import 'package:creatispace/domain/payment_setup/payment_setup_model/payment_setup.dart';
import 'package:creatispace/domain/workshop/workshop.dart';
import 'package:creatispace/domain/workshop/workshop_payment.dart';
import 'package:creatispace/infrastructure/items/item_dtos.dart';
import 'package:creatispace/infrastructure/payment_setup/payment_setup_dto.dart';
import 'package:creatispace/infrastructure/core/firestore_helpers.dart';
import 'package:creatispace/infrastructure/core/firebase_storage_helpers.dart';
import 'package:creatispace/infrastructure/payment_setup/payment_setup_helpers.dart';
import 'package:creatispace/infrastructure/workshop/workshop_dto.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'dart:io' as Io;
import 'package:stripe_sdk/stripe_sdk.dart';
import 'package:stripe_sdk/stripe_sdk_ui.dart';
import 'package:wifi/wifi.dart';

@LazySingleton(as: IPaymentSetupFacade)
class PaymentSetupRepository implements IPaymentSetupFacade {
  final FirebaseFirestore _firebaseFirestore;
  final FirebaseStorage _firebaseStorage;
  final FirebaseAuth _firebaseAuth;

  PaymentSetupRepository(
      this._firebaseFirestore, this._firebaseStorage, this._firebaseAuth);

  @override
  Future<Either<PaymentSetupErrorFailure, Unit>> createPaymentUser(
      PaymentItemSetup paymentItemSetup) async {
    try {
      final userDoc = await _firebaseFirestore.userDocument();
      final passportFile = Io.File(paymentItemSetup.passportUrlImage.getOrCrash());
      final String passportBytes = base64Encode(passportFile.readAsBytesSync());
      final documentFile = Io.File(paymentItemSetup.passportUrlImage.getOrCrash());
      final String documentBytes = base64Encode(documentFile.readAsBytesSync());

      final paymentDto = PaymentSetupDto.fromDomain(
          paymentItemSetup, passportBytes, documentBytes);
      final jsonData = await paymentDto.toJson();
      jsonData["termsAndService"] = jsonData["termsAndService"].toString();
      jsonData["ip"] = await Wifi.ip;
      var url = 'https://creatispacemobile.azurewebsites.net/v1/payment/create-account';

      var response = await http.post(url, body: jsonData);
      if(response.statusCode != HttpStatus.created) {
        return Left(PaymentSetupErrorFailure.cancelledByUser());
      }
      var jsonDecodeData = jsonDecode(response.body) as Map<String, dynamic>;
      var responseData = PaymentResponse.fromJson(jsonDecodeData);

      await userDoc.paymentCollection.doc('accounts').set(responseData.toJson());
      await userDoc.update({"paymentVerified" : true});
      return Right(unit);
    } catch (e) {
      return Left(PaymentSetupErrorFailure.cancelledByUser());
    }
  }

  @override
  Future<Either<PaymentFormErrors, Map<String, dynamic>>> createPayment(StripeCard card,
      String peerId, String amount, String itemId, PaymentFormSetup paymentFormSetup) async {
    try {
      final peerDoc = await _firebaseFirestore.peerDocument(peerId);
      final userDoc = await _firebaseFirestore.userDocument();
      final paymentDoc = peerDoc.paymentCollection.doc("accounts");
      var paymentData = (await paymentDoc.get()).data();
      var accountId = paymentData["account_id"] as String;
      final Stripe stripe = Stripe(
        "pk_test_51HeGE8CySRExChgokc87eHbqYfFRXZ6ERVo5QkjokzOjCcAeBUoNGHmMJOQHne2qQluAywStyOKloYAnEL9I8EMw00EcxRCDOk",
        stripeAccount: accountId ,
        returnUrlForSca: "stripesdk://3ds.stripesdk.io", //Return URL for SCA
      );
      Map<String, dynamic> paymentIntentRes = await createPaymentIntent(
          card, _firebaseAuth.currentUser.email, stripe, accountId, peerId, amount, itemId);
      String clientSecret = paymentIntentRes['client_secret'] as String;
      String paymentMethodId = paymentIntentRes['payment_method'] as String;
      String status = paymentIntentRes['status'] as String;

      if(status == 'requires_action')
        paymentIntentRes = await confirmPayment3DSecure(clientSecret, paymentMethodId, stripe);

      // Return left Cancelled
      if(paymentIntentRes['status'] != 'succeeded'){
        return Left(PaymentFormErrors.cancelled());
      }

      if(paymentIntentRes['status'] == 'succeeded'){
        final timestamp = DateTime.now().millisecondsSinceEpoch.toString();

        var itemDocument = await peerDoc.itemCollection.doc(itemId);
        var userItem = await itemDocument.get();
        var userData = userItem.data();

        var userDocument = await userDoc.get();
        var userProfileData = userDocument.data();
        // update for seller
        var updatedQuantity = (userData["quantity"] as int) - int.parse(amount);
        await itemDocument.update({
          "quantity": updatedQuantity,
        });
        // update for all users
        var data = await peerDoc.collection('followers').get();
        var dataFromFirebase = await data.docs.map((e) => e.id);

        var batch = _firebaseFirestore.batch();
        await dataFromFirebase.forEach((element) {
          var docRef = _firebaseFirestore
              .collection('users')
              .doc(element.toString())
              .collection('home')
              .doc(userData["timestamp"] as String);
          batch.update(docRef, {"quantity" : updatedQuantity});
        });

        await batch.commit();

        paymentIntentRes["shipping"] = {
          "line_1": paymentFormSetup.line1.getOrCrash(),
          "line_2": paymentFormSetup.line2.getOrCrash(),
          "postcode": paymentFormSetup.postcode.getOrCrash(),
          "house_number": paymentFormSetup.houseNumber.getOrCrash(),
          "city": paymentFormSetup.city.getOrCrash(),
          "country": paymentFormSetup.country.getOrCrash(),
          "county": paymentFormSetup.county.getOrCrash(),
        };
        paymentIntentRes["delivery_status"] = "Placed";
        paymentIntentRes["quantity"] = amount;
        paymentIntentRes["item_id"] = itemId;
        paymentIntentRes["timestamp"] = timestamp;
        paymentIntentRes["image"] = userData["images"][0]["url"];
        paymentIntentRes["username"] = userData["username"];
        paymentIntentRes["user_id"] = userData["id"];
        paymentIntentRes["peer_username"] = userProfileData["username"];
        paymentIntentRes["peer_id"] = userDoc.id;

        await userDoc.paymentReceivingOrders.doc(paymentIntentRes["id"] as String).set(paymentIntentRes);
        await peerDoc.paymentSendingOrders.doc(paymentIntentRes["id"] as String).set(paymentIntentRes);
        return Right(paymentIntentRes);
      }
    } catch(e) {
      return Left(PaymentFormErrors.errorMakingPayment());
    }
    return Left(PaymentFormErrors.errorMakingPayment());
  }

  @override
  Future<Either<ItemErrorFailure, ItemDto>> getPurchasedItem(String id, String peerId) async {
    try {
      var userDoc = await _firebaseFirestore.peerDocument(peerId);
      var userItem = await userDoc.itemCollection.doc(id).get();
      var userData = userItem.data();
      ItemDto item = ItemDto.fromJson(userData);
      return Right(item);
    } catch(e) {
      return Left(ItemErrorFailure.unexpected());
    }

  }

  @override
  Future<Either<PaymentFormErrors, Map<String, dynamic>>> createPaymentWorkshop(StripeCard stripeCard, String peerId, String workshopId, PaymentFormSetup paymentFormSetup) async {
    try {
      final peerDoc = await _firebaseFirestore.peerDocument(peerId);
      final userDoc = await _firebaseFirestore.userDocument();
      final paymentDoc = peerDoc.paymentCollection.doc("accounts");
      var paymentData = (await paymentDoc.get()).data();
      var accountId = paymentData["account_id"] as String;
      final Stripe stripe = Stripe(
        "pk_test_51HeGE8CySRExChgokc87eHbqYfFRXZ6ERVo5QkjokzOjCcAeBUoNGHmMJOQHne2qQluAywStyOKloYAnEL9I8EMw00EcxRCDOk",
        stripeAccount: accountId ,
        returnUrlForSca: "stripesdk://3ds.stripesdk.io", //Return URL for SCA
      );
      Map<String, dynamic> paymentIntentRes = await createPaymentIntentWorkshop(
          stripeCard, _firebaseAuth.currentUser.email, stripe, accountId, peerId, "1", workshopId);
      String clientSecret = paymentIntentRes['client_secret'] as String;
      String paymentMethodId = paymentIntentRes['payment_method'] as String;
      String status = paymentIntentRes['status'] as String;

      if(status == 'requires_action')
        paymentIntentRes = await confirmPayment3DSecure(clientSecret, paymentMethodId, stripe);

      // Return left Cancelled
      if(paymentIntentRes['status'] != 'succeeded'){
        return Left(PaymentFormErrors.cancelled());
      }

      if(paymentIntentRes['status'] == 'succeeded'){
        final timestamp = DateTime.now().millisecondsSinceEpoch.toString();

        var itemDocument = await peerDoc.workshopCollection.doc(workshopId);
        var userItem = await itemDocument.get();
        var userData = userItem.data();

        var userDocument = await userDoc.get();
        var userProfileData = userDocument.data();

        paymentIntentRes["shipping"] = {
          "line_1": paymentFormSetup.line1.getOrCrash(),
          "line_2": paymentFormSetup.line2.getOrCrash(),
          "postcode": paymentFormSetup.postcode.getOrCrash(),
          "house_number": paymentFormSetup.houseNumber.getOrCrash(),
          "city": paymentFormSetup.city.getOrCrash(),
          "country": paymentFormSetup.country.getOrCrash(),
          "county": paymentFormSetup.county.getOrCrash(),
        };

        paymentIntentRes["workshop_id"] = workshopId;
        paymentIntentRes["timestamp"] = timestamp;
        paymentIntentRes["username"] = userData["username"];
        paymentIntentRes["user_id"] = userData["userId"];
        paymentIntentRes["peer_username"] = userProfileData["username"];
        paymentIntentRes["peer_id"] = userDoc.id;
        await peerDoc.workshopCollection.doc(workshopId).update({
          'attendees' : FieldValue.arrayUnion([userData["username"]])
        });

        WorkshopPayment workshopPayment = new WorkshopPayment(
            workshop: userData,
            paymentIntentRes: paymentIntentRes,
            hasStarted: "pending"
        );
        await userDoc.workshopAttendingCollection.doc(workshopId).set(workshopPayment.toJson());
        // await userDoc.paymentReceivingOrders.doc(paymentIntentRes["id"] as String).set(paymentIntentRes);
        // await peerDoc.paymentSendingOrders.doc(paymentIntentRes["id"] as String).set(paymentIntentRes);
        return Right(paymentIntentRes);
      }
    } catch(e) {
      return Left(PaymentFormErrors.errorMakingPayment());
    }
    return Left(PaymentFormErrors.errorMakingPayment());
  }
}
