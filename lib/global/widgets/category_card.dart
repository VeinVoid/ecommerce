import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget categoryCard({
  required double width,
  required double height,
  required String categoryName,
  required String imageUrl
  }){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: width * 0.1, vertical: height * 0.1),
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: generalColorWhite,
      borderRadius: BorderRadius.circular(5),
      boxShadow: [
        primaryBackDrop()
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(imageUrl),
        SizedBox(height: 11),
        Text(
          categoryName,
          style: tsParaghraph16(
            fontWeight: FontWeight.w600
          ),
        )
      ],
    ),
  );
}