import 'package:get/get.dart';
import 'package:greenplace/src/screens/irrigation/irrigation_tab.dart';

import '../screens/auth/screens/sign_in_screen.dart';
import '../screens/auth/screens/sign_up_screen.dart';
import '../screens/bases/base_screen.dart';
import '../screens/plants/plants_tab.dart';
import '../screens/splash/splash_screen.dart';
import 'routes.dart';

abstract class AppPages {
  static final pages = <GetPage>[
    GetPage(name: Routes.splashRoute, page: () => const SplashScreen()),
    GetPage(name: Routes.signinRoute, page: () => const SignInScreen()),
    GetPage(name: Routes.signupRoute, page: () => const SignUpScreen()),
    GetPage(name: Routes.baseRoute, page: () => const BaseScreen()),
    GetPage(name: Routes.plantsRoute, page: () => const PlantsTab()),
    GetPage(name: Routes.irrigationRoute, page: () => const IrrigationTab()),
  ];
}
