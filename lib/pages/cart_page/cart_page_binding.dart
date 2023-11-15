import 'package:ecommerce_mobile/pages/cart_page/cart_page_controller.dart';
import 'package:get/get.dart';

class CartPageBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<CartPageController>(
      () => CartPageController()
    );
  }
}