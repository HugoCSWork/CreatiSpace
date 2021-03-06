part of 'sign_up_bloc.dart';

@freezed
abstract class SignUpFormState with _$SignUpFormState {
  const factory SignUpFormState({
    @required EmailAddress emailAddress,
    @required Password password,
    @required Username username,
    @required AutovalidateMode showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<AuthErrorFailure, Unit>> authFailureOrSuccess,
  }) = _SignUpFormState;

  factory SignUpFormState.initial() => SignUpFormState(
      emailAddress: EmailAddress(''),
      password: Password(''),
      username: Username(''),
      showErrorMessages: AutovalidateMode.disabled,
      isSubmitting: false,
      authFailureOrSuccess: none(),
  );
}
