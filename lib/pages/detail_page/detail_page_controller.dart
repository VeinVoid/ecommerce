import 'package:ecommerce_mobile/model/product_model.dart';
import 'package:get/get.dart';

class DetailPageController extends GetxController{
  final RxInt quantits = 1.obs;
  RxList<Product> products = <Product>[].obs;
  
  @override
  void onInit() {
    super.onInit();
    getProductData();
  }

  void getProductData(){
    final productModel = Get.arguments;
    products.assign(productModel);
  }

  void plusQuantity(){
    quantits.value++;
  }

  void minusQuantity(){
    if(quantits > 1){
      quantits.value--;
    }
    else{
      print('Can`t be null');
    }
  }
}