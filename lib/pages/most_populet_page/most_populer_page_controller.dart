import 'package:ecommerce_mobile/model/product_model.dart';
import 'package:get/get.dart';

class MostPopulerPageController extends GetxController{
  RxList<Product> products = <Product>[].obs;
  
  @override
  void onInit() {
    super.onInit();
    getProductData();
  }

  void getProductData(){
    final productModel = Get.arguments['productModel'];
    if (productModel != null && productModel is List<Product>) {
      products.assignAll(productModel);
      products.sort((a, b) => b.productSaled.compareTo(a.productSaled));
    }
  }
}