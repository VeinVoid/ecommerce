import 'package:ecommerce_mobile/global/widgets/hotizontal_product_card.dart';
import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';

class HomePageMostPopuler extends StatelessWidget {
  const HomePageMostPopuler({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Most Populer"
            )
          ],
        ),
        horizontalProductCard(width: 222, height: 2222, productName: "wsad", productImage: back, productRate: 21.67, productSelled: 21, productPrice: 213)
      ],
    );
  }
}