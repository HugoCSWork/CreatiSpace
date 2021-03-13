import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:creatispace/domain/payment_details/i_payment_details_facade.dart';
import 'package:creatispace/domain/payment_details/payment_details.dart';
import 'package:creatispace/domain/payment_details/payment_details_error/payment_details_error.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'payment_sender_bloc.freezed.dart';
part 'payment_sender_event.dart';
part 'payment_sender_state.dart';

@injectable
class PaymentSenderBloc extends Bloc<PaymentSenderEvent, PaymentSenderState> {
  final IPaymentDetailsFacade _iPaymentDetailsFacade;
  StreamSubscription<Either<PaymentDetailsErrorFailure, KtList<PaymentDetails>>>
  _paymentSenderDetailsStreamSubscription;

  PaymentSenderBloc(this._iPaymentDetailsFacade)
      : super(PaymentSenderState.initial());

  @override
  Stream<PaymentSenderState> mapEventToState(
    PaymentSenderEvent event,
  ) async* {
    yield* event.map(
        watchAllPaymentSenderList:(e) async* {
          yield const PaymentSenderState.loadInProgress();
          await _paymentSenderDetailsStreamSubscription?.cancel();
          _paymentSenderDetailsStreamSubscription =
              _iPaymentDetailsFacade.retrievePaymentSendingDetails().listen(
                    (failureOrItems) =>
                    add(PaymentSenderEvent.paymentSendersListReceived(failureOrItems)),
              );
        },
        paymentSendersListReceived: (e) async* {
          yield e.failureOrMessages.fold(
                (f) => PaymentSenderState.loadFailure(f),
                (details) => PaymentSenderState.loadSuccess(details),
          );
        },
    );
  }
}
