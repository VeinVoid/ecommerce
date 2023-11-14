import 'package:get/get.dart';
import 'package:ecommerce_mobile/model/user_model.dart';
import 'package:ecommerce_mobile/utils/service/user_service.dart';

class LoginPageController extends GetxController{
  final UserService userService = UserService();
  RxList<User> users = <User>[].obs;

  void loginUser({required String username, required String password}) async {
    try {
      List<User> loggedInUsers = await userService.loginUser(
        username,
        password,
      );

      users.assignAll(loggedInUsers);

      print(users);
      
    } catch (e) {
      Get.snackbar(
        'Error',
        'Login failed: $e',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}