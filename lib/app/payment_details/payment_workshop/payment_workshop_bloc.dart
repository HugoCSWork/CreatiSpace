import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:creatispace/domain/payment_details/i_payment_details_facade.dart';
import 'package:creatispace/domain/payment_details/payment_details_error/payment_details_error.dart';
import 'package:creatispace/domain/workshop/workshop_payment.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'payment_workshop_bloc.freezed.dart';
part 'payment_workshop_event.dart';
part 'payment_workshop_state.dart';

@injectable
class PaymentWorkshopBloc extends Bloc<PaymentWorkshopEvent, PaymentWorkshopState> {
  final IPaymentDetailsFacade _iPaymentDetailsFacade;

  PaymentWorkshopBloc(this._iPaymentDetailsFacade)
      : super(PaymentWorkshopState.initial());

  StreamSubscription<Either<PaymentDetailsErrorFailure, KtList<WorkshopPayment>>>
  _paymentSenderDetailsStreamSubscription;

  @override
  Stream<PaymentWorkshopState> mapEventToState(
    PaymentWorkshopEvent event,
  ) async* {
    yield* event.map(
        watchAlWorkshopList:(e) async* {
          yield const PaymentWorkshopState.loadInProgress();
          await _paymentSenderDetailsStreamSubscription?.cancel();
          _paymentSenderDetailsStreamSubscription =
              _iPaymentDetailsFacade.retrieveWorkshopPaymentDetails().listen(
                    (failureOrItems) =>
                    add(PaymentWorkshopEvent.workshopListReceived(failureOrItems)),
              );
        },
        workshopListReceived: (e) async* {
          yield e.failureOrMessages.fold(
                (f) => PaymentWorkshopState.loadFailure(f),
                (details) => PaymentWorkshopState.loadSuccess(details),
          );
        },
    );
  }
}
