import 'dart:convert';
import 'package:ecommerce_mobile/global/controllers/global_card_controller.dart';
import 'package:ecommerce_mobile/pages/cart_page/cart_page_controller.dart';
import 'package:ecommerce_mobile/pages/cart_page/components/cart_page_componentone.dart';
import 'package:ecommerce_mobile/pages/cart_page/components/cart_page_componenttwo.dart';
import 'package:ecommerce_mobile/pages/cart_page/widgets/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;
    double height= MediaQuery.sizeOf(context).height;

    final GlobalController globalController = Get.put(GlobalController());
    // final CartPageController cartPageController = Get.find<CartPageController>();
    globalController.onInit();

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: width * 0.05, right:  width * 0.05, top: height * 0.05),
              child: CartPageComponentOne()
            ),
            Obx(
              () => Container(
                width: width,
                height: height * 0.7485,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: globalController.products.length,
                  itemBuilder: (context, index) {
                    return card(
                      width: width, 
                      height: height * 0.13,
                      name: globalController.products.map((product) => product.productName).toList()[index],
                      quantits: 2,
                      image: globalController.products.map((product) => base64.decode(product.productImage)).toList()[index],
                      onTap: () => globalController.removeProductAtIndex(index)
                    );
                  },
                )
              ),
            ),
            Obx(
              () => CartPageComponentTwo(
                totalCart: globalController.products.length,
                totalPrice: globalController.totalPrice.value,
                globalController: globalController,
              ),
            )
          ],
        ),
      ),
    );
  }
}