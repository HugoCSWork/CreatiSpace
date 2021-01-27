import 'package:auto_route/auto_route.dart';
import 'package:creatispace/app/auth/forgotten_password/forgotten_password_bloc.dart';
import 'package:creatispace/pages/auth/shared/background.dart';
import 'package:creatispace/pages/auth/forgotten_password/forgotten_password_fields.dart';
import 'package:creatispace/pages/routes/router.gr.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForgottenPasswordForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgottenPasswordBloc, ForgottenPasswordState>(
        listener: (context, state) {
      state.authFailureOrSuccess.fold(
        () {},
        (either) => either.fold((failure) {
          FlushbarHelper.createError(
            message: failure.map(
              cancelledByUser: (_) => 'Cancelled',
              serviceError: (_) => 'Server error',
              emailAlreadyInUse: (_) => 'Email already in use',
              invalidEmailAndPassword: (_) =>
                  'Invalid email and password combination',
            ),
          ).show(context);
        }, (_) {
          FlushbarHelper.createSuccess(message: "Sent Reset Email")
              .show(context).then((value) => ExtendedNavigator.of(context).popAndPush(Routes.signInPage));
        }),
      );
    }, builder: (context, state) {
      final Size size = MediaQuery.of(context).size;
      return Scaffold(
        appBar: AppBar(
          title: Text("Reset Password"),
        ),
        body: Form(
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
                      const ResetPasswordButton(),
                      SizedBox(height: size.height * 0.02),
                      if (state.isSubmitting) ...[
                        const SizedBox(
                          height: 8,
                        ),
                        const LinearProgressIndicator(),
                      ]
                    ]),
              ),
            ),
          ),
        ),
      );
    });
  }
}
