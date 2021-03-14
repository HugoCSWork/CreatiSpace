import 'package:auto_route/auto_route.dart';
import 'package:creatispace/app/auth/auth_bloc.dart';
import 'package:creatispace/pages/routes/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
            initial: (_) {},
            authenticated: (_) {
              Future.delayed(const Duration(seconds: 1), () {
                return ExtendedNavigator.of(context)
                  .replace(Routes.navigationBar);
              });
            },
            unauthenticated: (_) {
              Future.delayed(const Duration(seconds: 1), () {
                return ExtendedNavigator.of(context)
                  .replace(Routes.signInPage);
              });
            },
            unverified: (_) {
              Future.delayed(const Duration(seconds: 1), () {
                return ExtendedNavigator.of(context)
                  .replace(Routes.emailVerifiedPage);
              });
            },
            //  TODO Add redirect to a error page
            orElse: () => null
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
