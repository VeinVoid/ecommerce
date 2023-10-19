import 'package:ecommerce_mobile/pages/login_page/login_page_controller.dart';
import 'package:get/get.dart';

class LoginPageBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<LoginPageController>(
      () => LoginPageController()
    );
  }
}