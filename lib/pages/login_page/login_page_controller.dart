import 'package:get/get.dart';
import 'package:ecommerce_mobile/model/user_model.dart';
import 'package:ecommerce_mobile/utils/service/user_service.dart';

class LoginPageController extends GetxController{
  final UserService userService = UserService();
  RxList<User> users = <User>[].obs;

  
}