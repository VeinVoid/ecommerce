import 'package:ecommerce_mobile/pages/register_page/register_page_controller.dart';
import 'package:get/get.dart';

class RegisterPageBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<RegisterPageController>(
      () => RegisterPageController()
    );
  }
}