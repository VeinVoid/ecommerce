import 'package:ecommerce_mobile/utils/service/user_service.dart';
import 'package:get/get.dart';

class RegisterPageController extends GetxController{
  final UserService userService = UserService();

  Future<void> registerUser(String username, String email, String password, int phoneNumber, int userSaldo) async {
    try {

      await userService.registerUser(username, email, password, phoneNumber, userSaldo);
    } catch (e) {
      Get.snackbar("Error", "Registration failed: $e");
    }
  }
}