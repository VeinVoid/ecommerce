import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegisterPageComponentOne extends StatelessWidget {
  const RegisterPageComponentOne({super.key});

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
          "SIGN UP",
          style: tsHeader(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}