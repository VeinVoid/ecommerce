import 'package:ecommerce_mobile/pages/cart_page/cart_page_controller.dart';
import 'package:ecommerce_mobile/pages/cart_page/components/cart_page_componentone.dart';
import 'package:ecommerce_mobile/pages/cart_page/components/cart_page_componenttwo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;
    double height= MediaQuery.sizeOf(context).height;

    final CartPageController cartPageController = Get.find<CartPageController>();
    cartPageController.onInit();

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: width * 0.05, right:  width * 0.05, top: height * 0.05),
              child: CartPageComponentOne(
                productLenght: cartPageController.products.length,
                productModel: cartPageController.products,
              )
            ),
            CartPageComponentTwo()
          ],
        ),
      ),
    );
  }
}