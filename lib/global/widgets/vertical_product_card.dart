import 'dart:typed_data';
import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget verticalProductCard({
  required double width,
  required double height,
  required double margin,
  required String productName,
  required String productDescription,
  required int productPrice,
  required Uint8List productImage,
  required Function() onTapDetail,
  required Function() onTapCart
  }){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: width * 0.08, vertical: height * 0.05),
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
        GestureDetector(
          onTap: onTapDetail,
          child: Container(
            width: width,
            height: height * 0.55,
            margin: EdgeInsets.all(margin),
            child: Center(
              child: Image.memory(
                productImage,
                fit: BoxFit.cover,
              )
            ),
          ),
        ),
        GestureDetector(
          onTap: onTapDetail,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: margin),
            child: Text(
              productName,
              style: tsParaghraph16(fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        GestureDetector(
          onTap: onTapDetail,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: margin),
            child: Text(
              productDescription,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: tsParaghraph10(fontWeight: FontWeight.w600),
            ),
          ),
        ),
        GestureDetector(
          onTap: onTapCart,
          child: Row(
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
                  width: width * 0.2,
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}