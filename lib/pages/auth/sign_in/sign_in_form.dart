import 'package:auto_route/auto_route.dart';
import 'package:creatispace/app/auth/sign_in/sign_in_bloc.dart';
import 'package:creatispace/pages/auth/shared/alreadyhaveanaccount.dart';
import 'package:creatispace/pages/auth/shared/background.dart';
import 'package:creatispace/pages/auth/shared/or_divider.dart';
import 'package:creatispace/pages/auth/sign_in/sign_in_fields.dart';
import 'package:creatispace/pages/routes/router.gr.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
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
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: SizedBox(
                            width: double.infinity,
                            child: GestureDetector(
                              onTap: () {
                                return ExtendedNavigator.of(context)
                                  .push(Routes.forgottenPasswordPage);
                              },
                                child: Text(
                                'Forgotten Password?',
                                style: TextStyle(
                                  color: Color(0xFF3E81B5),
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ),
                        ),
                        const LoginButton(),
                        OrDivider(),
                        SignInButton(
                          Buttons.Google,             
                          onPressed: () {
                            context
                              .bloc<SignInFormBloc>()
                              .add(const SignInFormEvent.signInWithGooglePressed());
                          },
                        ),
                        SizedBox(height: size.height * 0.02),
                        AlreadyHaveAnAccountCheck(
                          press: () {
                            return ExtendedNavigator.of(context).push(Routes.signUpPage);
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