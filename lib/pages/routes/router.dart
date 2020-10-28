import 'package:auto_route/auto_route_annotations.dart';
import 'package:creatispace/pages/auth/forgotten_password/forgotten_password.dart';
import 'package:creatispace/pages/auth/sign_in/sign_in_page.dart';
import 'package:creatispace/pages/auth/sign_up/sign_up_page.dart';
import 'package:creatispace/pages/splash/splash_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: SignUpPage),
    MaterialRoute(page: ForgottenPasswordPage),
    MaterialRoute(page: SplashPage, initial: true)
  ],
  generateNavigationHelperExtension: true,
)
class $BaseRouter {}
