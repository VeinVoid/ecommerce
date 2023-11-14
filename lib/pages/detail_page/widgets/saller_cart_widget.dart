import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';

Widget sallerCard({
  required double width,
  required double height
  }){
  return Row(
    children: [
      ClipOval(
        child: Image.asset(
          test,
          width: width,
          fit: BoxFit.cover,
        ),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: width * 0.1),
            child: Text(
              "Electrical Game Store",
              style: tsParaghraph14(fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(height: height),
          Container(
            margin: EdgeInsets.only(left: width * 0.1),
            child: Row(
              children: [
                Text(
                  "24 Product",
                  style: tsParaghraph12(fontWeight: FontWeight.w500),
                ),
                SizedBox(width: width * 0.2),
                Text(
                  "4.4 Review",
                  style: tsParaghraph12(fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ],
      )
    ],
  );
}