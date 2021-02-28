import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:creatispace/domain/items/item_error/item_error_failures.dart';
import 'package:creatispace/domain/payment_details/i_payment_details_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'payment_details_form_event.dart';
part 'payment_details_form_state.dart';
part 'payment_details_form_bloc.freezed.dart';

@injectable
class PaymentDetailsFormBloc extends Bloc<PaymentDetailsFormEvent, PaymentDetailsFormState> {

  final IPaymentDetailsFacade _iPaymentDetailsFacade;

  PaymentDetailsFormBloc(this._iPaymentDetailsFacade)
      : super(PaymentDetailsFormState.initial());

  @override
  Stream<PaymentDetailsFormState> mapEventToState(
    PaymentDetailsFormEvent event,
  ) async* {
    yield* event.map(
        updateOrderStatus: (e) async* {
          yield PaymentDetailsFormState.updateInProgress();
          var item = await _iPaymentDetailsFacade.updateOrderStatus(e.status, e.paymentId, e.userId, e.isSeller);
          add(PaymentDetailsFormEvent.updateOrderResponse(item));
        },
        updateOrderResponse:  (e) async* {
          yield e.failureOrItem.fold(
                (f) => PaymentDetailsFormState.updateFailed(),
                (item) => PaymentDetailsFormState.updateSuccess(),
          );
        },
    );
  }
}
