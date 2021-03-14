

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:stripe_sdk/stripe_sdk.dart';
import 'package:stripe_sdk/stripe_sdk_ui.dart';


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


Future<Map<String, dynamic>> createPaymentIntent(StripeCard stripeCard,
    String customerEmail, Stripe stripe, String merchant, String peerId,
    String amount, String itemId) async{
  String clientSecret;
  Map<String, dynamic> paymentIntentRes, paymentMethod;
  try{
    paymentMethod = await stripe.api.createPaymentMethodFromCard(stripeCard);
    clientSecret = await postCreatePaymentIntent(customerEmail, paymentMethod['id'] as String, merchant, peerId, amount, itemId);
    paymentIntentRes = await stripe.api.retrievePaymentIntent(clientSecret);
  }catch(e){
    print("ERROR_CreatePaymentIntentAndSubmit: $e");
  }
  return paymentIntentRes;
}


Future<String> postCreatePaymentIntent(String email, String paymentMethodId, String merchant, String peerId, String amount, String itemId) async{
  // todo post the merchent account id, retrieve from firebase
  String clientSecret;
  Map<String, String> customHeaders = {
    "content-type": "application/json"
  };
  var bodyData =  jsonEncode(<String, String>{
    'email': email,
    'payment_method_id' : paymentMethodId,
    'merchant': merchant,
    'peer_id' : peerId,
    'amount' : amount,
    'item_id': itemId
  });
  var response = await http.post('https://creatispacemobile.azurewebsites.net/v1/payment/make-payment', headers: customHeaders, body: bodyData);

  clientSecret = response.body;
  return clientSecret;
}

Future<Map<String, dynamic>> createPaymentIntentWorkshop(StripeCard stripeCard,
    String customerEmail, Stripe stripe, String merchant, String peerId,
    String amount, String itemId) async{
  String clientSecret;
  Map<String, dynamic> paymentIntentRes, paymentMethod;
  try{
    paymentMethod = await stripe.api.createPaymentMethodFromCard(stripeCard);
    clientSecret = await postCreatePaymentIntentWorkshop(customerEmail, paymentMethod['id'] as String, merchant, peerId, amount, itemId);
    paymentIntentRes = await stripe.api.retrievePaymentIntent(clientSecret);
  }catch(e){
    print("ERROR_CreatePaymentIntentAndSubmit: $e");
  }
  return paymentIntentRes;
}

Future<String> postCreatePaymentIntentWorkshop(String email, String paymentMethodId, String merchant, String peerId, String amount, String itemId) async{
  String clientSecret;
  Map<String, String> customHeaders = {
    "content-type": "application/json"
  };
  var bodyData =  jsonEncode(<String, String>{
    'email': email,
    'payment_method_id' : paymentMethodId,
    'merchant': merchant,
    'peer_id' : peerId,
    'amount' : amount,
    'item_id': itemId
  });
  var response = await http.post('https://creatispacemobile.azurewebsites.net/v1/payment/make-payment-workshop', headers: customHeaders, body: bodyData);

  clientSecret = response.body;
  return clientSecret;
}

