import 'package:ecommerce_mobile/global/widgets/textform_login.dart';
import 'package:flutter/material.dart';

class LoginPageComponentTwo extends StatelessWidget {
  const LoginPageComponentTwo({
    super.key,
    required this.usernameController,
    required this.passwordController
    });

    final TextEditingController usernameController;
    final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;
    double height= MediaQuery.sizeOf(context).height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        textFormLogin(
          width: width * 0.8,
          height: height * 0.06,
          hintText: "Username",
          icon: Icons.person,
          controller: usernameController
        ),
        SizedBox(height: height * 0.05),
        textFormLogin(
          width: width * 0.8,
          height: height * 0.06,
          hintText: "Password",
          icon: Icons.lock,
          controller: passwordController
        ),
        SizedBox(height: height * 0.03),
        Text(
          "Forgot  your password?"
        )
      ],
    );
  }
}