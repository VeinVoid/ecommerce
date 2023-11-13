import 'package:ecommerce_mobile/pages/login_page/components/login_page_componentone.dart';
import 'package:ecommerce_mobile/pages/login_page/components/login_page_componentthree.dart';
import 'package:ecommerce_mobile/pages/login_page/components/login_page_componenttwo.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;
    double height= MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: Column(
        children: [
          LoginPageComponentOne(),
          SizedBox(height: height * 0.1),
          LoginPageComponentTwo(),
          SizedBox(height: height * 0.05),
          LoginPageComponentThree()
        ],
      ),
    );
  }
}