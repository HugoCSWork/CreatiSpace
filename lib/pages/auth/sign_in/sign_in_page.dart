import 'package:creatispace/app/auth/sign_in/sign_in_bloc.dart';
import 'package:creatispace/injection.dart';
import 'package:creatispace/pages/auth/sign_in/sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: SignInForm(),
      ),
    );
  }
}