import 'package:ecommerce_mobile/model/product_model.dart';
import 'package:get/get.dart';

class CartPageController extends GetxController{
    RxList<Product> products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
  }
}