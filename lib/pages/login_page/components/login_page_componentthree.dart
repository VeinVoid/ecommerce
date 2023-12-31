import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class LoginPageComponentThree extends StatelessWidget {
  const LoginPageComponentThree({
    super.key,
    required this.onTap
    });

    final Function() onTap;

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;
    double height= MediaQuery.sizeOf(context).height;

    return Column(
      children: [
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
        SizedBox(height: height * 0.05),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sign In",
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
        GestureDetector(
          onTap: () {
            Get.toNamed('/register');
          },
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Don’t have an account? ',
                  style: tsParaghraph16(fontWeight: FontWeight.w500)
                ),
                TextSpan(
                  text: 'SignUp',
                  style: tsParaghraph16(fontWeight: FontWeight.bold),
                  onEnter: (event) {
                    Get.toNamed('/register');
                  },
                ),
              ],
            ),
          ),
        )

      ],
    );
  }
}