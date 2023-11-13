import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';

Widget reviewCard({
  required double width,
  required double height
  }){
  return Container(
    margin: EdgeInsets.symmetric(vertical: height),
    child: Row(
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: width * 0.1),
              child: Text(
                "Acreus",
                style: tsParaghraph14(fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: height),
            Container(
              margin: EdgeInsets.only(left: width * 0.1),
              child: Text(
                "Keren!! PS 4 nya berfungsi dengan baik",
                style: tsParaghraph12(fontWeight: FontWeight.w500),
              ),
            )
          ],
        )
      ],
    ),
  );
}