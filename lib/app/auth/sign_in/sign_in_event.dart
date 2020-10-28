part of 'sign_in_bloc.dart';



@freezed
abstract class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChanged(String email) = EmailChanged;
  const factory SignInFormEvent.passwordChanged(String pass) = PasswordChanged;
  const factory SignInFormEvent.signInEmailAndPasswordPressed() =
    SignInWithEmailAndPasswordPressed;
  const factory SignInFormEvent.signInWithGooglePressed() =
    SignInWithGooglePressed;
}