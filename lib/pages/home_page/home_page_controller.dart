import 'package:ecommerce_mobile/model/category_model.dart';
import 'package:ecommerce_mobile/model/product_model.dart';
import 'package:ecommerce_mobile/utils/service/category_service.dart';
import 'package:ecommerce_mobile/utils/service/product_service.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController{
  final CategoryService categoryService = CategoryService();
  final ProductService productService = ProductService();
  RxList<Category> categories = <Category>[].obs;
  RxList<Product> products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchCategories();
    fetchProducts();
  }

  Future<void> fetchCategories() async {
    try {
      List<Category> fetchedCategories = await categoryService.getCategory();

      categories.assignAll(fetchedCategories);
    } catch (error) {
      print("Error fetching categories: $error");
    }
  }

  Future<void> fetchProducts() async {
    try {
      List<Product> fetchedProducts = await productService.getProduct();

      products.assignAll(fetchedProducts);
    } catch (error) {
      print("Error fetching categories: $error");
    }
  }
}
