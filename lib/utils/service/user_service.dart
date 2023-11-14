import 'package:dio/dio.dart';
import 'package:ecommerce_mobile/model/user_model.dart';
import 'package:ecommerce_mobile/utils/constants.dart';

class UserService {
  final Dio dio = Dio();

  Future<List<User>> loginUser(String username, String password) async {
  try {
    Response response = await dio.post(baseUrl + loginEndpoint, data: {
      'username': username,
      'password': password,
    });

    Map<String, dynamic> responseData = response.data;

    if (responseData['status'] == 'login success (200)') {
      List<dynamic> data = responseData['data'];

      List<User> users = data.map((user) => User.fromJson(user)).toList();

      print(users);

      return users;
    } else {
      throw Exception("Login failed: ${responseData['message']}");
    }
  } catch (e) {
    throw Exception("Login failed: $e");
  }
}

}
