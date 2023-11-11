import 'dart:typed_data';
import 'package:ecommerce_mobile/global/widgets/vertical_product_card.dart';
import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';

class HomePageMostPopuler extends StatelessWidget {
  const HomePageMostPopuler({
    super.key,
    required this.productLenght,
    required this.productName,
    required this.productDesc,
    required this.productPrice,
    required this.productImage,
    });

    final int productLenght;
    final List<String> productName;
    final List<String> productDesc;
    final List<int> productPrice;
    final List<Uint8List> productImage;

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;
    double height= MediaQuery.sizeOf(context).height;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Most Populer",
              style: tsParaghraph20(fontWeight: FontWeight.bold),
            ),
            Text(
              "See All",
              style: tsParaghraph16(fontWeight: FontWeight.bold, isBlue: true),
            )
          ],
        ),
        SizedBox(height: height * 0.01),
        Container(
          width: width,
          height: height * 0.32,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: productLenght,
            itemBuilder: (context, index) {
              return verticalProductCard(
                width: width * 0.37, 
                height: height * 0.28,
                margin: width * 0.02,
                productName: productName[index],
                productDescription: productDesc[index],
                productPrice: productPrice[index],
                productImage: productImage[index]
              );
            },
          )
        ),
      ],
    );
  }
}


