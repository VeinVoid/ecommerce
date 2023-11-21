import 'package:ecommerce_mobile/pages/account_page/account_page_binding.dart';
import 'package:ecommerce_mobile/pages/account_page/account_page_view.dart';
import 'package:ecommerce_mobile/pages/address_page/address_page_binding.dart';
import 'package:ecommerce_mobile/pages/address_page/address_page_view.dart';
import 'package:ecommerce_mobile/pages/boarding_page/onboarding.dart';
import 'package:ecommerce_mobile/pages/cart_page/cart_page_binding.dart';
import 'package:ecommerce_mobile/pages/cart_page/cart_page_view.dart';
import 'package:ecommerce_mobile/pages/category_page/category_page_binding.dart';
import 'package:ecommerce_mobile/pages/category_page/category_page_view.dart';
import 'package:ecommerce_mobile/pages/detail_page/detail_page_binding.dart';
import 'package:ecommerce_mobile/pages/detail_page/detail_page_view.dart';
import 'package:ecommerce_mobile/pages/home_page/home_page_binding.dart';
import 'package:ecommerce_mobile/pages/home_page/home_page_view.dart';
import 'package:ecommerce_mobile/pages/login_page/login_page_binding.dart';
import 'package:ecommerce_mobile/pages/login_page/login_page_view.dart';
import 'package:ecommerce_mobile/pages/most_populet_page/most_populer_page_binding.dart';
import 'package:ecommerce_mobile/pages/most_populet_page/most_populer_page_view.dart';
import 'package:ecommerce_mobile/pages/my_order_page/my_order_binding.dart';
import 'package:ecommerce_mobile/pages/my_order_page/my_order_view.dart';
import 'package:ecommerce_mobile/pages/profile_page/profile_page_binding.dart';
import 'package:ecommerce_mobile/pages/profile_page/profile_page_view.dart';
import 'package:ecommerce_mobile/pages/register_page/register_page_binding.dart';
import 'package:ecommerce_mobile/pages/register_page/register_page_view.dart';
import 'package:ecommerce_mobile/pages/splashscreen.dart';
import 'package:ecommerce_mobile/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages{

  static const INITIAL = Route.SPLASHSCREEN_PAGE;

  static final routes = [
    GetPage(
      name: Path.SPLASHSCREEN_PAGE, 
      page: () => SplashScreen(),
      transition: Transition.noTransition
    ),
    GetPage(
      name: Path.BOARDING_PAGE, 
      page: () => OnboardingScreen(),
      transition: Transition.noTransition
    ),
    GetPage(
      name: Path.LOGIN_PAGE, 
      page: () => LoginPage(),
      binding: LoginPageBinding(),
      transition: Transition.noTransition
    ),
    GetPage(
      name: Path.REGISTER_PAGE, 
      page: () => RegisterPage(),
      binding: RegisterPageBinding(),
      transition: Transition.noTransition
    ),
    GetPage(
      name: Path.HOME_PAGE, 
      page: () => HomePage(),
      binding: HomePageBinding(),
      transition: Transition.noTransition
    ),
    GetPage(
      name: Path.CATEGORY_PAGE, 
      page: () => CategoryPage(),
      binding: CategoryPageBinding(),
      transition: Transition.noTransition
    ),
    GetPage(
      name: Path.MOSTPOPULER_PAGE, 
      page: () => MostPopulerPage(),
      binding: MostPopulerPageBinding(),
      transition: Transition.noTransition
    ),
    GetPage(
      name: Path.DETAIL_PAGE, 
      page: () => DetailPage(),
      binding: DetailPageBinding(),
      transition: Transition.noTransition
    ),
    GetPage(
      name: Path.PROFILE_PAGE, 
      page: () => ProfilePage(),
      binding: ProfilePageBinding(),
      transition: Transition.noTransition
    ),
    GetPage(
      name: Path.CART_PAGE, 
      page: () => CartPage(),
      binding: CartPageBinding(),
      transition: Transition.noTransition
    ),
    GetPage(
      name: Path.ACCOUNT_PAGE, 
      page: () => AccounPage(),
      binding: AccountPageBinding(),
      transition: Transition.noTransition
    ),
    GetPage(
      name: Path.MYORDER_PAGE, 
      page: () => MyOrderPage(),
      binding: MyOrderBinding(),
      transition: Transition.noTransition
    ),
    GetPage(
      name: Path.MYADDRESS_PAGE, 
      page: () => AddressPage(),
      binding: AddressBinding(),
      transition: Transition.noTransition
    ),
  ];
}