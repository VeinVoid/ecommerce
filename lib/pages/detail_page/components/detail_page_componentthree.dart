import 'package:ecommerce_mobile/pages/detail_page/widgets/review_cart_widget.dart';
import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailPAgeComponentThree extends StatelessWidget {
  const DetailPAgeComponentThree({super.key});

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
        SvgPicture.asset(
          addCartButton,
          width: width,
        )
      ],
    );
  }
}