import 'package:ecommerce_mobile/pages/address_page/address_page_controller.dart';
import 'package:get/get.dart';

class AddressBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<AddressController>(
      () => AddressController()
    );
  }
}