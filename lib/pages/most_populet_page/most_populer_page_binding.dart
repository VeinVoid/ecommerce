import 'package:ecommerce_mobile/pages/most_populet_page/most_populer_page_controller.dart';
import 'package:get/get.dart';

class MostPopulerPageBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<MostPopulerPageController>(
      () => MostPopulerPageController()
    );
  }
}