import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';

Widget profileName({
  required String name
}){
 return Container(
  margin: EdgeInsets.only(left: 20, top: 30),
   child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: 80,
        height: 80,
        decoration: ShapeDecoration(
          color: Color(0xFFD9D9D9),
          shape: OvalBorder(),
        ),
      ),
      Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hallo",
              style: tsParaghraph14White(fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 5),
            Text(
              name,
              style: tsParaghraph20White(fontWeight: FontWeight.w600),
            )
          ],
        ),
      )
    ],
   ),
 );
}