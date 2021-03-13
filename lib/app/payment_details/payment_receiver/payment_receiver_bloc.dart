import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:creatispace/domain/payment_details/i_payment_details_facade.dart';
import 'package:creatispace/domain/payment_details/payment_details.dart';
import 'package:creatispace/domain/payment_details/payment_details_error/payment_details_error.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'payment_receiver_bloc.freezed.dart';
part 'payment_receiver_event.dart';
part 'payment_receiver_state.dart';

@injectable
class PaymentReceiverBloc extends Bloc<PaymentReceiverEvent, PaymentReceiverState> {

  final IPaymentDetailsFacade _iPaymentDetailsFacade;
  StreamSubscription<Either<PaymentDetailsErrorFailure, KtList<PaymentDetails>>>
    _paymentReceiverDetailsStreamSubscription;

  PaymentReceiverBloc(this._iPaymentDetailsFacade)
      : super(PaymentReceiverState.initial());

  @override
  Stream<PaymentReceiverState> mapEventToState(
    PaymentReceiverEvent event,
  ) async* {
    yield* event.map(
        watchAllPaymentReceiverList:  (e) async* {
          yield const PaymentReceiverState.loadInProgress();
          await _paymentReceiverDetailsStreamSubscription?.cancel();
          _paymentReceiverDetailsStreamSubscription =
              _iPaymentDetailsFacade.retrievePaymentReceivingDetails().listen(
                    (failureOrItems) =>
                    add(PaymentReceiverEvent.paymentReceiversListReceived(failureOrItems)),
              );
        },
        paymentReceiversListReceived: (e) async* {
          yield e.failureOrMessages.fold(
                (f) => PaymentReceiverState.loadFailure(f),
                (details) => PaymentReceiverState.loadSuccess(details),
          );
        },
    );
  }
}
