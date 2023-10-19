import 'package:ecommerce_mobile/pages/detail_page/detail_page_controller.dart';
import 'package:get/get.dart';

class DetailPageBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<DetailPageController>(
      () => DetailPageController()
    );
  }
}