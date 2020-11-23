part of 'sign_up_bloc.dart';



@freezed
abstract class SignUpFormEvent with _$SignUpFormEvent {
  const factory SignUpFormEvent.emailChanged(String email) = EmailChanged;
  const factory SignUpFormEvent.passwordChanged(String pass) = PasswordChanged;
  const factory SignUpFormEvent.usernameChanged(String pass) = UsernameChanged;
  const factory SignUpFormEvent.registerWithEmailAndPasswordPressed() =
    RegisterWithEmailAndPasswordPressed;
}