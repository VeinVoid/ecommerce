import 'package:ecommerce_mobile/utils/service/user_service.dart';
import 'package:get/get.dart';

class RegisterPageController extends GetxController{
  final UserService userService = UserService();

  void registerUser(String username, String email, String password, int phoneNumber) {
    userService.registerUser(username, email, password, phoneNumber, 0);
  }
}