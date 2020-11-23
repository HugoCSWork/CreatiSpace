// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/items/item/item.dart';
import '../auth/forgotten_password/forgotten_password.dart';
import '../auth/sign_in/sign_in_page.dart';
import '../auth/sign_up/sign_up_page.dart';
import '../items/items_form/item_form_page.dart';
import '../items/items_overview/items_overview-page.dart';
import '../splash/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String signInPage = '/sign-in-page';
  static const String signUpPage = '/sign-up-page';
  static const String forgottenPasswordPage = '/forgotten-password-page';
  static const String itemsOverviewPage = '/items-overview-page';
  static const String itemFormPage = '/item-form-page';
  static const all = <String>{
    splashPage,
    signInPage,
    signUpPage,
    forgottenPasswordPage,
    itemsOverviewPage,
    itemFormPage,
  };
}

class BaseRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.signUpPage, page: SignUpPage),
    RouteDef(Routes.forgottenPasswordPage, page: ForgottenPasswordPage),
    RouteDef(Routes.itemsOverviewPage, page: ItemsOverviewPage),
    RouteDef(Routes.itemFormPage, page: ItemFormPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
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
    ItemsOverviewPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ItemsOverviewPage(),
        settings: data,
      );
    },
    ItemFormPage: (data) {
      final args = data.getArgs<ItemFormPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => ItemFormPage(
          key: args.key,
          editedItem: args.editedItem,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension BaseRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushSignInPage() => push<dynamic>(Routes.signInPage);

  Future<dynamic> pushSignUpPage() => push<dynamic>(Routes.signUpPage);

  Future<dynamic> pushForgottenPasswordPage() =>
      push<dynamic>(Routes.forgottenPasswordPage);

  Future<dynamic> pushItemsOverviewPage() =>
      push<dynamic>(Routes.itemsOverviewPage);

  Future<dynamic> pushItemFormPage({
    Key key,
    @required Item editedItem,
  }) =>
      push<dynamic>(
        Routes.itemFormPage,
        arguments: ItemFormPageArguments(key: key, editedItem: editedItem),
      );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// ItemFormPage arguments holder class
class ItemFormPageArguments {
  final Key key;
  final Item editedItem;
  ItemFormPageArguments({this.key, @required this.editedItem});
}
