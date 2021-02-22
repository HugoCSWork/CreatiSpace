import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:creatispace/domain/payment_setup/i_payment_setup_facade.dart';
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
      // final userDoc = await _firebaseFirestore.userDocument();
      //
      // // // upload images to firebase
      // // final uploadedPassport = await _firebaseStorage.uploadPaymentImage(
      // //     paymentItemSetup.passportUrlImage.getOrCrash(),
      // //     paymentItemSetup.passportNameImage.getOrCrash(),
      // //     userDoc.id,
      // //     'passport');
      // // final uploadedDocument = await _firebaseStorage.uploadPaymentImage(
      // //     paymentItemSetup.documentUrlImage.getOrCrash(),
      // //     paymentItemSetup.documentNameImage.getOrCrash(),
      // //     userDoc.id,
      // //     'document');
      // modify image URLs
      final passportFile = Io.File(paymentItemSetup.passportUrlImage.getOrCrash());
      final String passportBytes = base64Encode(passportFile.readAsBytesSync());
      final documentFile = Io.File(paymentItemSetup.passportUrlImage.getOrCrash());
      final String documentBytes = base64Encode(documentFile.readAsBytesSync());

      final paymentDto = PaymentSetupDto.fromDomain(
          paymentItemSetup, passportBytes, documentBytes);
      final jsonData = await paymentDto.toJson();

      jsonData["termsAndService"] = jsonData["termsAndService"].toString();
      // send data to API
      var url = 'http://10.0.2.2:3000/v1/payment/create-account';

      var response = await http.post(url, body: jsonData);
      print(response);
      return Right(unit);
    } catch (e) {
      return Left(PaymentSetupErrorFailure.cancelledByUser());
    }
  }
}
