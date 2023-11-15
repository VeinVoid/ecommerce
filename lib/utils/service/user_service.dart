import 'package:dio/dio.dart';
import 'package:ecommerce_mobile/model/user_model.dart';
import 'package:ecommerce_mobile/utils/constants.dart';

class UserService {
  final Dio dio = Dio();

  Future<void> registerUser(String username, String email, String password, int phone_number, int user_saldo) async {

    try {
      Response response = await dio.post(baseUrl + loginEndpoint, data: {
        'username': username,
        'email': email,
        'password': password,
        'phone_number': phone_number,
        'user_saldo': user_saldo
      });

      print(response.statusCode);
    } catch (e) {
      throw Exception("Login failed: $e");
    }
  }
}
