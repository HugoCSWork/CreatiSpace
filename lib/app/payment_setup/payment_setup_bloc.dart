import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:creatispace/domain/payment_setup/i_payment_setup_facade.dart';
import 'package:creatispace/domain/payment_setup/payment_setup_error/payment_setup_error.dart';
import 'package:creatispace/domain/payment_setup/payment_setup_model/payment_setup.dart';
import 'package:creatispace/domain/payment_setup/value_objects.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoder/geocoder.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
part 'payment_setup_event.dart';
part 'payment_setup_state.dart';
part 'payment_setup_bloc.freezed.dart';

@injectable
class PaymentSetupBloc extends Bloc<PaymentSetupEvent, PaymentSetupState> {
  final IPaymentSetupFacade _iPaymentSetupRepository;

  PaymentSetupBloc(this._iPaymentSetupRepository)
      : super(PaymentSetupState.initial());

  @override
  Stream<PaymentSetupState> mapEventToState(
    PaymentSetupEvent event,
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
        } else if (state.step - 1 == 2) {
          yield state.copyWith(
            step: state.step - 1 >= 0 ? state.step - 1 : 0,
            paymentFailureOrSuccess: none(),
          );
        } else if (state.step - 1 == 3) {
           yield state.copyWith(
            step: state.step - 1 >= 0 ? state.step - 1 : 0,
            documentFailureOrSuccess: none(),
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
      emailChanged: (e) async* {
        yield state.copyWith(
          paymentSetup:
              state.paymentSetup.copyWith(email: PaymentEmailAddress(e.email)),
          personalFailureOrSuccess: none(),
        );
      },
      genderChanged: (e) async* {
        yield state.copyWith(
          paymentSetup: state.paymentSetup.copyWith(gender: Gender(e.gender)),
          personalFailureOrSuccess: none(),
        );
      },
      phoneNumberChanged: (e) async* {
        yield state.copyWith(
          paymentSetup: state.paymentSetup
              .copyWith(phoneNumber: PhoneNumber(e.phoneNumber)),
          personalFailureOrSuccess: none(),
        );
      },
      firstNameChanged: (e) async* {
        yield state.copyWith(
          paymentSetup:
              state.paymentSetup.copyWith(firstName: FirstName(e.firstName)),
          personalFailureOrSuccess: none(),
        );
      },
      dobChanged: (e) async* {
        yield state.copyWith(
          paymentSetup: state.paymentSetup.copyWith(dob: Dob(e.dob)),
          personalFailureOrSuccess: none(),
        );
      },
      lastNameChanged: (e) async* {
        yield state.copyWith(
          paymentSetup:
              state.paymentSetup.copyWith(lastName: LastName(e.lastName)),
          personalFailureOrSuccess: none(),
        );
      },
      validatePersonalSection: (e) async* {
        Either<PaymentSetupErrorFailure, Unit> failureOrSuccess;
        ;
        if (state.paymentSetup.email.isValid() &&
            state.paymentSetup.phoneNumber.isValid() &&
            state.paymentSetup.firstName.isValid() &&
            state.paymentSetup.lastName.isValid() &&
            state.paymentSetup.gender.isValid() &&
            state.paymentSetup.dob.isValid()) {
          failureOrSuccess = right(unit);
        } else {
          failureOrSuccess =
              left(PaymentSetupErrorFailure.invalidPersonalInformation());
        }

        yield state.copyWith(
          showErrorMessagesPersonal: AutovalidateMode.always,
          personalFailureOrSuccess: optionOf(failureOrSuccess),
        );
      },
      cityChanged: (e) async* {
        yield state.copyWith(
          paymentSetup: state.paymentSetup.copyWith(city: City(e.city)),
          addressFailureOrSuccess: none(),
        );
      },
      countryChanged: (e) async* {
        yield state.copyWith(
          paymentSetup:
              state.paymentSetup.copyWith(country: Country(e.country)),
          addressFailureOrSuccess: none(),
        );
      },
      countyChanged: (e) async* {
        yield state.copyWith(
          paymentSetup: state.paymentSetup.copyWith(county: County(e.county)),
          addressFailureOrSuccess: none(),
        );
      },
      houseNumberChanged: (e) async* {
        yield state.copyWith(
          paymentSetup: state.paymentSetup
              .copyWith(houseNumber: HouseNumber(e.houseNumber)),
          addressFailureOrSuccess: none(),
        );
      },
      line1Changed: (e) async* {
        yield state.copyWith(
          paymentSetup: state.paymentSetup.copyWith(line1: LineOne(e.line1)),
          addressFailureOrSuccess: none(),
        );
      },
      line2Changed: (e) async* {
        yield state.copyWith(
          paymentSetup: state.paymentSetup.copyWith(line2: LineTwo(e.line2)),
          addressFailureOrSuccess: none(),
        );
      },
      postcodeChanged: (e) async* {
        yield state.copyWith(
          paymentSetup:
              state.paymentSetup.copyWith(postcode: Postcode(e.postcode)),
          addressFailureOrSuccess: none(),
        );
      },
      validateAddressSection: (e) async* {
        Either<PaymentSetupErrorFailure, Unit> failureOrSuccess;
        ;
        if (state.paymentSetup.houseNumber.isValid() &&
            state.paymentSetup.postcode.isValid() &&
            state.paymentSetup.line1.isValid() &&
            state.paymentSetup.line2.isValid() &&
            state.paymentSetup.city.isValid() &&
            state.paymentSetup.country.isValid() &&
            state.paymentSetup.county.isValid()) {
          failureOrSuccess = right(unit);
        } else {
          failureOrSuccess =
              left(PaymentSetupErrorFailure.invalidAddressInformation());
        }

        yield state.copyWith(
          showErrorMessagesAddress: AutovalidateMode.always,
          addressFailureOrSuccess: optionOf(failureOrSuccess),
        );
      },
      findAddress: (e) async* {
        Either<PaymentSetupErrorFailure, List<Address>> failureOrSuccess;
        ;
        List<Address> addresses = await Geocoder.local
            .findAddressesFromQuery(state.paymentSetup.postcode.getOrCrash());
        if (addresses.isNotEmpty) {
          failureOrSuccess = right(addresses);
        } else {
          failureOrSuccess =
              left(PaymentSetupErrorFailure.errorFindingAddress());
        }
        yield state.copyWith(
          showErrorMessagesPersonal: AutovalidateMode.always,
          addressFindingFailureOrSuccess: optionOf(failureOrSuccess),
        );
      },
      sortCodeChanged: (e) async* {
        yield state.copyWith(
          paymentSetup:
              state.paymentSetup.copyWith(sortCode: SortCode(e.sortCode)),
          paymentFailureOrSuccess: none(),
        );
      },
      cardNumberChanged: (e) async* {
        yield state.copyWith(
          paymentSetup:
              state.paymentSetup.copyWith(cardNumber: CardNumber(e.cardNumber)),
          paymentFailureOrSuccess: none(),
        );
      },
      termsAndServiceChanged: (e) async* {
        yield state.copyWith(
          paymentSetup: state.paymentSetup
              .copyWith(termsAndService: TermsAndService(e.termsAndService)),
          documentFailureOrSuccess: none(),
        );
      },
      cardNameChanged: (e) async* {
        yield state.copyWith(
          paymentSetup:
              state.paymentSetup.copyWith(cardName: CardName(e.cardName)),
          paymentFailureOrSuccess: none(),
        );
      },
      validatePaymentSection: (e) async* {
        Either<PaymentSetupErrorFailure, Unit> failureOrSuccess;
        ;
        if (state.paymentSetup.cardNumber.isValid() &&
            state.paymentSetup.sortCode.isValid() &&
            state.paymentSetup.cardName.isValid()) {
          failureOrSuccess = right(unit);
        } else {
          failureOrSuccess =
              left(PaymentSetupErrorFailure.invalidPaymentInformation());
        }

        yield state.copyWith(
          showErrorMessagesPayment: AutovalidateMode.always,
          paymentFailureOrSuccess: optionOf(failureOrSuccess),
        );
      },
      validateDocumentSection: (e) async* {
        Either<PaymentSetupErrorFailure, Unit> failureOrSuccess;

        if (
        state.paymentSetup.passportUrlImage.isValid() &&
            state.paymentSetup.documentUrlImage.isValid() &&
            state.paymentSetup.termsAndService.isValid()) {
          failureOrSuccess = right(unit);
        } else {
          failureOrSuccess =
              left(PaymentSetupErrorFailure.invalidDocumentInformation());
        }

        yield state.copyWith(
          showErrorMessagesDocument: AutovalidateMode.always,
          documentFailureOrSuccess: optionOf(failureOrSuccess),
        );
      },
      documentNameChanged: (e) async* {
        yield state.copyWith(
            paymentSetup: state.paymentSetup
                .copyWith(documentNameImage: DocumentName(e.documentName)),
            documentFailureOrSuccess: none());
      },
      documentUrlChanged: (e) async* {
        yield state.copyWith(
            paymentSetup: state.paymentSetup
                .copyWith(documentUrlImage: DocumentUrl(e.documentUrl)),
            documentFailureOrSuccess: none());
      },
      passportNameChanged: (e) async* {
        yield state.copyWith(
            paymentSetup: state.paymentSetup
                .copyWith(passportNameImage: PassportName(e.passportName)),
            documentFailureOrSuccess: none());
      },
      passportUrlChanged: (e) async* {
        yield state.copyWith(
            paymentSetup: state.paymentSetup
                .copyWith(passportUrlImage: PassportUrl(e.passportUrl)),
            documentFailureOrSuccess: none());
      },
      createAccount: (e) async* {
        Either<PaymentSetupErrorFailure, Unit> failureOrSuccess;
        yield state.copyWith(
          isSaving: true,
          createPaymentAccountFailureOrSuccess: none(),
        );
        failureOrSuccess = await _iPaymentSetupRepository
            .createPaymentUser(state.paymentSetup);

        yield state.copyWith(
          isSaving: false,
          createPaymentAccountFailureOrSuccess: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
