import 'package:ecommerce_mobile/pages/my_order_page/my_order_controller.dart';
import 'package:ecommerce_mobile/pages/profile_page/profile_page_controller.dart';
import 'package:get/get.dart';

class MyOrderBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<MyOrderPageController>(
      () => MyOrderPageController()
    );
  }
}