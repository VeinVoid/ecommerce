import 'package:ecommerce_mobile/pages/boarding_page/boarding_page_binding.dart';
import 'package:ecommerce_mobile/pages/boarding_page/boarding_page_view.dart';
import 'package:ecommerce_mobile/pages/home_page/home_page_binding.dart';
import 'package:ecommerce_mobile/pages/home_page/home_page_view.dart';
import 'package:ecommerce_mobile/pages/login_page/login_page_binding.dart';
import 'package:ecommerce_mobile/pages/login_page/login_page_view.dart';
import 'package:ecommerce_mobile/pages/profile_page/profile_page_binding.dart';
import 'package:ecommerce_mobile/pages/profile_page/profile_page_view.dart';
import 'package:ecommerce_mobile/pages/setting_page/setting_page_binding.dart';
import 'package:ecommerce_mobile/pages/setting_page/setting_page_view.dart';
import 'package:ecommerce_mobile/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages{

  static const INITIAL = Path.BOARDING_PAGE;

  static final routes = [
    GetPage(
      name: Path.BOARDING_PAGE, 
      page: () => BoardingPage(),
      binding: BoardingPageBinding(),
      transition: Transition.noTransition
    ),
    GetPage(
      name: Path.LOGIN_PAGE, 
      page: () => LoginPage(),
      binding: LoginPageBinding(),
      transition: Transition.noTransition
    ),
    GetPage(
      name: Path.HOME_PAGE, 
      page: () => HomePage(),
      binding: HomePageBinding(),
      transition: Transition.noTransition
    ),
    GetPage(
      name: Path.PROFILE_PAGE, 
      page: () => ProfilePage(),
      binding: ProfilePageBinding(),
      transition: Transition.noTransition
    ),
    GetPage(
      name: Path.SETTING_PAGE, 
      page: () => SettingPage(),
      binding: SettingPageBinding(),
      transition: Transition.noTransition
    ),
  ];
}