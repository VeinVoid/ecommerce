import 'dart:typed_data';
import 'package:ecommerce_mobile/global/widgets/small_product_card.dart';
import 'package:ecommerce_mobile/pages/detail_page/detail_page_view.dart';
import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageRecomended extends StatelessWidget {
  const HomePageRecomended({
    super.key,
    required this.productLenght,
    required this.productName,
    required this.productPrice,
    required this.productImage,
    required this.productModel
    });

    final int productLenght;
    final List<String> productName;
    final List<int> productPrice;
    final List<Uint8List> productImage;
    final List productModel;

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;
    double height= MediaQuery.sizeOf(context).height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recomended",
          style: tsParaghraph20(fontWeight: FontWeight.bold),
        ),
        Container(
          width: width,
          height: height,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: height * 0.03,
              crossAxisSpacing: width * 0.08
            ),
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical, 
            itemCount: productLenght,
            itemBuilder: (context, index) {
              return smallProductCard(
                width: width, 
                height: height, 
                margin: width * 0.02, 
                productName: productName[index], 
                productPrice: productPrice[index], 
                productImage: productImage[index],
                onTap: () {
                  Get.to(() => DetailPage(productModel: productModel[index]));
                },
              );
            },
          ),
        )
      ],
    );
  }
}