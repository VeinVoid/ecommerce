import 'package:ecommerce_mobile/pages/category_page/category_page_controller.dart';
import 'package:get/get.dart';

class CategoryPageBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<CategoryPageController>(
      () => CategoryPageController()
    );
  }
}