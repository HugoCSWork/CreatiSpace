import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:creatispace/domain/payment_form/payment_form/payment_form.dart';
import 'package:creatispace/domain/payment_form/payment_form_errors/payment_form_errors.dart';
import 'package:creatispace/domain/payment_form/payment_form_validation_errors/payment_form_value_failures.dart';
import 'package:creatispace/domain/payment_form/value_objects.dart';
import 'package:creatispace/domain/payment_setup/i_payment_setup_facade.dart';
import 'package:creatispace/domain/payment_setup/payment_setup_error/payment_setup_error.dart';
import 'package:creatispace/domain/payment_setup/value_objects.dart';
import 'package:creatispace/pages/payment_setup/payment_setup_form.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geocoder/model.dart';
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
      stepTapped: (e) async* {
        yield state.copyWith(step: e.step);
      },
      stepCancelled: (e) async* {
        if (state.step - 1 == 1) {
          yield state.copyWith(
            step: state.step - 1 >= 0 ? state.step - 1 : 0,
            addressFailureOrSuccess: none(),
          );
        } else {
          yield state.copyWith(
            step: state.step - 1 >= 0 ? state.step - 1 : 0,
          );
        }
      },
      stepContinue: (e) async* {
        yield state.copyWith(
            addressFailureOrSuccess: none(),
            step: state.step + 1 < state.maxSteps ? state.step + 1 : 0);
      },
      started: (e) async* {
        yield state;
      },
      firstNameChanged: (e) async* {
        yield state.copyWith(
          paymentForm: state.paymentForm.copyWith(firstName: FirstName(e.firstName)),
          personalFailureOrSuccess: none(),
        );
      },
      lastNameChanged: (e) async* {
        yield state.copyWith(
          paymentForm: state.paymentForm.copyWith(lastName: LastName(e.lastName)),
          personalFailureOrSuccess: none(),
        );
      },
      emailChanged: (e) async* {
        yield state.copyWith(
          paymentForm: state.paymentForm.copyWith(email: PaymentEmailAddress(e.email)),
          personalFailureOrSuccess: none(),
        );
      },
      phoneNumberChanged: (e) async* {
        yield state.copyWith(
          paymentForm: state.paymentForm
              .copyWith(phoneNumber: PhoneNumber(e.phoneNumber)),
          personalFailureOrSuccess: none(),
        );
      },
      validatePersonalSection: (e) async* {
        Either<PaymentFormErrors, Unit> failureOrSuccess;

        if (state.paymentForm.email.isValid() &&
            state.paymentForm.phoneNumber.isValid() &&
            state.paymentForm.firstName.isValid()
            && state.paymentForm.lastName.isValid()) {
          failureOrSuccess = right(unit);
        } else {
          // todo configure for correct error location
          failureOrSuccess =
              left(PaymentFormErrors.invalidPersonalInformation());
        }
        yield state.copyWith(
          showErrorMessagesPersonal: AutovalidateMode.always,
          personalFailureOrSuccess: optionOf(failureOrSuccess),
        );
      },
      cityChanged: (e) async* {
        yield state.copyWith(
          paymentForm: state.paymentForm.copyWith(city: City(e.city)),
          addressFailureOrSuccess: none(),
        );
      },
      countryChanged: (e) async* {
        yield state.copyWith(
          paymentForm:
          state.paymentForm.copyWith(country: Country(e.country)),
          addressFailureOrSuccess: none(),
        );
      },
      countyChanged: (e) async* {
        yield state.copyWith(
          paymentForm: state.paymentForm.copyWith(county: County(e.county)),
          addressFailureOrSuccess: none(),
        );
      },
      houseNumberChanged: (e) async* {
        yield state.copyWith(
          paymentForm: state.paymentForm
              .copyWith(houseNumber: HouseNumber(e.houseNumber)),
          addressFailureOrSuccess: none(),
        );
      },
      line1Changed: (e) async* {
        yield state.copyWith(
          paymentForm: state.paymentForm.copyWith(line1: LineOne(e.line1)),
          addressFailureOrSuccess: none(),
        );
      },
      line2Changed: (e) async* {
        yield state.copyWith(
          paymentForm: state.paymentForm.copyWith(line2: LineTwo(e.line2)),
          addressFailureOrSuccess: none(),
        );
      },
      postcodeChanged: (e) async* {
        yield state.copyWith(
          paymentForm:
          state.paymentForm.copyWith(postcode: Postcode(e.postcode)),
          addressFailureOrSuccess: none(),
        );
      },
      validateAddressSection: (e) async* {
        Either<PaymentFormErrors, Unit> failureOrSuccess;

        if (state.paymentForm.houseNumber.isValid() &&
            state.paymentForm.postcode.isValid() &&
            state.paymentForm.line1.isValid() &&
            state.paymentForm.line2.isValid() &&
            state.paymentForm.city.isValid() &&
            state.paymentForm.country.isValid() &&
            state.paymentForm.county.isValid()) {
          failureOrSuccess = right(unit);
        } else {
          failureOrSuccess =
              left(PaymentFormErrors.invalidAddressInformation());
        }

        yield state.copyWith(
          showErrorMessagesAddress: AutovalidateMode.always,
          addressFailureOrSuccess: optionOf(failureOrSuccess),
        );
      },
      findAddress: (e) async* {
        Either<PaymentFormErrors, List<Address>> failureOrSuccess;
        ;
        List<Address> addresses = await Geocoder.local
            .findAddressesFromQuery(state.paymentForm.postcode.getOrCrash());
        if (addresses.isNotEmpty) {
          failureOrSuccess = right(addresses);
        } else {
          failureOrSuccess =
              left(PaymentFormErrors.errorFindingAddress());
        }
        yield state.copyWith(
          showErrorMessagesPersonal: AutovalidateMode.always,
          addressFindingFailureOrSuccess: optionOf(failureOrSuccess),
        );
      },
      saved:  (e) async* {
        Either<PaymentFormErrors, Map<String, dynamic>> failureOrSuccess;
        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );
        failureOrSuccess = await _iPaymentSetupFacade.createPayment(e.card, e.peerId, e.amount, e.itemId, state.paymentForm);

        yield state.copyWith(
          isSaving: false,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
