import 'package:creatispace/app/auth/sign_up/sign_up_bloc.dart';
import 'package:creatispace/pages/auth/shared/input_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsernameField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    TextFieldContainer(
      child: TextFormField(
        decoration: const InputDecoration(
            prefixIcon: Icon(Icons.person),
            labelText: 'Username',
            errorMaxLines: 5),
        onChanged: (value) => context
            .read<SignUpFormBloc>()
            .add(SignUpFormEvent.usernameChanged(value)),
        validator: (_) =>
            context.read<SignUpFormBloc>().state.username.value.fold(
                  (failure) => failure.maybeMap(
                    auth: (value) => value.f.maybeMap(
                      offensiveUsername: (_) => 'Offensive name, please change',
                      shortUsername: (_) => 'Username is too short must be greater than 6 characters',
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


class EmailField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    TextFieldContainer(
      child: TextFormField(
        decoration: const InputDecoration(
            prefixIcon: Icon(Icons.email),
            labelText: 'Email',
            errorMaxLines: 5),
        autocorrect: false,
        onChanged: (value) => context
            .read<SignUpFormBloc>()
            .add(SignUpFormEvent.emailChanged(value)),
        validator: (_) =>
            context.read<SignUpFormBloc>().state.emailAddress.value.fold(
                  (failure) => failure.maybeMap(
                    auth: (value) => value.f.maybeMap(
                      invalidEmail: (_) => 'Invalid Email Address',
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
        obscureText: true,
        decoration: const InputDecoration(
            prefixIcon: Icon(Icons.lock),
            labelText: 'Password',
            errorMaxLines: 5),
        autocorrect: false,
        onChanged: (value) => context
            .read<SignUpFormBloc>()
            .add(SignUpFormEvent.passwordChanged(value)),
        validator: (_) =>
            context.read<SignUpFormBloc>().state.password.value.fold(
                  (failure) => failure.maybeMap(
                    auth: (value) => value.f.maybeMap(
                      invalidPassword: (_) => 'Invalid Password Minimum of 8 Characters, 1 lower and upper case characters and 1 special character',
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

class RegisterButton extends StatelessWidget {

  const RegisterButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          style: ButtonStyle(
              padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 20, horizontal: 40)),
              backgroundColor: MaterialStateProperty.all(const Color(0xFF3E81B5))
          ),
           onPressed: () { 
            context.read<SignUpFormBloc>().add(
                  const SignUpFormEvent
                      .registerWithEmailAndPasswordPressed(),
                );
          },
          child: const Text(
            'Register',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
