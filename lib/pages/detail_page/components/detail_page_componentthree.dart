import 'package:ecommerce_mobile/global/controllers/global_card_controller.dart';
import 'package:ecommerce_mobile/model/product_model.dart';
import 'package:ecommerce_mobile/pages/detail_page/widgets/review_cart_widget.dart';
import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class DetailPAgeComponentThree extends StatelessWidget {
  const DetailPAgeComponentThree({
    super.key,
    required this.quantits,
    required this.product,
    });

    final int quantits;
    final Product product;

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;
    double height= MediaQuery.sizeOf(context).height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: height * 0.01),
          child: Text(
            "User Review :",
            style: tsParaghraph14(fontWeight: FontWeight.w600),
          ),
        ),
        reviewCard(
          width: width * 0.15,
          height: height * 0.01
        ),
        GestureDetector(
          onTap: () {
            final GlobalController globalController = Get.put(GlobalController());
            for (var i = 0; i < quantits; i++) {
              globalController.addToCart(product);
            }
          },
          child: SvgPicture.asset(
            addCartButton,
            width: width,
          ),
        )
      ],
    );
  }
}