import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class DetailPageAppBar extends StatelessWidget {
  const DetailPageAppBar({super.key});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Get.back();
          },
          child: SvgPicture.asset(
            back,
            width: width * 0.15,
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.offNamed('/cart');
          },
          child: SvgPicture.asset(
            cart,
            width: width * 0.12,
          ),
        )
      ],
    );
  }
}