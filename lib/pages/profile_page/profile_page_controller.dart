import 'dart:convert';
import 'dart:typed_data';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePageController extends GetxController {
  RxString username = ''.obs;
  RxInt saldo = 0.obs;
  RxString photo_profile = ''.obs;

  @override
  void onInit() {
    super.onInit();
    loadUsername();
  }

  loadUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    username.value = prefs.getString('username') ?? '';
    saldo.value = prefs.getInt('userSaldo') ?? 0;
    photo_profile.value = prefs.getString('username') ?? '';
  }

  clearSharedPreferences() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    Get.offAllNamed('/login');
  }
}
