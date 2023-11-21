import 'dart:typed_data';
import 'package:ecommerce_mobile/global/controllers/global_card_controller.dart';
import 'package:ecommerce_mobile/helper/thames.dart';
import 'package:ecommerce_mobile/pages/cart_page/widgets/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CartPageComponentOne extends StatelessWidget {
  const CartPageComponentOne({super.key});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;
    double height= MediaQuery.sizeOf(context).height;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: SvgPicture.asset(
                width: width * 0.14,
                back
              ),
            ),
            Center(
              child: Text(
                'Cart',
                style: tsHeader(fontWeight: FontWeight.bold),
              )
            ),
            SizedBox(width: width * 0.14)
          ],
        ),
        SizedBox(height: height * 0.02),
      ],
    );
  }
}