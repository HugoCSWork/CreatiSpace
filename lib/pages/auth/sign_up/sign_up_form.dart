import 'package:auto_route/auto_route.dart';
import 'package:creatispace/app/auth/sign_up/sign_up_bloc.dart';
import 'package:creatispace/pages/auth/shared/alreadyhaveanaccount.dart';
import 'package:creatispace/pages/auth/shared/background.dart';
import 'package:creatispace/pages/auth/sign_up/sign_up_fields.dart';
import 'package:creatispace/pages/routes/router.gr.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpFormBloc, SignUpFormState>(
       listener: (context, state) {
        state.authFailureOrSuccess.fold(
          () {},
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                message: failure.map(
                  cancelledByUser: (_) => 'Cancelled',
                  serviceError: (_) => 'Server error',
                  emailAlreadyInUse: (_) => 'Email already in use',
                  invalidEmailAndPassword: (_) =>
                      'Invalid email and password combination',
                ),
              ).show(context);
            },
            (_) => null
          ),
        );
      },
        builder: (context, state) {
          final Size size = MediaQuery.of(context).size;
          return Form(
              autovalidateMode: state.showErrorMessages,
              child: Background(
                child: SingleChildScrollView(
                  child: AbsorbPointer(
                    absorbing: state.isSubmitting,
                        child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(height: size.height * 0.02),
                          SvgPicture.asset(
                            "assets/icons/login_new.svg",
                            height: size.height * 0.35,
                          ),
                          SizedBox(height: size.height * 0.03),
                          EmailField(),
                          PasswordField(),
                          UsernameField(),
                          const RegisterButton(),
                          SizedBox(height: size.height * 0.02),
                          AlreadyHaveAnAccountCheck(
                            login: false,
                            press: () {
                              return ExtendedNavigator.of(context).push(Routes.signInPage);
                            },
                          ),
                          SizedBox(height: size.height * 0.02),
                          if (state.isSubmitting) ... [
                            const SizedBox(
                              height: 8,
                            ),
                            const LinearProgressIndicator(),
                          ]
                        ]),
                  ),

                ),
              ),
          );
      }
    );
  }
}