import 'package:ecommerce_mobile/pages/boarding_page/boarding_page_controller.dart';
import 'package:get/get.dart';

class BoardingPageBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<BoardingPageController>(
      () => BoardingPageController()
    );
  }
}