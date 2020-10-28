import 'package:creatispace/app/auth/forgotten_password/forgotten_password_bloc.dart';
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
            .bloc<ForgottenPasswordBloc>()
            .add(ForgottenPasswordEvent.emailChanged(value)),
        validator: (_) =>
            context.bloc<ForgottenPasswordBloc>().state.emailAddress.value.fold(
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

class ResetPasswordButton extends StatelessWidget {
  const ResetPasswordButton({
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
            context.bloc<ForgottenPasswordBloc>().add(
                  const ForgottenPasswordEvent.passwordReset(),
                );
          },
          child: Text(
            'Reset Password',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}


