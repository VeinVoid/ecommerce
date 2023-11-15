import 'dart:typed_data';
import 'package:ecommerce_mobile/global/widgets/hotizontal_product_card.dart';
import 'package:ecommerce_mobile/pages/detail_page/detail_page_view.dart';
import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryPageProduct extends StatelessWidget {
  const CategoryPageProduct({
    super.key,
    required this.categoryName,
    required this.productLenght,
    required this.productName,
    required this.productPrice,
    required this.productImage,
    required this.productModel
    });

    final String categoryName;
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
          categoryName,
          style: tsParaghraph20(fontWeight: FontWeight.bold),
        ),
        Container(
          width: width,
          height: height * 0.5,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: productLenght,
            itemBuilder: (context, index) {
              return horizontalProductCard(
                width: width,
                height: height * 0.15, 
                productName: productName[index], 
                productImage: productImage[index], 
                productRate: 3.6, 
                productSelled: 200, 
                productPrice: productPrice[index],
                onTap: () {
                  Get.to(() => DetailPage(productModel: productModel[index]));
                },
              );
            },
          )
        ),
      ],
    );
  }
}