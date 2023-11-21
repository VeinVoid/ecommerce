
abstract class Route{
  Route._();
  static const SPLASHSCREEN_PAGE = Path.SPLASHSCREEN_PAGE;
  static const BOARDING_PAGE = Path.BOARDING_PAGE;
  static const LOGIN_PAGE = Path.LOGIN_PAGE;
  static const REGISTER_PAGE = Path.REGISTER_PAGE;
  static const HOME_PAGE = Path.HOME_PAGE;
  static const DETAIL_PAGE = Path.DETAIL_PAGE;
  static const CATEGORY_PAGE = Path.CATEGORY_PAGE;
  static const MOSTPOPULER_PAGE = Path.MOSTPOPULER_PAGE;
  static const PROFILE_PAGE = Path.PROFILE_PAGE;
  static const CART_PAGE = Path.CART_PAGE;
  static const ACCOUNT_PAGE = Path.ACCOUNT_PAGE;
  static const MYORDER_PAGE = Path.MYORDER_PAGE;
  static const MYADDRESS_PAGE = Path.MYADDRESS_PAGE;
}

abstract class Path{
  Path._();
  static const SPLASHSCREEN_PAGE = "/";
  static const BOARDING_PAGE = "/boarding";
  static const LOGIN_PAGE = "/login";
  static const REGISTER_PAGE = "/register";
  static const HOME_PAGE = "/home";
  static const DETAIL_PAGE = "/detail";
  static const CATEGORY_PAGE = "/category";
  static const MOSTPOPULER_PAGE = "/mostpopuler";
  static const PROFILE_PAGE = "/profile";
  static const CART_PAGE = "/cart";
  static const ACCOUNT_PAGE = "/account";
  static const MYORDER_PAGE = "/myorder";
  static const MYADDRESS_PAGE = "/myaddress";
}