import 'dart:math';
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
    // required this.productSalled,
    required this.productImage,
    // required this.quantits,
    // required this.add,
    // required this.minus
  });

  final String productName;
  final int productPrice;
  // final int productSalled;
  final Uint8List productImage;
  // final int quantits;
  // final Function() add;
  // final Function() minus;

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
      ],
    );
  }
}