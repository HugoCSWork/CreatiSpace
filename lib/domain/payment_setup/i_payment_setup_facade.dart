import 'package:creatispace/domain/payment_setup/payment_setup_error/payment_setup_error.dart';
import 'package:creatispace/domain/payment_setup/payment_setup_model/payment_setup.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

abstract class IPaymentSetupFacade {
  Future<Either<PaymentSetupErrorFailure, Unit>> createPaymentUser(PaymentItemSetup paymentItemSetup);
}
