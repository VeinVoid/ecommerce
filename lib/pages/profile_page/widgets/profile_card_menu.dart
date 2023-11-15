import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';

Widget profileCardMenu({
  required double width,
  required double height
}){
  return Center(
    child: Container(
      width: width,
      height: height,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        shadows: [
          generalBackDrop()
        ],
      ),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * 0.1),
              child: Text(
                "My Order",
                style: tsParaghraph16(fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: width * 0.1),
                width: width * 0.95,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1.50,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color.fromARGB(88, 224, 224, 224),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * 0.1),
              child: Text(
                "My Favourite",
                style: tsParaghraph16(fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: width * 0.1),
                width: width * 0.95,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1.50,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color.fromARGB(88, 224, 224, 224),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * 0.1),
              child: Text(
                "My Address",
                style: tsParaghraph16(fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Container(
                width: width * 0.95,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1.50,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color.fromARGB(88, 224, 224, 224),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * 0.1),
              child: Text(
                "My Account",
                style: tsParaghraph16(fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Container(
                width: width * 0.95,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1.50,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color.fromARGB(88, 224, 224, 224),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: width * 0.1),
              child: Text(
                "Log Out",
                style: tsParaghraph16(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    ),
  );
}