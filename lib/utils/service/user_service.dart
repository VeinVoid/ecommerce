import 'dart:io';
import 'package:dio/dio.dart';
import 'package:ecommerce_mobile/model/user_model.dart';
import 'package:ecommerce_mobile/utils/constants.dart';
import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserService {
  final Dio dio = Dio();
  

  loginUser(String username, String password) async {

    try {
      Response response = await dio.post(baseUrl + loginEndpoint, data: {
        'username': username,
        'password': password,
      });

      Map<String, dynamic> responseData = response.data;
      
      User user = User.fromJson(responseData['data']);

      await saveUserDataToSharedPreferences(user);

      print(user.username);
      print(user.phoneNumber);
      print(user.userSaldo);
      print(user.photoProfile);

      Get.offAllNamed('/home');
      print(response.data);

    } catch (e) {
      throw Exception("Login failed: $e");
    }
  }

  registerUser(String username, String email, String password, int phone_number, int user_saldo) async {

    try {
      Response response = await dio.post(baseUrl + registerEndpoint, data: {
        'username': username,
        'email': email,
        'password': password,
        'phone_number': phone_number,
        'user_saldo': user_saldo,
        'photo_profile': 'p',
      });

      Get.back();
      print(response.statusCode);

    } catch (e) {
      throw Exception("Login failed: $e");
    }
  }

  saveUserDataToSharedPreferences(User user) async {
    print(user.username);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('username', user.username);
    prefs.setString('phoneNumber', user.phoneNumber);
    prefs.setInt('userSaldo', user.userSaldo);
    prefs.setString('photoProfile', user.photoProfile);
  }
}
