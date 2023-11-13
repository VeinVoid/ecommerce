import 'package:ecommerce_mobile/pages/register_page/components/register_page.componentthree.dart';
import 'package:ecommerce_mobile/pages/register_page/components/register_page_componentone.dart';
import 'package:ecommerce_mobile/pages/register_page/components/register_page_componenttwo.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;
    double height= MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RegisterPageComponentOne(),
          SizedBox(height: height * 0.05),
          RegisterPageComponentTwo(),
          RegisterPageComponentThree()
        ],
      ),
    );
  }
}