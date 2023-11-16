import 'dart:typed_data';
import 'package:ecommerce_mobile/global/widgets/hotizontal_product_card.dart';
import 'package:ecommerce_mobile/helper/thames.dart';
import 'package:ecommerce_mobile/pages/cart_page/widgets/card_widget.dart';
import 'package:ecommerce_mobile/pages/detail_page/detail_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CartPageComponentOne extends StatelessWidget {
  const CartPageComponentOne({
    super.key,
    required this.productLenght,
    // required this.productName,
    // required this.productPrice,
    // required this.productImage,
    required this.productModel
    });

    final int productLenght;
    // final List<String> productName;
    // final List<int> productPrice;
    // final List<Uint8List> productImage;
    final List productModel;

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
        Container(
          width: width,
          height: height * 0.7485,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: productLenght,
            itemBuilder: (context, index) {
              return card(
                width: width, 
                height: height * 0.13
              );
            },
          )
        ),
      ],
    );
  }
}