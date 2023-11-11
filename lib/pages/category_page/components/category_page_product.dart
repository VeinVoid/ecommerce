import 'package:ecommerce_mobile/global/widgets/hotizontal_product_card.dart';
import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';

class CategoryPageProduct extends StatelessWidget {
  const CategoryPageProduct({super.key});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Electronic",
          style: tsParaghraph20(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          width: width,
          child: horizontalProductCard(
            width: width, 
            height: width * 0.3, 
            productName: "Playstation 4", 
            productImage: back, 
            productRate: 3.6, 
            productSelled: 200, 
            productPrice: 20000
          )
        )
      ],
    );
  }
}