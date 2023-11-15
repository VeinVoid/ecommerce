import 'package:dio/dio.dart';
import 'package:ecommerce_mobile/model/category_model.dart';
import 'package:ecommerce_mobile/utils/constants.dart';


class CategoryService{
  final Dio dio = Dio();

  getCategory() async{
    try {
      Response response = await dio.get(baseUrl+categoryEndpoint);
      Map<String, dynamic> responseData = response.data;

      if(responseData['status'] == 'get success (200)'){
        List<dynamic> data = responseData['data'];

        List<Category> categories = data.map((category) => Category.fromJson(category)).toList();

        print(categories);

        return categories;
      } else {
        throw Exception("Error fetching categories: ${responseData['massage']}");
      }

    } catch (e) {
      throw Exception("Error fetching categories: $e");
    }
  }
}