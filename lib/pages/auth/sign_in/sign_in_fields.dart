import 'package:creatispace/app/auth/sign_in/sign_in_bloc.dart';
import 'package:creatispace/pages/auth/shared/input_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        decoration: const InputDecoration(
            prefixIcon: Icon(Icons.email),
            labelText: 'Email',
            errorMaxLines: 5),
        autocorrect: false,
        onChanged: (value) => context
            .bloc<SignInFormBloc>()
            .add(SignInFormEvent.emailChanged(value)),
        validator: (_) =>
            context.bloc<SignInFormBloc>().state.emailAddress.value.fold(
                  (failure) => failure.maybeMap(
                    auth: (value) => value.f.maybeMap(
                      invalidEmail: (_) => 'Invalid Email',
                      orElse: () => null,
                    ),
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
      ),
    );
  }
}

class PasswordField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        decoration: const InputDecoration(
            prefixIcon: Icon(Icons.lock),
            labelText: 'Password',
            errorMaxLines: 5),
        autocorrect: false,
        obscureText: true,
        onChanged: (value) => context
            .bloc<SignInFormBloc>()
            .add(SignInFormEvent.passwordChanged(value)),
        validator: (_) =>
            context.bloc<SignInFormBloc>().state.password.value.fold(
                  (failure) => failure.maybeMap(
                    auth: (value) => value.f.maybeMap(
                      invalidPassword: (_) =>
                          'Invalid Password Minimum of 8 Characters, 1 lower and upper case characters and 1 special character',
                      orElse: () => null,
                    ),
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
      ),
    );
  }
}

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        context
            .bloc<SignInFormBloc>()
            .add(const SignInFormEvent.signInWithGooglePressed());
      },
      color: Colors.lightBlue,
      child: const Text(
        'SIGN IN WITH GOOGLE',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: Color(0xFF3E81B5),
          onPressed: () {
            context.bloc<SignInFormBloc>().add(
                  const SignInFormEvent.signInEmailAndPasswordPressed(),
                );
          },
          child: Text(
            'Login',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}


