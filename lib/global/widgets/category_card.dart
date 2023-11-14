import 'dart:typed_data';
import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';

Widget categoryCard({
  required double width,
  required double height,
  required String categoryName,
  required Uint8List imageBytes,
  required Function() onTap
  }){
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: width * 0.08, vertical: height * 0.1),
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
          Image.memory(imageBytes),
          SizedBox(height: 11),
          Text(
            categoryName,
            style: tsParaghraph16(
              fontWeight: FontWeight.w600
            ),
          )
        ],
      ),
    ),
  );
}