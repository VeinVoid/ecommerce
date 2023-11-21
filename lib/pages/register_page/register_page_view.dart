import 'package:ecommerce_mobile/pages/register_page/components/register_page.componentthree.dart';
import 'package:ecommerce_mobile/pages/register_page/components/register_page_componentone.dart';
import 'package:ecommerce_mobile/pages/register_page/components/register_page_componenttwo.dart';
import 'package:ecommerce_mobile/pages/register_page/register_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {

    final RegisterPageController registerPageController = Get.find<RegisterPageController>();

    double width = MediaQuery.sizeOf(context).width;
    double height= MediaQuery.sizeOf(context).height;

    final TextEditingController usernameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController phoneNumberController = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RegisterPageComponentOne(),
            SizedBox(height: height * 0.05),
            RegisterPageComponentTwo(
              usernameController: usernameController,
              emailController: emailController,
              passwordController: passwordController,
              phoneNumberController: phoneNumberController,
            ),
            RegisterPageComponentThree(
              onTap: () {
                registerPageController.registerUser(
                  usernameController.text, 
                  emailController.text, 
                  passwordController.text, 
                  int.parse(phoneNumberController.text)
                );
              },
            )
          ],
        ),
      ),
    );
  }
}