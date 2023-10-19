import 'package:ecommerce_mobile/pages/setting_page/setting_page_controller.dart';
import 'package:get/get.dart';

class SettingPageBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SettingPageController>(
      () => SettingPageController()
    );
  }
}