import 'package:creatispace/app/auth/sign_up/sign_up_bloc.dart';
import 'package:creatispace/injection.dart';
import 'package:creatispace/pages/auth/sign_up/sign_up_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<SignUpFormBloc>(),
        child: SignUpForm(),
      ),
    );
  }
}