import 'dart:convert';
import 'package:ecommerce_mobile/global/components/main_page_fillter.dart';
import 'package:ecommerce_mobile/global/components/main_page_header.dart';
import 'package:ecommerce_mobile/pages/most_populet_page/components/most_populet_componentone.dart';
import 'package:ecommerce_mobile/pages/most_populet_page/most_populer_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MostPopulerPage extends StatelessWidget {
  const MostPopulerPage({super.key});

  @override
  Widget build(BuildContext context) {

    final MostPopulerPageController mostPopulerPageController = Get.find<MostPopulerPageController>();
    mostPopulerPageController.onInit();

    double width = MediaQuery.sizeOf(context).width;
    double height= MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: width * 0.05, right:  width * 0.05, top: height * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderMainPage(pageName: "Most Populer"),
            SizedBox(height: height * 0.02),
            FilterMainPage(),
            MostPopulerComponentOne(
              productLenght: mostPopulerPageController.products.length, 
              productName: mostPopulerPageController.products.map((product) => product.productName).toList(), 
              productPrice: mostPopulerPageController.products.map((product) => product.productPrice).toList(), 
              productImage: mostPopulerPageController.products.map((product) => base64.decode(product.productImage)).toList(),
              productModel: mostPopulerPageController.products,
            )
          ],
        ),
      ),
    );
  }
}