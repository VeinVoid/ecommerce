import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegisterPageComponentThree extends StatelessWidget {
  const RegisterPageComponentThree({
    super.key,
    required this.onTap,
    });

    final Function() onTap;

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;
    double height= MediaQuery.sizeOf(context).height;

    return Column(
      children: [
        SizedBox(height: height * 0.05),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sign Up",
              style: tsParaghraph20(fontWeight: FontWeight.bold),
            ),
            SizedBox(width: width * 0.05),
            GestureDetector(
              onTap: onTap,
              child: SvgPicture.asset(
                next
              ),
            )
          ],
        ),
        SizedBox(height: height * 0.05),
        Container(
          width: width * 0.6,
          child: Text(
            "Or create account using social media",
            style: tsParaghraph16(fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              facebook,
            ),
            SvgPicture.asset(
              twitter
            ),
            SvgPicture.asset(
              google
            ),
          ],
        ),
      ],
    );
  }
}