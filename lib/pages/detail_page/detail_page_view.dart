import 'dart:convert';
import 'package:ecommerce_mobile/pages/detail_page/components/detail_page_app_bar.dart';
import 'package:ecommerce_mobile/pages/detail_page/components/detail_page_componentone.dart';
import 'package:ecommerce_mobile/pages/detail_page/components/detail_page_componentthree.dart';
import 'package:ecommerce_mobile/pages/detail_page/components/detail_page_componenttwo.dart';
import 'package:ecommerce_mobile/pages/detail_page/detail_page_controller.dart';
import 'package:ecommerce_mobile/pages/detail_page/widgets/quantity_widget.dart';
import 'package:ecommerce_mobile/pages/detail_page/widgets/review_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    super.key,
    });

  @override
  Widget build(BuildContext context) {

    final DetailPageController detailPageController = Get.find<DetailPageController>();
    detailPageController.onInit();

    double width = MediaQuery.sizeOf(context).width;
    double height= MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: width * 0.05, right:  width * 0.05, top: height * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DetailPageAppBar(),
                SizedBox(height: height * 0.02),
                DetailPageComponentOne(
                  productName: detailPageController.products[0].productName,
                  productPrice: detailPageController.products[0].productPrice,
                  productImage: base64Decode(detailPageController.products[0].productImage),
                ),
                Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      review(
                        width: width * 0.07,
                        height: height * 0.01,
                        salled: detailPageController.products[0].productSaled
                      ),
                      quantity(
                        width: width * 0.08,
                        height: height * 0.01,
                        quantity: detailPageController.quantits.value,
                        addFunc: () => detailPageController.plusQuantity(),
                        minusFunc: () => detailPageController.minusQuantity()
                      )
                    ],
                  ),
                ),
                SizedBox(height: height * 0.02),
                Container(
                  width: width,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1.50,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color(0xFFE0E0E0),
                      ),
                    ),
                  ),
                ),
                DetailPageComponentTwo(
                  description: detailPageController.products[0].productDescription,
                ),
                Obx(
                  () => DetailPAgeComponentThree(
                    quantits: detailPageController.quantits.value,
                    product: detailPageController.products[0],
                  ),
                )
              ]
            ),
          ),
        ),
      ),
    );
  }
}