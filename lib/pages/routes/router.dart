import 'package:auto_route/auto_route_annotations.dart';
import 'package:creatispace/pages/auth/forgotten_password/forgotten_password.dart';
import 'package:creatispace/pages/auth/sign_in/sign_in_page.dart';
import 'package:creatispace/pages/auth/sign_up/sign_up_page.dart';
import 'package:creatispace/pages/items/items_form/item_form_page.dart';
import 'package:creatispace/pages/items/items_overview/items_overview_page.dart';
import 'package:creatispace/pages/splash/splash_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: SignUpPage),
    MaterialRoute(page: ForgottenPasswordPage),
    MaterialRoute(page: ItemsOverviewPage),
    MaterialRoute(page: ItemFormPage, fullscreenDialog: true),
    

  ],
  generateNavigationHelperExtension: true,
)
class $BaseRouter {}
