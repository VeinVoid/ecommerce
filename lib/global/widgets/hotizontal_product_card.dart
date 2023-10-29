import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget horizontalProductCard({
  required double width,
  required double height,
  required String productName,
  required String productImage,
  required double productRate,
  required int productSelled,
  required int productPrice,
  }){
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: generalColorWhite,
      borderRadius: BorderRadius.circular(5),
      boxShadow: [
        primaryBackDrop()
      ]
    ),
    child: Row(
      children: [
        SizedBox(width: 15),
        Image.asset(productImage),
        SizedBox(width: 15),
        Row(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: tsParaghraph16(fontWeight: FontWeight.w700)
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(rate),
                      SizedBox(width: 5),
                      Text(
                        "$productRate",
                        style: tsParaghraph12(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: 5),
                      Container(
                        width: 1, 
                        height: 15,
                        color: generalColorDark,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Terjual $productSelled",
                        style: tsParaghraph12(fontWeight: FontWeight.w500)
                      )
                    ],
                  ),
                  Text(
                    'Rp $productPrice',
                    style: tsParaghraph16(fontWeight: FontWeight.w700, isBlue: true),
                  )
                ],
              ),
            ),
          ],
        ),
        Spacer(),
        Align(
          alignment: Alignment.bottomRight,
          child: SvgPicture.asset(
            addCartHorizontal,
            width: height - 30,
          ),
        )
      ],
    ),
  );
}