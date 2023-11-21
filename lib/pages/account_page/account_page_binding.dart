import 'package:get/get.dart';

class AccountPageBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<AccountPageBinding>(
      () => AccountPageBinding()
    );
  }
}