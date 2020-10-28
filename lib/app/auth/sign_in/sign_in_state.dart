part of 'sign_in_bloc.dart';

@freezed
abstract class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    @required EmailAddress emailAddress,
    @required Password password,
    @required AutovalidateMode showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<AuthErrorFailure, Unit>> authFailureOrSuccess,
  }) = _SignInFormState;

  factory SignInFormState.initial() => SignInFormState(
      emailAddress: EmailAddress(''),
      password: Password(''),
      showErrorMessages: AutovalidateMode.disabled,
      isSubmitting: false,
      authFailureOrSuccess: none(),
  );
}
