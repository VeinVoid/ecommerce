import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPageComponentOne extends StatelessWidget {
  const LoginPageComponentOne({super.key});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;
    double height= MediaQuery.sizeOf(context).height;

    return Column(
      children: [
        Stack(
          children: [
            Image.asset(
              randomShape1
            ),
            Container(
              margin: EdgeInsets.only(top: height * 0.1, left: width * 0.05),
              child: SvgPicture.asset(
                back,
                width: width * 0.15,
              ),
            )
          ],
        ),
        SizedBox(height: height * 0.02),
        Text(
          "WELCOME",
          style: tsHeader(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: height * 0.04),
        Text(
          "Sign in to your account",
          style: tsParaghraph16(fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}