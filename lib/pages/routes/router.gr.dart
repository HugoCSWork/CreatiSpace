// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../auth/forgotten_password/forgotten_password.dart';
import '../auth/sign_in/sign_in_page.dart';
import '../auth/sign_up/sign_up_page.dart';
import '../splash/splash_page.dart';

class Routes {
  static const String signInPage = '/sign-in-page';
  static const String signUpPage = '/sign-up-page';
  static const String forgottenPasswordPage = '/forgotten-password-page';
  static const String splashPage = '/';
  static const all = <String>{
    signInPage,
    signUpPage,
    forgottenPasswordPage,
    splashPage,
  };
}

class BaseRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.signUpPage, page: SignUpPage),
    RouteDef(Routes.forgottenPasswordPage, page: ForgottenPasswordPage),
    RouteDef(Routes.splashPage, page: SplashPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SignInPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInPage(),
        settings: data,
      );
    },
    SignUpPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignUpPage(),
        settings: data,
      );
    },
    ForgottenPasswordPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ForgottenPasswordPage(),
        settings: data,
      );
    },
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension BaseRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSignInPage() => push<dynamic>(Routes.signInPage);

  Future<dynamic> pushSignUpPage() => push<dynamic>(Routes.signUpPage);

  Future<dynamic> pushForgottenPasswordPage() =>
      push<dynamic>(Routes.forgottenPasswordPage);

  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);
}
