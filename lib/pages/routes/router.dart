import 'package:auto_route/auto_route_annotations.dart';
import 'package:creatispace/pages/auth/forgotten_password/forgotten_password.dart';
import 'package:creatispace/pages/auth/sign_in/sign_in_page.dart';
import 'package:creatispace/pages/auth/sign_up/sign_up_page.dart';
import 'package:creatispace/pages/auth/verify_email/email_verified_page.dart';
import 'package:creatispace/pages/home/home_scaffold.dart';
import 'package:creatispace/pages/items/items_form/item_form_page.dart';
import 'package:creatispace/pages/items/items_form/workshop_form_page.dart';
import 'package:creatispace/pages/items/items_overview/items_overview_page.dart';
import 'package:creatispace/pages/items/workshop_details/workshop_details.dart';
import 'package:creatispace/pages/messaging/following_list/following_scaffold.dart';
import 'package:creatispace/pages/messaging/messaging/messaging_scaffold.dart';
import 'package:creatispace/pages/messaging/messaging/widgets/full_screen_image.dart';
import 'package:creatispace/pages/messaging/user_list/user_list.dart';
import 'package:creatispace/pages/messaging/user_list/user_list_with_scaffold.dart';
import 'package:creatispace/pages/payment_detail_information/payment_detail_information_scaffold.dart';
import 'package:creatispace/pages/payment_details/payment_details_scaffold.dart';
import 'package:creatispace/pages/payment_details/workshop_details.dart';
import 'package:creatispace/pages/payment_setup/payment_stepper.dart';
import 'package:creatispace/pages/profile/edit_profile/edit_profile_form_page.dart';
import 'package:creatispace/pages/profile/following_followers/user_friends_scaffold.dart';
import 'package:creatispace/pages/profile/peer_profile/peer_profile_scaffold.dart';
import 'package:creatispace/pages/profile/user_profile//user_profile_scaffold.dart';
import 'package:creatispace/pages/purchase/more_info/more_info_scaffold.dart';
import 'package:creatispace/pages/purchase/payment_form/payment_form_scaffold.dart';
import 'package:creatispace/pages/purchase/payment_form/payment_successful.dart';
import 'package:creatispace/pages/search/search_scaffold.dart';
import 'package:creatispace/pages/splash/splash_page.dart';
import 'package:creatispace/pages/streaming/audience/streaming_audience_scaffold.dart';
import 'package:creatispace/pages/streaming/host/streaming_host_scaffold.dart';
import 'package:creatispace/pages/workshop/workshop_confirmation/workshop_confirmation.dart';
import 'package:creatispace/pages/workshop/workshop_details/workshop_details.dart';
import 'package:creatispace/shared/navigation_bar.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: SignUpPage),
    MaterialRoute(page: ForgottenPasswordPage),
    MaterialRoute(page: ItemsOverviewPage),
    MaterialRoute(page: EmailVerifiedPage),
    MaterialRoute(page: NavigationBar),
    MaterialRoute(page: ProfileFormPageScaffold),
    MaterialRoute(page: UserList),
    MaterialRoute(page: UserListScaffold),
    MaterialRoute(page: WorkshopForm),
    MaterialRoute(page: FollowingScaffold),
    MaterialRoute(page: UserFriendsScaffold),
    MaterialRoute(page: SearchScaffold),
    MaterialRoute(page: UserProfileScaffold),
    MaterialRoute(page: PeerProfileScaffold),
    MaterialRoute(page: MoreInfoScaffold),
    MaterialRoute(page: HomeScaffold),
    MaterialRoute(page: MessagingScaffold),
    MaterialRoute(page: FullScreenImage),
    MaterialRoute(page: PaymentStepper),
    MaterialRoute(page: PaymentDetailsScaffold),
    MaterialRoute(page: PaymentDetailInformationScaffold),
    MaterialRoute(page: WorkshopDetails),
    MaterialRoute(page: WorkshopConfirmation),
    MaterialRoute(page: WorkshopDetailsInformation),
    MaterialRoute(page: PaymentSuccessful),
    MaterialRoute(page: WorkshopItemDetails),
    MaterialRoute(page: PaymentStepperScaffold),
    MaterialRoute(page: StreamingHostScaffold),
    MaterialRoute(page: StreamingAudienceScaffold),
    MaterialRoute(page: PaymentFormScaffold),
    MaterialRoute(page: ItemFormPage, fullscreenDialog: true),
    

  ],
  generateNavigationHelperExtension: true,
)
class $BaseRouter {}
