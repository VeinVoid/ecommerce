import 'dart:typed_data';
import 'package:ecommerce_mobile/pages/detail_page/widgets/quantity_widget.dart';
import 'package:ecommerce_mobile/pages/detail_page/widgets/review_widget.dart';
import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';

class DetailPageComponentOne extends StatelessWidget {
  const DetailPageComponentOne({
    super.key,
    required this.productName,
    required this.productPrice,
    required this.productSalled,
    required this.productImage
  });

  final String productName;
  final int productPrice;
  final int productSalled;
  final Uint8List productImage;

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;
    double height= MediaQuery.sizeOf(context).height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: width,
          height: height * 0.3,
          child: Image.memory(
            productImage,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(height: height * 0.02),
        Text(
          productName,
          style: tsParaghraph20(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: height * 0.01),
        Text(
          "Rp $productPrice",
          style: tsParaghraph16(fontWeight: FontWeight.w600, isBlue: true),
        ),
        SizedBox(height: height * 0.01),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            review(
              width: width * 0.07,
              height: height * 0.01,
              salled: productSalled
            ),
            quantity(
              width: width * 0.08,
              height: height * 0.01
            )
          ],
        ),
        SizedBox(height: height * 0.02),
        Container(
          width: width,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1.50,
                  strokeAlign: BorderSide.strokeAlignCenter,
                color: Color(0xFFE0E0E0),
              ),
            ),
          ),
        )
      ],
    );
  }
}