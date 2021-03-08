// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/items/home_item/home_item.dart';
import '../../domain/items/item/item.dart';
import '../../domain/payment_details/payment_details.dart';
import '../../domain/profile/profile_data/user_profile.dart';
import '../../domain/user_messaging/user_list/user_messaging.dart';
import '../../domain/workshop/workshop.dart';
import '../../domain/workshop/workshop_payment.dart';
import '../../shared/navigation_bar.dart';
import '../auth/forgotten_password/forgotten_password.dart';
import '../auth/sign_in/sign_in_page.dart';
import '../auth/sign_up/sign_up_page.dart';
import '../auth/verify_email/email_verified_page.dart';
import '../home/home_scaffold.dart';
import '../items/items_form/item_form_page.dart';
import '../items/items_form/workshop_form_page.dart';
import '../items/items_overview/items_overview_page.dart';
import '../items/workshop_details/workshop_details.dart';
import '../messaging/following_list/following_scaffold.dart';
import '../messaging/messaging/messaging_scaffold.dart';
import '../messaging/messaging/widgets/full_screen_image.dart';
import '../messaging/user_list/user_list.dart';
import '../messaging/user_list/user_list_with_scaffold.dart';
import '../payment_detail_information/payment_detail_information_scaffold.dart';
import '../payment_details/payment_details_scaffold.dart';
import '../payment_details/workshop_details.dart';
import '../payment_setup/payment_stepper.dart';
import '../profile/edit_profile/edit_profile_form_page.dart';
import '../profile/following_followers/user_friends_scaffold.dart';
import '../profile/peer_profile/peer_profile_scaffold.dart';
import '../profile/user_profile/user_profile_scaffold.dart';
import '../purchase/more_info/more_info_scaffold.dart';
import '../purchase/payment_form/payment_form_scaffold.dart';
import '../purchase/payment_form/payment_successful.dart';
import '../search/search_scaffold.dart';
import '../splash/splash_page.dart';
import '../streaming/audience/streaming_audience_scaffold.dart';
import '../streaming/host/streaming_host_scaffold.dart';
import '../workshop/workshop_confirmation/workshop_confirmation.dart';
import '../workshop/workshop_details/workshop_details.dart';

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
  static const String workshopForm = '/workshop-form';
  static const String followingScaffold = '/following-scaffold';
  static const String userFriendsScaffold = '/user-friends-scaffold';
  static const String searchScaffold = '/search-scaffold';
  static const String userProfileScaffold = '/user-profile-scaffold';
  static const String peerProfileScaffold = '/peer-profile-scaffold';
  static const String moreInfoScaffold = '/more-info-scaffold';
  static const String homeScaffold = '/home-scaffold';
  static const String messagingScaffold = '/messaging-scaffold';
  static const String fullScreenImage = '/full-screen-image';
  static const String paymentStepper = '/payment-stepper';
  static const String paymentDetailsScaffold = '/payment-details-scaffold';
  static const String paymentDetailInformationScaffold =
      '/payment-detail-information-scaffold';
  static const String workshopDetails = '/workshop-details';
  static const String workshopConfirmation = '/workshop-confirmation';
  static const String workshopDetailsInformation =
      '/workshop-details-information';
  static const String paymentSuccessful = '/payment-successful';
  static const String workshopItemDetails = '/workshop-item-details';
  static const String paymentStepperScaffold = '/payment-stepper-scaffold';
  static const String streamingHostScaffold = '/streaming-host-scaffold';
  static const String streamingAudienceScaffold =
      '/streaming-audience-scaffold';
  static const String paymentFormScaffold = '/payment-form-scaffold';
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
    workshopForm,
    followingScaffold,
    userFriendsScaffold,
    searchScaffold,
    userProfileScaffold,
    peerProfileScaffold,
    moreInfoScaffold,
    homeScaffold,
    messagingScaffold,
    fullScreenImage,
    paymentStepper,
    paymentDetailsScaffold,
    paymentDetailInformationScaffold,
    workshopDetails,
    workshopConfirmation,
    workshopDetailsInformation,
    paymentSuccessful,
    workshopItemDetails,
    paymentStepperScaffold,
    streamingHostScaffold,
    streamingAudienceScaffold,
    paymentFormScaffold,
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
    RouteDef(Routes.workshopForm, page: WorkshopForm),
    RouteDef(Routes.followingScaffold, page: FollowingScaffold),
    RouteDef(Routes.userFriendsScaffold, page: UserFriendsScaffold),
    RouteDef(Routes.searchScaffold, page: SearchScaffold),
    RouteDef(Routes.userProfileScaffold, page: UserProfileScaffold),
    RouteDef(Routes.peerProfileScaffold, page: PeerProfileScaffold),
    RouteDef(Routes.moreInfoScaffold, page: MoreInfoScaffold),
    RouteDef(Routes.homeScaffold, page: HomeScaffold),
    RouteDef(Routes.messagingScaffold, page: MessagingScaffold),
    RouteDef(Routes.fullScreenImage, page: FullScreenImage),
    RouteDef(Routes.paymentStepper, page: PaymentStepper),
    RouteDef(Routes.paymentDetailsScaffold, page: PaymentDetailsScaffold),
    RouteDef(Routes.paymentDetailInformationScaffold,
        page: PaymentDetailInformationScaffold),
    RouteDef(Routes.workshopDetails, page: WorkshopDetails),
    RouteDef(Routes.workshopConfirmation, page: WorkshopConfirmation),
    RouteDef(Routes.workshopDetailsInformation,
        page: WorkshopDetailsInformation),
    RouteDef(Routes.paymentSuccessful, page: PaymentSuccessful),
    RouteDef(Routes.workshopItemDetails, page: WorkshopItemDetails),
    RouteDef(Routes.paymentStepperScaffold, page: PaymentStepperScaffold),
    RouteDef(Routes.streamingHostScaffold, page: StreamingHostScaffold),
    RouteDef(Routes.streamingAudienceScaffold, page: StreamingAudienceScaffold),
    RouteDef(Routes.paymentFormScaffold, page: PaymentFormScaffold),
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
    WorkshopForm: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => WorkshopForm(),
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
    MoreInfoScaffold: (data) {
      final args = data.getArgs<MoreInfoScaffoldArguments>(
        orElse: () => MoreInfoScaffoldArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => MoreInfoScaffold(
          key: args.key,
          homeItem: args.homeItem,
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
          imageUrl: args.imageUrl,
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
    PaymentStepper: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const PaymentStepper(),
        settings: data,
      );
    },
    PaymentDetailsScaffold: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => PaymentDetailsScaffold(),
        settings: data,
      );
    },
    PaymentDetailInformationScaffold: (data) {
      final args = data.getArgs<PaymentDetailInformationScaffoldArguments>(
        orElse: () => PaymentDetailInformationScaffoldArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => PaymentDetailInformationScaffold(
          key: args.key,
          paymentDetails: args.paymentDetails,
          isSender: args.isSender,
        ),
        settings: data,
      );
    },
    WorkshopDetails: (data) {
      final args = data.getArgs<WorkshopDetailsArguments>(
        orElse: () => WorkshopDetailsArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => WorkshopDetails(
          key: args.key,
          workshop: args.workshop,
        ),
        settings: data,
      );
    },
    WorkshopConfirmation: (data) {
      final args = data.getArgs<WorkshopConfirmationArguments>(
        orElse: () => WorkshopConfirmationArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => WorkshopConfirmation(
          key: args.key,
          workshop: args.workshop,
        ),
        settings: data,
      );
    },
    WorkshopDetailsInformation: (data) {
      final args = data.getArgs<WorkshopDetailsInformationArguments>(
        orElse: () => WorkshopDetailsInformationArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => WorkshopDetailsInformation(
          key: args.key,
          workshopPayment: args.workshopPayment,
        ),
        settings: data,
      );
    },
    PaymentSuccessful: (data) {
      final args = data.getArgs<PaymentSuccessfulArguments>(
        orElse: () => PaymentSuccessfulArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => PaymentSuccessful(
          key: args.key,
          amount: args.amount,
          quantity: args.quantity,
          itemId: args.itemId,
          address: args.address,
          peerId: args.peerId,
        ),
        settings: data,
      );
    },
    WorkshopItemDetails: (data) {
      final args = data.getArgs<WorkshopItemDetailsArguments>(
        orElse: () => WorkshopItemDetailsArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => WorkshopItemDetails(
          key: args.key,
          workshop: args.workshop,
        ),
        settings: data,
      );
    },
    PaymentStepperScaffold: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => PaymentStepperScaffold(),
        settings: data,
      );
    },
    StreamingHostScaffold: (data) {
      final args = data.getArgs<StreamingHostScaffoldArguments>(
        orElse: () => StreamingHostScaffoldArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => StreamingHostScaffold(
          key: args.key,
          workshopId: args.workshopId,
          hostId: args.hostId,
        ),
        settings: data,
      );
    },
    StreamingAudienceScaffold: (data) {
      final args = data.getArgs<StreamingAudienceScaffoldArguments>(
        orElse: () => StreamingAudienceScaffoldArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => StreamingAudienceScaffold(
          key: args.key,
          workshopId: args.workshopId,
          hostId: args.hostId,
        ),
        settings: data,
      );
    },
    PaymentFormScaffold: (data) {
      final args = data.getArgs<PaymentFormScaffoldArguments>(
        orElse: () => PaymentFormScaffoldArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => PaymentFormScaffold(
          key: args.key,
          amount: args.amount,
          cost: args.cost,
          itemId: args.itemId,
          peerId: args.peerId,
          isItem: args.isItem,
          workshop: args.workshop,
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

  Future<dynamic> pushWorkshopForm() => push<dynamic>(Routes.workshopForm);

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

  Future<dynamic> pushMoreInfoScaffold({
    Key key,
    HomeItem homeItem,
  }) =>
      push<dynamic>(
        Routes.moreInfoScaffold,
        arguments: MoreInfoScaffoldArguments(key: key, homeItem: homeItem),
      );

  Future<dynamic> pushHomeScaffold() => push<dynamic>(Routes.homeScaffold);

  Future<dynamic> pushMessagingScaffold({
    Key key,
    @required String peerId,
    @required String peerName,
    @required String userId,
    @required String imageUrl,
  }) =>
      push<dynamic>(
        Routes.messagingScaffold,
        arguments: MessagingScaffoldArguments(
            key: key,
            peerId: peerId,
            peerName: peerName,
            userId: userId,
            imageUrl: imageUrl),
      );

  Future<dynamic> pushFullScreenImage({
    Key key,
    String imageUrl,
  }) =>
      push<dynamic>(
        Routes.fullScreenImage,
        arguments: FullScreenImageArguments(key: key, imageUrl: imageUrl),
      );

  Future<dynamic> pushPaymentStepper() => push<dynamic>(Routes.paymentStepper);

  Future<dynamic> pushPaymentDetailsScaffold() =>
      push<dynamic>(Routes.paymentDetailsScaffold);

  Future<dynamic> pushPaymentDetailInformationScaffold({
    Key key,
    PaymentDetails paymentDetails,
    bool isSender,
  }) =>
      push<dynamic>(
        Routes.paymentDetailInformationScaffold,
        arguments: PaymentDetailInformationScaffoldArguments(
            key: key, paymentDetails: paymentDetails, isSender: isSender),
      );

  Future<dynamic> pushWorkshopDetails({
    Key key,
    Workshop workshop,
  }) =>
      push<dynamic>(
        Routes.workshopDetails,
        arguments: WorkshopDetailsArguments(key: key, workshop: workshop),
      );

  Future<dynamic> pushWorkshopConfirmation({
    Key key,
    Workshop workshop,
  }) =>
      push<dynamic>(
        Routes.workshopConfirmation,
        arguments: WorkshopConfirmationArguments(key: key, workshop: workshop),
      );

  Future<dynamic> pushWorkshopDetailsInformation({
    Key key,
    WorkshopPayment workshopPayment,
  }) =>
      push<dynamic>(
        Routes.workshopDetailsInformation,
        arguments: WorkshopDetailsInformationArguments(
            key: key, workshopPayment: workshopPayment),
      );

  Future<dynamic> pushPaymentSuccessful({
    Key key,
    String amount,
    String quantity,
    String itemId,
    Map<String, dynamic> address,
    String peerId,
  }) =>
      push<dynamic>(
        Routes.paymentSuccessful,
        arguments: PaymentSuccessfulArguments(
            key: key,
            amount: amount,
            quantity: quantity,
            itemId: itemId,
            address: address,
            peerId: peerId),
      );

  Future<dynamic> pushWorkshopItemDetails({
    Key key,
    Workshop workshop,
  }) =>
      push<dynamic>(
        Routes.workshopItemDetails,
        arguments: WorkshopItemDetailsArguments(key: key, workshop: workshop),
      );

  Future<dynamic> pushPaymentStepperScaffold() =>
      push<dynamic>(Routes.paymentStepperScaffold);

  Future<dynamic> pushStreamingHostScaffold({
    Key key,
    String workshopId,
    String hostId,
  }) =>
      push<dynamic>(
        Routes.streamingHostScaffold,
        arguments: StreamingHostScaffoldArguments(
            key: key, workshopId: workshopId, hostId: hostId),
      );

  Future<dynamic> pushStreamingAudienceScaffold({
    Key key,
    String workshopId,
    String hostId,
  }) =>
      push<dynamic>(
        Routes.streamingAudienceScaffold,
        arguments: StreamingAudienceScaffoldArguments(
            key: key, workshopId: workshopId, hostId: hostId),
      );

  Future<dynamic> pushPaymentFormScaffold({
    Key key,
    int amount,
    double cost,
    String itemId,
    String peerId,
    bool isItem,
    Workshop workshop,
  }) =>
      push<dynamic>(
        Routes.paymentFormScaffold,
        arguments: PaymentFormScaffoldArguments(
            key: key,
            amount: amount,
            cost: cost,
            itemId: itemId,
            peerId: peerId,
            isItem: isItem,
            workshop: workshop),
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

/// MoreInfoScaffold arguments holder class
class MoreInfoScaffoldArguments {
  final Key key;
  final HomeItem homeItem;
  MoreInfoScaffoldArguments({this.key, this.homeItem});
}

/// MessagingScaffold arguments holder class
class MessagingScaffoldArguments {
  final Key key;
  final String peerId;
  final String peerName;
  final String userId;
  final String imageUrl;
  MessagingScaffoldArguments(
      {this.key,
      @required this.peerId,
      @required this.peerName,
      @required this.userId,
      @required this.imageUrl});
}

/// FullScreenImage arguments holder class
class FullScreenImageArguments {
  final Key key;
  final String imageUrl;
  FullScreenImageArguments({this.key, this.imageUrl});
}

/// PaymentDetailInformationScaffold arguments holder class
class PaymentDetailInformationScaffoldArguments {
  final Key key;
  final PaymentDetails paymentDetails;
  final bool isSender;
  PaymentDetailInformationScaffoldArguments(
      {this.key, this.paymentDetails, this.isSender});
}

/// WorkshopDetails arguments holder class
class WorkshopDetailsArguments {
  final Key key;
  final Workshop workshop;
  WorkshopDetailsArguments({this.key, this.workshop});
}

/// WorkshopConfirmation arguments holder class
class WorkshopConfirmationArguments {
  final Key key;
  final Workshop workshop;
  WorkshopConfirmationArguments({this.key, this.workshop});
}

/// WorkshopDetailsInformation arguments holder class
class WorkshopDetailsInformationArguments {
  final Key key;
  final WorkshopPayment workshopPayment;
  WorkshopDetailsInformationArguments({this.key, this.workshopPayment});
}

/// PaymentSuccessful arguments holder class
class PaymentSuccessfulArguments {
  final Key key;
  final String amount;
  final String quantity;
  final String itemId;
  final Map<String, dynamic> address;
  final String peerId;
  PaymentSuccessfulArguments(
      {this.key,
      this.amount,
      this.quantity,
      this.itemId,
      this.address,
      this.peerId});
}

/// WorkshopItemDetails arguments holder class
class WorkshopItemDetailsArguments {
  final Key key;
  final Workshop workshop;
  WorkshopItemDetailsArguments({this.key, this.workshop});
}

/// StreamingHostScaffold arguments holder class
class StreamingHostScaffoldArguments {
  final Key key;
  final String workshopId;
  final String hostId;
  StreamingHostScaffoldArguments({this.key, this.workshopId, this.hostId});
}

/// StreamingAudienceScaffold arguments holder class
class StreamingAudienceScaffoldArguments {
  final Key key;
  final String workshopId;
  final String hostId;
  StreamingAudienceScaffoldArguments({this.key, this.workshopId, this.hostId});
}

/// PaymentFormScaffold arguments holder class
class PaymentFormScaffoldArguments {
  final Key key;
  final int amount;
  final double cost;
  final String itemId;
  final String peerId;
  final bool isItem;
  final Workshop workshop;
  PaymentFormScaffoldArguments(
      {this.key,
      this.amount,
      this.cost,
      this.itemId,
      this.peerId,
      this.isItem,
      this.workshop});
}

/// ItemFormPage arguments holder class
class ItemFormPageArguments {
  final Key key;
  final Item editedItem;
  ItemFormPageArguments({this.key, @required this.editedItem});
}
