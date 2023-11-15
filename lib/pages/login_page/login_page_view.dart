import 'package:ecommerce_mobile/pages/login_page/components/login_page_componentone.dart';
import 'package:ecommerce_mobile/pages/login_page/components/login_page_componentthree.dart';
import 'package:ecommerce_mobile/pages/login_page/components/login_page_componenttwo.dart';
import 'package:ecommerce_mobile/pages/login_page/login_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    final LoginPageController loginPageController = Get.find<LoginPageController>();
    loginPageController.onInit();

    double width = MediaQuery.sizeOf(context).width;
    double height= MediaQuery.sizeOf(context).height;

    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: Column(
        children: [
          LoginPageComponentOne(),
          SizedBox(height: height * 0.1),
          LoginPageComponentTwo(
            usernameController: usernameController,
            passwordController: passwordController,
          ),
          SizedBox(height: height * 0.05),
          LoginPageComponentThree(
            onTap: () {
              Get.toNamed('/home');
            },
          )
        ],
      ),
    );
  }
}