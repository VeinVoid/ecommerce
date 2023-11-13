import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget quantity({
  required double width,
  required double height,
  }){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Quantity :",
        style: tsParaghraph14(fontWeight: FontWeight.w600),
      ),
      SizedBox(height: height),
      Row(
        children: [
          SvgPicture.asset(
            minus,
            width: width,
          ),
          SizedBox(width: width * 0.5),
          Text(
            "1",
            style: tsParaghraph14(fontWeight: FontWeight.w600),
          ),
          SizedBox(width: width * 0.5),
          SvgPicture.asset(
            plus,
            width: width,
          )
        ],
      )
    ],
  );
}