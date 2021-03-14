import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:creatispace/domain/items/item_error/item_error_failures.dart';
import 'package:creatispace/domain/payment_setup/i_payment_setup_facade.dart';
import 'package:creatispace/infrastructure/items/item_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'payment_confirmation_bloc.freezed.dart';
part 'payment_confirmation_event.dart';
part 'payment_confirmation_state.dart';

@injectable
class PaymentConfirmationBloc extends Bloc<PaymentConfirmationEvent, PaymentConfirmationState> {
  final IPaymentSetupFacade _iPaymentSetupFacade;

  PaymentConfirmationBloc(this._iPaymentSetupFacade)
      : super(const PaymentConfirmationState.initial());

  @override
  Stream<PaymentConfirmationState> mapEventToState(
    PaymentConfirmationEvent event,
  ) async* {
    yield* event.map(
        getPaymentItemStarted: (e) async* {
          yield const PaymentConfirmationState.loadInProgress();
          var item = await _iPaymentSetupFacade.getPurchasedItem(e.id, e.peerId);
          add(PaymentConfirmationEvent.paymentItemReceived(item));
        },
        paymentItemReceived: (e) async* {
          yield e.failureOrItem.fold(
                (f) => PaymentConfirmationState.loadFailure(f),
                (item) => PaymentConfirmationState.loadSuccess(item),
          );
        },
    );
  }
}
