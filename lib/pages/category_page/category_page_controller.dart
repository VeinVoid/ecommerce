import 'package:ecommerce_mobile/model/product_model.dart';
import 'package:get/get.dart';

class CategoryPageController extends GetxController{
  RxList<Product> products = <Product>[].obs;
  
  @override
  void onInit() {
    super.onInit();
    getProductData();
  }

  void getProductData(){
    final productModel = Get.arguments['productModel'];
    final categoryIndex = Get.arguments['categoryIndex'];
    if (productModel != null && productModel is List<Product>) {
      products.assignAll(productModel.where((product) => product.categoryId == categoryIndex + 1));
    }
  }
}