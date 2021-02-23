import 'package:creatispace/domain/payment_form/payment_form/payment_form.dart';
import 'package:creatispace/domain/payment_form/payment_form_errors/payment_form_errors.dart';
import 'package:creatispace/domain/payment_setup/payment_setup_error/payment_setup_error.dart';
import 'package:creatispace/domain/payment_setup/payment_setup_model/payment_setup.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';
import 'package:stripe_sdk/stripe_sdk_ui.dart';

abstract class IPaymentSetupFacade {
  Future<Either<PaymentSetupErrorFailure, Unit>> createPaymentUser(PaymentItemSetup paymentItemSetup);
  Future<Either<PaymentFormErrors, Unit>> createPayment(StripeCard stripeCard);
}
