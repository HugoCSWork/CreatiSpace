import 'dart:convert';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:creatispace/domain/payment_form/payment_form/payment_form.dart';
import 'package:creatispace/domain/payment_form/payment_form_errors/payment_form_errors.dart';
import 'package:creatispace/domain/payment_setup/i_payment_setup_facade.dart';
import 'package:creatispace/domain/payment_setup/payment_response/payment_response.dart';
import 'package:creatispace/domain/payment_setup/payment_setup_error/payment_setup_error.dart';
import 'package:creatispace/domain/payment_setup/payment_setup_model/payment_setup.dart';
import 'package:creatispace/infrastructure/payment_setup/payment_setup_dto.dart';
import 'package:creatispace/infrastructure/core/firestore_helpers.dart';
import 'package:creatispace/infrastructure/core/firebase_storage_helpers.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'dart:io' as Io;

import 'package:stripe_sdk/stripe_sdk.dart';
import 'package:stripe_sdk/stripe_sdk_ui.dart';

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

      var url = 'http://10.0.2.2:3000/v1/payment/create-account';

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
  Future<Either<PaymentFormErrors, Unit>> createPayment(StripeCard card) async {
      //todo get merchant id from firebase
      final Stripe stripe = Stripe(
        "pk_test_51HeGE8CySRExChgokc87eHbqYfFRXZ6ERVo5QkjokzOjCcAeBUoNGHmMJOQHne2qQluAywStyOKloYAnEL9I8EMw00EcxRCDOk", //Your Publishable Key
        stripeAccount: "acct_1IO0d22QZBHK6moO", //Merchant Connected Account ID. It is the same ID set on server-side.
        returnUrlForSca: "stripesdk://3ds.stripesdk.io", //Return URL for SCA
      );
      // //todo Retrieve customer email from firebase
      Map<String, dynamic> paymentIntentRes = await createPaymentIntent(card, 'hugotomas55@hotmail.com', stripe);
      String clientSecret = paymentIntentRes['client_secret'] as String;
      String paymentMethodId = paymentIntentRes['payment_method'] as String;
      String status = paymentIntentRes['status'] as String;

      if(status == 'requires_action') //3D secure is enable in this card
        paymentIntentRes = await confirmPayment3DSecure(clientSecret, paymentMethodId, stripe);

      // Return left Cancelled
      if(paymentIntentRes['status'] != 'succeeded'){
        return Left(PaymentFormErrors.cancelled());
      }
      // return right
      if(paymentIntentRes['status'] == 'succeeded'){
        return Right(unit);
      }
      return Left(PaymentFormErrors.errorMakingPayment());
  }

  Future<Map<String, dynamic>> confirmPayment3DSecure(String clientSecret, String paymentMethodId, Stripe stripe) async{
    Map<String, dynamic> paymentIntentRes_3dSecure;
    try{
      await stripe.confirmPayment(clientSecret, paymentMethodId: paymentMethodId);
      paymentIntentRes_3dSecure = await stripe.api.retrievePaymentIntent(clientSecret);
    }catch(e){
      print("ERROR_ConfirmPayment3DSecure: $e");
    }
    return paymentIntentRes_3dSecure;
  }


  Future<Map<String, dynamic>> createPaymentIntent(StripeCard stripeCard, String customerEmail, Stripe stripe) async{
    String clientSecret;
    Map<String, dynamic> paymentIntentRes, paymentMethod;
    try{
      paymentMethod = await stripe.api.createPaymentMethodFromCard(stripeCard);
      clientSecret = await postCreatePaymentIntent(customerEmail, paymentMethod['id'] as String);
      paymentIntentRes = await stripe.api.retrievePaymentIntent(clientSecret);
    }catch(e){
      print("ERROR_CreatePaymentIntentAndSubmit: $e");
    }
    return paymentIntentRes;
  }

  Future<String> postCreatePaymentIntent(String email, String paymentMethodId) async{
    // todo post the merchent account id, retrieve from firebase
    String clientSecret;
    Map<String, String> customHeaders = {
    "content-type": "application/json"
    };
    var bodyData =  jsonEncode(<String, String>{
      'email': email,
      'payment_method_id' : paymentMethodId,
      'merchant': "temp"
    });
    var response = await http.post('http://10.0.2.2:3000/v1/payment/make-payment', headers: customHeaders, body: bodyData);

    clientSecret = response.body;
    return clientSecret;
  }



}
