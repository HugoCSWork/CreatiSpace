// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/items/item/item.dart';
import '../../domain/profile/profile_data/user_profile.dart';
import '../../domain/user_messaging/user_list/user_messaging.dart';
import '../../shared/navigation_bar.dart';
import '../auth/forgotten_password/forgotten_password.dart';
import '../auth/sign_in/sign_in_page.dart';
import '../auth/sign_up/sign_up_page.dart';
import '../auth/verify_email/email_verified_page.dart';
import '../home/home_scaffold.dart';
import '../items/items_form/item_form_page.dart';
import '../items/items_overview/items_overview_page.dart';
import '../messaging/following_list/following_scaffold.dart';
import '../messaging/messaging/messaging_scaffold.dart';
import '../messaging/messaging/widgets/full_screen_image.dart';
import '../messaging/user_list/user_list.dart';
import '../messaging/user_list/user_list_with_scaffold.dart';
import '../profile/edit_profile/edit_profile_form_page.dart';
import '../profile/following_followers/user_friends_scaffold.dart';
import '../profile/peer_profile/peer_profile_scaffold.dart';
import '../profile/user_profile/user_profile_scaffold.dart';
import '../search/search_scaffold.dart';
import '../splash/splash_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String signInPage = '/sign-in-page';
  static const String signUpPage = '/sign-up-page';
  static const String forgottenPasswordPage = '/forgotten-password-page';
  static const String itemsOverviewPage = '/items-overview-page';
  static const String emailVerifiedPage = '/email-verified-page';
  static const String navigationBar = '/navigation-bar';
  static const String profileFormPageScaffold = '/profile-form-page-scaffold';
  static const String userList = '/user-list';
  static const String userListScaffold = '/user-list-scaffold';
  static const String followingScaffold = '/following-scaffold';
  static const String userFriendsScaffold = '/user-friends-scaffold';
  static const String searchScaffold = '/search-scaffold';
  static const String userProfileScaffold = '/user-profile-scaffold';
  static const String peerProfileScaffold = '/peer-profile-scaffold';
  static const String homeScaffold = '/home-scaffold';
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
    navigationBar,
    profileFormPageScaffold,
    userList,
    userListScaffold,
    followingScaffold,
    userFriendsScaffold,
    searchScaffold,
    userProfileScaffold,
    peerProfileScaffold,
    homeScaffold,
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
    RouteDef(Routes.navigationBar, page: NavigationBar),
    RouteDef(Routes.profileFormPageScaffold, page: ProfileFormPageScaffold),
    RouteDef(Routes.userList, page: UserList),
    RouteDef(Routes.userListScaffold, page: UserListScaffold),
    RouteDef(Routes.followingScaffold, page: FollowingScaffold),
    RouteDef(Routes.userFriendsScaffold, page: UserFriendsScaffold),
    RouteDef(Routes.searchScaffold, page: SearchScaffold),
    RouteDef(Routes.userProfileScaffold, page: UserProfileScaffold),
    RouteDef(Routes.peerProfileScaffold, page: PeerProfileScaffold),
    RouteDef(Routes.homeScaffold, page: HomeScaffold),
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
    NavigationBar: (data) {
      final args = data.getArgs<NavigationBarArguments>(
        orElse: () => NavigationBarArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => NavigationBar(
          key: args.key,
          pos: args.pos,
        ),
        settings: data,
      );
    },
    ProfileFormPageScaffold: (data) {
      final args =
          data.getArgs<ProfileFormPageScaffoldArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => ProfileFormPageScaffold(
          key: args.key,
          data: args.data,
        ),
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
    UserFriendsScaffold: (data) {
      final args = data.getArgs<UserFriendsScaffoldArguments>(
        orElse: () => UserFriendsScaffoldArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => UserFriendsScaffold(
          key: args.key,
          followOrFollowing: args.followOrFollowing,
        ),
        settings: data,
      );
    },
    SearchScaffold: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SearchScaffold(),
        settings: data,
      );
    },
    UserProfileScaffold: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => UserProfileScaffold(),
        settings: data,
      );
    },
    PeerProfileScaffold: (data) {
      final args = data.getArgs<PeerProfileScaffoldArguments>(
        orElse: () => PeerProfileScaffoldArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => PeerProfileScaffold(
          key: args.key,
          id: args.id,
        ),
        settings: data,
      );
    },
    HomeScaffold: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeScaffold(),
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

  Future<dynamic> pushNavigationBar({
    Key key,
    int pos,
  }) =>
      push<dynamic>(
        Routes.navigationBar,
        arguments: NavigationBarArguments(key: key, pos: pos),
      );

  Future<dynamic> pushProfileFormPageScaffold({
    Key key,
    @required UserProfileData data,
  }) =>
      push<dynamic>(
        Routes.profileFormPageScaffold,
        arguments: ProfileFormPageScaffoldArguments(key: key, data: data),
      );

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

  Future<dynamic> pushUserFriendsScaffold({
    Key key,
    bool followOrFollowing,
  }) =>
      push<dynamic>(
        Routes.userFriendsScaffold,
        arguments: UserFriendsScaffoldArguments(
            key: key, followOrFollowing: followOrFollowing),
      );

  Future<dynamic> pushSearchScaffold() => push<dynamic>(Routes.searchScaffold);

  Future<dynamic> pushUserProfileScaffold() =>
      push<dynamic>(Routes.userProfileScaffold);

  Future<dynamic> pushPeerProfileScaffold({
    Key key,
    String id,
  }) =>
      push<dynamic>(
        Routes.peerProfileScaffold,
        arguments: PeerProfileScaffoldArguments(key: key, id: id),
      );

  Future<dynamic> pushHomeScaffold() => push<dynamic>(Routes.homeScaffold);

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

/// NavigationBar arguments holder class
class NavigationBarArguments {
  final Key key;
  final int pos;
  NavigationBarArguments({this.key, this.pos});
}

/// ProfileFormPageScaffold arguments holder class
class ProfileFormPageScaffoldArguments {
  final Key key;
  final UserProfileData data;
  ProfileFormPageScaffoldArguments({this.key, @required this.data});
}

/// UserList arguments holder class
class UserListArguments {
  final Key key;
  final UserMessaging userMessaging;
  UserListArguments({this.key, this.userMessaging});
}

/// UserFriendsScaffold arguments holder class
class UserFriendsScaffoldArguments {
  final Key key;
  final bool followOrFollowing;
  UserFriendsScaffoldArguments({this.key, this.followOrFollowing});
}

/// PeerProfileScaffold arguments holder class
class PeerProfileScaffoldArguments {
  final Key key;
  final String id;
  PeerProfileScaffoldArguments({this.key, this.id});
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
