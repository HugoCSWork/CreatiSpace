import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:creatispace/domain/items/item_error/item_error_failures.dart';
import 'package:creatispace/domain/payment_details/i_payment_details_facade.dart';
import 'package:creatispace/infrastructure/items/item_dtos.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'payment_item_details_bloc.freezed.dart';
part 'payment_item_details_event.dart';
part 'payment_item_details_state.dart';

@injectable
class PaymentItemDetailsBloc
    extends Bloc<PaymentItemDetailsEvent, PaymentItemDetailsState> {
  final IPaymentDetailsFacade _iPaymentDetailsFacade;

  PaymentItemDetailsBloc(this._iPaymentDetailsFacade)
      : super(const PaymentItemDetailsState.initial());

  @override
  Stream<PaymentItemDetailsState> mapEventToState(
    PaymentItemDetailsEvent event,
  ) async* {
    yield* event.map(
      getPaymentItemStarted: (e) async* {
        yield const PaymentItemDetailsState.loadInProgress();
        var item = await _iPaymentDetailsFacade.retrievePaymentItem(
            e.userId, e.itemId);
        add(PaymentItemDetailsEvent.paymentItemReceived(item));
      },
      paymentItemReceived: (e) async* {
        yield e.failureOrItem.fold(
          (f) => PaymentItemDetailsState.loadFailure(f),
          (item) => PaymentItemDetailsState.loadSuccess(item),
        );
      },
    );
  }
}
