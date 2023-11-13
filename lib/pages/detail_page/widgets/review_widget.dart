import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget review({
  required double width,
  required double height,
  required int salled
  }){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Review :",
        style: tsParaghraph14(fontWeight: FontWeight.w600),
      ),
      SizedBox(height: height),
      Row(
        children: [
          SvgPicture.asset(
            rate,
            width: width,
          ),
          SizedBox(width: width * 0.2),
          Text(
            "4.5",
            style: tsParaghraph14(fontWeight: FontWeight.w600),
          ),
          SizedBox(width: width * 0.2),
          Container(
            height: height,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignCenter,
                ),
              ),
            ),
          ),
          SizedBox(width: width * 0.2),
          Text(
            "Terjual $salled",
            style: tsParaghraph14(fontWeight: FontWeight.w600),
          )
        ],
      )
    ],
  );
}