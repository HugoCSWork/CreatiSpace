// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/items/item/item.dart';
import '../../domain/user_messaging/user_list/user_messaging.dart';
import '../auth/forgotten_password/forgotten_password.dart';
import '../auth/sign_in/sign_in_page.dart';
import '../auth/sign_up/sign_up_page.dart';
import '../auth/verify_email/email_verified_page.dart';
import '../items/items_form/item_form_page.dart';
import '../items/items_overview/items_overview_page.dart';
import '../messaging/following_list/following_scaffold.dart';
import '../messaging/messaging/messaging_scaffold.dart';
import '../messaging/messaging/widgets/full_screen_image.dart';
import '../messaging/user_list/user_list.dart';
import '../messaging/user_list/user_list_with_scaffold.dart';
import '../splash/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String signInPage = '/sign-in-page';
  static const String signUpPage = '/sign-up-page';
  static const String forgottenPasswordPage = '/forgotten-password-page';
  static const String itemsOverviewPage = '/items-overview-page';
  static const String emailVerifiedPage = '/email-verified-page';
  static const String userList = '/user-list';
  static const String userListScaffold = '/user-list-scaffold';
  static const String followingScaffold = '/following-scaffold';
  static const String messagingScaffold = '/messaging-scaffold';
  static const String fullScreenImage = '/full-screen-image';
  static const String itemFormPage = '/item-form-page';
  static const all = <String>{
    splashPage,
    signInPage,
    signUpPage,
    forgottenPasswordPage,
    itemsOverviewPage,
    emailVerifiedPage,
    userList,
    userListScaffold,
    followingScaffold,
    messagingScaffold,
    fullScreenImage,
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
    RouteDef(Routes.emailVerifiedPage, page: EmailVerifiedPage),
    RouteDef(Routes.userList, page: UserList),
    RouteDef(Routes.userListScaffold, page: UserListScaffold),
    RouteDef(Routes.followingScaffold, page: FollowingScaffold),
    RouteDef(Routes.messagingScaffold, page: MessagingScaffold),
    RouteDef(Routes.fullScreenImage, page: FullScreenImage),
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
    EmailVerifiedPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => EmailVerifiedPage(),
        settings: data,
      );
    },
    UserList: (data) {
      final args = data.getArgs<UserListArguments>(
        orElse: () => UserListArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => UserList(
          key: args.key,
          userMessaging: args.userMessaging,
        ),
        settings: data,
      );
    },
    UserListScaffold: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => UserListScaffold(),
        settings: data,
      );
    },
    FollowingScaffold: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => FollowingScaffold(),
        settings: data,
      );
    },
    MessagingScaffold: (data) {
      final args = data.getArgs<MessagingScaffoldArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => MessagingScaffold(
          key: args.key,
          peerId: args.peerId,
          peerName: args.peerName,
          userId: args.userId,
        ),
        settings: data,
      );
    },
    FullScreenImage: (data) {
      final args = data.getArgs<FullScreenImageArguments>(
        orElse: () => FullScreenImageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => FullScreenImage(
          key: args.key,
          imageUrl: args.imageUrl,
        ),
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

  Future<dynamic> pushEmailVerifiedPage() =>
      push<dynamic>(Routes.emailVerifiedPage);

  Future<dynamic> pushUserList({
    Key key,
    UserMessaging userMessaging,
  }) =>
      push<dynamic>(
        Routes.userList,
        arguments: UserListArguments(key: key, userMessaging: userMessaging),
      );

  Future<dynamic> pushUserListScaffold() =>
      push<dynamic>(Routes.userListScaffold);

  Future<dynamic> pushFollowingScaffold() =>
      push<dynamic>(Routes.followingScaffold);

  Future<dynamic> pushMessagingScaffold({
    Key key,
    @required String peerId,
    @required String peerName,
    @required String userId,
  }) =>
      push<dynamic>(
        Routes.messagingScaffold,
        arguments: MessagingScaffoldArguments(
            key: key, peerId: peerId, peerName: peerName, userId: userId),
      );

  Future<dynamic> pushFullScreenImage({
    Key key,
    String imageUrl,
  }) =>
      push<dynamic>(
        Routes.fullScreenImage,
        arguments: FullScreenImageArguments(key: key, imageUrl: imageUrl),
      );

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

/// UserList arguments holder class
class UserListArguments {
  final Key key;
  final UserMessaging userMessaging;
  UserListArguments({this.key, this.userMessaging});
}

/// MessagingScaffold arguments holder class
class MessagingScaffoldArguments {
  final Key key;
  final String peerId;
  final String peerName;
  final String userId;
  MessagingScaffoldArguments(
      {this.key,
      @required this.peerId,
      @required this.peerName,
      @required this.userId});
}

/// FullScreenImage arguments holder class
class FullScreenImageArguments {
  final Key key;
  final String imageUrl;
  FullScreenImageArguments({this.key, this.imageUrl});
}

/// ItemFormPage arguments holder class
class ItemFormPageArguments {
  final Key key;
  final Item editedItem;
  ItemFormPageArguments({this.key, @required this.editedItem});
}
