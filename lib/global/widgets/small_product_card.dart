import 'dart:typed_data';
import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget smallProductCard({
  required double width,
  required double height,
  required double margin,
  required String productName,
  required int productPrice,
  required Uint8List productImage,
  required Function() onTap,
  }){
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: generalColorWhite,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          primaryBackDrop()
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: width * 0.5,
            height: height * 0.1,
            margin: EdgeInsets.all(margin),
            child: Center(
              child: Image.memory(
                productImage,
                fit: BoxFit.contain,
                width: width,
                height: height * 0.1,
              )
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: margin),
            child: Text(
              productName,
              style: tsParaghraph16(fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: margin),
                child: Text(
                  "Rp $productPrice",
                  style: tsParaghraph14(fontWeight: FontWeight.bold, isBlue: true),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: SvgPicture.asset(
                  addCartVertical,
                  width: width * 0.08,
                ),
              )
            ],
          )
        ],
      ),
    ),
  );
}