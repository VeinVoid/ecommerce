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
              style: tsParaghraph16White(fontWeight: FontWeight.w600),
            ),
            Text(
              "Wishlist",
              style: tsParaghraph16White(fontWeight: FontWeight.w600),
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
              style: tsParaghraph16White(fontWeight: FontWeight.w600),
            ),
            Text(
              "Wallet",
              style: tsParaghraph16White(fontWeight: FontWeight.w600),
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
              style: tsParaghraph16White(fontWeight: FontWeight.w600),
            ),
            Text(
              "Point",
              style: tsParaghraph16White(fontWeight: FontWeight.w600),
            )
          ],
        ),
      )
    ]
  );
}