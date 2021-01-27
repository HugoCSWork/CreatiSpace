import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:creatispace/app/auth/auth_bloc.dart';
import 'package:creatispace/pages/routes/router.gr.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:creatispace/app/auth/sign_in/sign_in_bloc.dart';
import 'package:timer_button/timer_button.dart';

class EmailVerifiedPage extends StatefulWidget {
  @override
  _EmailVerifiedPageState createState() => _EmailVerifiedPageState();
}

class _EmailVerifiedPageState extends State<EmailVerifiedPage> {
  Timer _timer;

  @override
  void initState() {
    Future(() async {
    _timer = Timer.periodic(Duration(seconds: 15), (timer) async {
      await FirebaseAuth.instance.currentUser
        ..reload();
      var user = await FirebaseAuth.instance.currentUser;
      if (user.emailVerified == true) {
        _timer.cancel();
        ExtendedNavigator.of(context).push(Routes.navigationBar);
      }
    });
  });
  }

  @override
  Widget build(BuildContext context) {

    BlocListener<AuthBloc, AuthState>(listener: (context, state) {
      state.maybeMap(
          unauthenticated: (_) =>
              ExtendedNavigator.of(context).replace(Routes.signInPage),
          orElse: () {});
    });

    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // padding: const EdgeInsets.only(top: 45.0),
          children: [
               Text(
                 "Verify Email Address",
                 style: TextStyle(
                     color: Colors.black87,
                     fontSize: 40.0
                 ),
               ),
                const SizedBox(height: 20),
                SvgPicture.asset(
                       'assets/icons/email_verification.svg',
                       height: size.height * 0.3,
                   ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                children: [
                  ButtonTheme(
                    height: 40,
                    child: RaisedButton(
                      color: Colors.blue[200],
                      onPressed: () {
                        context.read<AuthBloc>().add(const AuthEvent.sendEmailVerification());
                      },
                      child: Text("Resend Verification Email"),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),
                  ButtonTheme(
                    height: 40,
                    child: RaisedButton(
                      color: Colors.blue[200],
                      onPressed: () => {},
                      child: Text("Logout"),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),
                ],
              ),
            SizedBox(height: 30),
            Text(
                "Email verification will be checked every 15 seconds"
            ),
            ],
          ),
      ),
    );
  }
}
