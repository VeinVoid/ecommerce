import 'dart:typed_data';
import 'package:ecommerce_mobile/global/controllers/global_card_controller.dart';
import 'package:ecommerce_mobile/global/widgets/hotizontal_product_card.dart';
import 'package:ecommerce_mobile/pages/detail_page/detail_page_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MostPopulerComponentOne extends StatelessWidget {
  const MostPopulerComponentOne({
    super.key,
    required this.productLenght,
    required this.productName,
    required this.productPrice,
    required this.productImage,
    required this.productModel,
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

    return Container(
      width: width,
      height: height * 0.7685,
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
            productRate: 5, 
            productSelled: 10, 
            productPrice: productPrice[index], 
            onTapDetail: () {
              Get.toNamed(
                '/detail', 
                arguments: productModel[index]
              );
            },
            onTapCart: () {
              final GlobalController globalController = Get.put(GlobalController());
              globalController.addToCart(productModel[index]);
            }
          );
        },
      )
    );
  }
}