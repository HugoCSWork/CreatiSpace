import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:creatispace/domain/auth/auth_error/auth_error_failures.dart';
import 'package:creatispace/domain/auth/i_auth_facade.dart';
import 'package:creatispace/domain/auth/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

part 'sign_up_bloc.freezed.dart';

@injectable
class SignUpFormBloc extends Bloc<SignUpFormEvent, SignUpFormState> {
  final IAuthFacade _authFacade;

  SignUpFormBloc(this._authFacade) : super(SignUpFormState.initial());


  @override
  Stream<SignUpFormState> mapEventToState(
    SignUpFormEvent event,
  ) async* {
    yield* event.map(
        emailChanged: (e) async* {
          yield state.copyWith(
            emailAddress: EmailAddress(e.email),
            authFailureOrSuccess: none(),
          );
        },
        passwordChanged: (e) async* {
          yield state.copyWith(
            password: Password(e.pass),
            authFailureOrSuccess: none(),
          );
        },
        usernameChanged: (e) async* {
          yield state.copyWith(
            username: Username(e.pass),
            authFailureOrSuccess: none(),
          );
        },
        registerWithEmailAndPasswordPressed: (e) async* {
          yield* _performActionOnAuthFacadeWithEmailAndPassword(
            _authFacade.registerWithEmailAndPassword);
        },
    );
  }

  Stream<SignUpFormState> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthErrorFailure, Unit>> Function({
      EmailAddress emailAddress,
      Password password,
      Username username,
    }) forwardedCall,
  ) async* {
    Either<AuthErrorFailure, Unit> failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    final isUsernameValid = state.username.isValid();

    if (isEmailValid && isPasswordValid && isUsernameValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccess: none(),
      );

      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress,
        password: state.password,
        username: state.username,
      );
    }
    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: AutovalidateMode.always,
      authFailureOrSuccess: optionOf(failureOrSuccess),
    );
  }
}
