import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget accountCardMenu({
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: width * 0.12, top: height * 0.07),
                  child: Text(
                    "Name",
                    style: tsParaghraph16(fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: width * 0.12, top: height * 0.07),
                  child: Text(
                    "Acreus",
                    style: tsParaghraph14(fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: width * 0.08),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: width * 0.12),
                  child: Text(
                    "Jenis Kelamin",
                    style: tsParaghraph16(fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: width * 0.12),
                  child: Text(
                    "Pria",
                    style: tsParaghraph14(fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: width * 0.08),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: width * 0.12),
                  child: Text(
                    "Nomor Telepon",
                    style: tsParaghraph16(fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: width * 0.12),
                  child: Text(
                    "08574409728",
                    style: tsParaghraph14(fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: width * 0.08),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: width * 0.12),
                  child: Text(
                    "Email",
                    style: tsParaghraph16(fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: width * 0.12),
                  child: Text(
                    "veinvoid2@gmail.com",
                    style: tsParaghraph14(fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: width * 0.08),
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
          ],
        ),
      ),
    ),
  );
}