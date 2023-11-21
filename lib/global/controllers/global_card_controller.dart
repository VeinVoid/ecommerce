import 'package:ecommerce_mobile/model/product_model.dart';
import 'package:ecommerce_mobile/utils/service/user_service.dart';
import 'package:get/get.dart';

class GlobalController extends GetxController{
    RxList<Product> products = <Product>[].obs;
    RxInt totalPrice = 0.obs;

  @override
  void onInit() {
    super.onInit();
    sumPrice();
  }

  void addToCart(Product product) {
    products.add(product);
    print(products.map((product) => product.productName).toList());
  }

  void sumPrice(){
    int total = 0;
    for (Product product in products) {
      total += product.productPrice;
    }

    totalPrice.value = total;
  }

  void removeProductAtIndex(int index) {
    if (index >= 0 && index < products.length) {
      products.removeAt(index);
      sumPrice();
    }
  }

  void removeAll() {
    products.clear();
    sumPrice();
  }
}