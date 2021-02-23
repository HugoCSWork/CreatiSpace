import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:creatispace/domain/payment_form/payment_form/payment_form.dart';
import 'package:creatispace/domain/payment_form/payment_form_errors/payment_form_errors.dart';
import 'package:creatispace/domain/payment_form/payment_form_validation_errors/payment_form_value_failures.dart';
import 'package:creatispace/domain/payment_form/value_objects.dart';
import 'package:creatispace/domain/payment_setup/i_payment_setup_facade.dart';
import 'package:creatispace/domain/payment_setup/payment_setup_error/payment_setup_error.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stripe_sdk/stripe_sdk_ui.dart';

part 'payment_form_event.dart';
part 'payment_form_state.dart';
part 'payment_form_bloc.freezed.dart';

@injectable
class PaymentFormBloc extends Bloc<PaymentFormEvent, PaymentFormState> {
  final IPaymentSetupFacade _iPaymentSetupFacade;

  PaymentFormBloc(this._iPaymentSetupFacade) : super(PaymentFormState.initial());

  @override
  Stream<PaymentFormState> mapEventToState(
    PaymentFormEvent event,
  ) async* {
    yield* event.map(
        started: (e) async* {
          yield state;
        },
        // cardNumberChanged: (e) async* {
        //   yield state.copyWith(
        //     paymentForm: state.paymentForm.copyWith(paymentNumber: PaymentNumber(e.cardNumber)),
        //     saveFailureOrSuccessOption: none(),
        //   );
        // },
        // cardCVCChanged:  (e) async* {
        //   yield state.copyWith(
        //     paymentForm: state.paymentForm.copyWith(paymentCVC: PaymentCVC(e.cardCVC)),
        //     saveFailureOrSuccessOption: none(),
        //   );
        // },
        // cardDateChanged:  (e) async* {
        //   yield state.copyWith(
        //     paymentForm: state.paymentForm.copyWith(paymentDate: PaymentDate(e.cardDate)),
        //     saveFailureOrSuccessOption: none(),
        //   );
        // },
        saved:  (e) async* {
          Either<PaymentFormErrors, Unit> failureOrSuccess;
          // yield state.copyWith(
          //   isSaving: true,
          //   saveFailureOrSuccessOption: none(),
          // );

          failureOrSuccess = await _iPaymentSetupFacade.createPayment(e.card);

          // yield state.copyWith(
          //   isSaving: false,
          //   saveFailureOrSuccessOption: optionOf(failureOrSuccess),
          // );

        },
    );
  }
}
