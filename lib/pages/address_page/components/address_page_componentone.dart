import 'package:ecommerce_mobile/helper/thames.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AddressPageComponentOne extends StatelessWidget {
  const AddressPageComponentOne({super.key});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;

    return Container(
      width: width,
      height: height * 0.3,
      decoration: BoxDecoration(color: Color(0xFF1F68BE)),
      child: Container(
        margin: EdgeInsets.only(top: height * 0.05, left: width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => Get.back(),
              child: SvgPicture.asset(
                back
              ),
            ),
            SizedBox(height: height * 0.02,),
            Center(
              child: Container(
                width: width * 0.25,
                height: height * 0.12,
                decoration: ShapeDecoration(
                  color: Color(0xFFD9D9D9),
                  shape: OvalBorder(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}