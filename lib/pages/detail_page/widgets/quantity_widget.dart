import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget quantity({
  required double width,
  required double height,
  required int quantity,
  required Function() addFunc,
  required Function() minusFunc,
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
          GestureDetector(
            onTap: minusFunc,
            child: SvgPicture.asset(
              minus,
              width: width,
            ),
          ),
          SizedBox(width: width * 0.5),
          Text(
            "$quantity",
            style: tsParaghraph14(fontWeight: FontWeight.w600),
          ),
          SizedBox(width: width * 0.5),
          GestureDetector(
            onTap: addFunc,
            child: SvgPicture.asset(
              plus,
              width: width,
            ),
          )
        ],
      )
    ],
  );
}