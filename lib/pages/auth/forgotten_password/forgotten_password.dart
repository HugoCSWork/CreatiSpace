import 'package:creatispace/app/auth/forgotten_password/forgotten_password_bloc.dart';
import 'package:creatispace/injection.dart';
import 'package:creatispace/pages/auth/forgotten_password/forgotten_password_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgottenPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt< ForgottenPasswordBloc>(),
        child: ForgottenPasswordForm(),
      ),
    );
  }
}