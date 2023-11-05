import 'package:ecommerce_mobile/pages/profile_page/widgets/profile_line.dart';
import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';

Widget profileData({
  required double height,
  required int wishlist,
  required int wallet,
  required int point,
}){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
        margin: EdgeInsets.only(left: 30, bottom: 20),
        child: Column(
          children: [
            Text(
              wishlist.toString(),
              style: tsParaghraph16(fontWeight: FontWeight.w600, color: generalColorWhite),
            ),
            Text(
              "Wishlist",
              style: tsParaghraph16(fontWeight: FontWeight.w600, color: generalColorWhite),
            )
          ],
        ),
      ),
      profileLine(height: height * 0.08),
      Container(
        margin: EdgeInsets.only(bottom: 20),
        child: Column(
          children: [
            Text(
              "Rp $wallet",
              style: tsParaghraph16(fontWeight: FontWeight.w600, color: generalColorWhite),
            ),
            Text(
              "Wallet",
              style: tsParaghraph16(fontWeight: FontWeight.w600, color: generalColorWhite),
            )
          ],
        ),
      ),
      profileLine(height: height * 0.08),
      Container(
        margin: EdgeInsets.only(right: 30, bottom: 20),
        child: Column(
          children: [
            Text(
              point.toString(),
              style: tsParaghraph16(fontWeight: FontWeight.w600, color: generalColorWhite),
            ),
            Text(
              "Point",
              style: tsParaghraph16(fontWeight: FontWeight.w600, color: generalColorWhite),
            )
          ],
        ),
      )
    ]
  );
}