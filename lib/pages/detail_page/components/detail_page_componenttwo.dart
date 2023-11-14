import 'package:ecommerce_mobile/pages/detail_page/widgets/saller_cart_widget.dart';
import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';

class DetailPageComponentTwo extends StatelessWidget {
  const DetailPageComponentTwo({
    super.key,
    required this.description
    });

    final String description;

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
            "Seller :",
            style: tsParaghraph14(fontWeight: FontWeight.w600),
          ),
        ),
        sallerCard(
          width: width * 0.15,
          height: height * 0.01
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
        Container(
          margin: EdgeInsets.symmetric(vertical: height * 0.01),
          child: Text(
            "Description :",
            style: tsParaghraph14(fontWeight: FontWeight.w600),
          ),
        ),
        Text(
          description,
          style: tsParaghraph14(fontWeight: FontWeight.w500),
        ),
        SizedBox(height: height * 0.01),
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
      ],
    );
  }
}