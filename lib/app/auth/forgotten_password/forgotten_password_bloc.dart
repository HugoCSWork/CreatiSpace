import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:creatispace/domain/auth/auth_error/auth_error_failures.dart';
import 'package:creatispace/domain/auth/i_auth_facade.dart';
import 'package:creatispace/domain/auth/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'forgotten_password_event.dart';
part 'forgotten_password_state.dart';

part 'forgotten_password_bloc.freezed.dart';

@injectable
class ForgottenPasswordBloc
    extends Bloc<ForgottenPasswordEvent, ForgottenPasswordState> {
  final IAuthFacade _authFacade;

  ForgottenPasswordBloc(this._authFacade)
      : super(ForgottenPasswordState.initial());

  @override
  Stream<ForgottenPasswordState> mapEventToState(
    ForgottenPasswordEvent event,
  ) async* {
    yield* event.map(emailChanged: (e) async* {
      yield state.copyWith(
        emailAddress: EmailAddress(e.email),
        authFailureOrSuccess: none(),
      );
    }, passwordReset: (e) async* {
      yield* _performActionOnAuthFacadeWithPasswordReset(
          _authFacade.passwordReset);
    });
  }

  Stream<ForgottenPasswordState> _performActionOnAuthFacadeWithPasswordReset(
    Future<Either<AuthErrorFailure, Unit>> Function({
      EmailAddress emailAddress,
    })
        forwardedCall,
  ) async* {
    Either<AuthErrorFailure, Unit> failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();

    if (isEmailValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccess: none(),
      );

      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
      );
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: AutovalidateMode.always,
      authFailureOrSuccess: optionOf(failureOrSuccess),
    );
  }
}
