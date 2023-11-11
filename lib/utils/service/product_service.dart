import 'package:dio/dio.dart';
import 'package:ecommerce_mobile/model/product_model.dart';
import 'package:ecommerce_mobile/utils/constants.dart';


class ProductService{
  final Dio dio = Dio();

  Future<List<Product>> getProduct() async{
    try {
      Response response = await dio.get(baseUrl+productEndpoint);
      Map<String, dynamic> responseData = response.data;

      if(responseData['status'] == 'get success (200)'){
        List<dynamic> data = responseData['data'];

        List<Product> products = data.map((product) => Product.fromJson(product)).toList();

        print(products);

        return products;
      } else {
        throw Exception("Error fetching products: ${responseData['massage']}");
      }

    } catch (e) {
      throw Exception("Error fetching categories: $e");
    }
  }
}