
import 'package:auto_route/auto_route.dart';
import 'package:creatispace/injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:creatispace/app/auth/auth_bloc.dart';
import 'package:creatispace/pages/routes/router.gr.dart';


class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<AuthBloc>()..add(
              const AuthEvent.authCheckRequested()),
          ),
        ],
        child: MaterialApp(
        title: 'CreatiSpace',
        builder: ExtendedNavigator(router: BaseRouter(),),
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          primaryColor: Colors.blue[200],
          accentColor: Colors.blueAccent,
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8)
            ),
          )
        ),
      ),
      
    );
  }
}