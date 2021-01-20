import 'package:auto_route/auto_route_annotations.dart';
import 'package:creatispace/pages/auth/forgotten_password/forgotten_password.dart';
import 'package:creatispace/pages/auth/sign_in/sign_in_page.dart';
import 'package:creatispace/pages/auth/sign_up/sign_up_page.dart';
import 'package:creatispace/pages/auth/verify_email/email_verified_page.dart';
import 'package:creatispace/pages/items/items_form/item_form_page.dart';
import 'package:creatispace/pages/items/items_overview/items_overview_page.dart';
import 'package:creatispace/pages/messaging/messaging.dart';
import 'package:creatispace/pages/messaging/messaging/messaging_scaffold.dart';
import 'package:creatispace/pages/messaging/messaging/widgets/full_screen_image.dart';
import 'package:creatispace/pages/messaging/messaging_improved.dart';
import 'package:creatispace/pages/messaging/user_list/user_list.dart';
import 'package:creatispace/pages/messaging/user_list/user_list_with_scaffold.dart';
import 'package:creatispace/pages/splash/splash_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: SignUpPage),
    MaterialRoute(page: ForgottenPasswordPage),
    MaterialRoute(page: ItemsOverviewPage),
    MaterialRoute(page: EmailVerifiedPage),
    MaterialRoute(page: Chat),
    MaterialRoute(page: UserList),
    MaterialRoute(page: UserListScaffold),
    MaterialRoute(page: MessagingScaffold),
    MaterialRoute(page: FullScreenImage),
    MaterialRoute(page: ItemFormPage, fullscreenDialog: true),
    

  ],
  generateNavigationHelperExtension: true,
)
class $BaseRouter {}
