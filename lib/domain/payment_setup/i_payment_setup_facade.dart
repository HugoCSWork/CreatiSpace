import 'package:creatispace/domain/items/item/item.dart';
import 'package:creatispace/domain/items/item_error/item_error_failures.dart';
import 'package:creatispace/domain/payment_form/payment_form/payment_form.dart';
import 'package:creatispace/domain/payment_form/payment_form_errors/payment_form_errors.dart';
import 'package:creatispace/domain/payment_setup/payment_setup_error/payment_setup_error.dart';
import 'package:creatispace/domain/payment_setup/payment_setup_model/payment_setup.dart';
import 'package:creatispace/infrastructure/items/item_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:stripe_sdk/stripe_sdk_ui.dart';

abstract class IPaymentSetupFacade {
  Future<Either<PaymentSetupErrorFailure, Unit>> createPaymentUser(PaymentItemSetup paymentItemSetup);
  Future<Either<PaymentFormErrors, Map<String, dynamic>>> createPayment(StripeCard stripeCard, String peerId, String amount, String itemId, PaymentFormSetup paymentFormSetup);
  Future<Either<PaymentFormErrors, Map<String, dynamic>>> createPaymentWorkshop(StripeCard stripeCard, String peerId, String workshopId, PaymentFormSetup paymentFormSetup);
  Future<Either<ItemErrorFailure, ItemDto>> getPurchasedItem(String id, String peerId);
}
