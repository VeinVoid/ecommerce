import 'package:ecommerce_mobile/global/widgets/textform_login.dart';
import 'package:flutter/material.dart';

class RegisterPageComponentTwo extends StatelessWidget {
  const RegisterPageComponentTwo({
    super.key,
    required this.usernameController,
    required this.emailController,
    required this.passwordController,
    required this.phoneNumberController
    });

  final TextEditingController usernameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController phoneNumberController;

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;
    double height= MediaQuery.sizeOf(context).height;

    return Column(
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
        SizedBox(height: height * 0.05),
        textFormLogin(
          width: width * 0.8, 
          height: height * 0.06, 
          hintText: "Email", 
          icon: Icons.mail,
          controller: emailController
        ),
        SizedBox(height: height * 0.05),
        textFormLogin(
          width: width * 0.8, 
          height: height * 0.06, 
          hintText: "Mobile", 
          icon: Icons.phone,
          controller: phoneNumberController
        )
      ],
    );
  }
}