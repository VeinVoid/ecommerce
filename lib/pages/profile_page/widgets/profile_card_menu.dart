import 'package:ecommerce_mobile/pages/profile_page/profile_page_controller.dart';
import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget profileCardMenu({
  required double width,
  required double height
}){

  final ProfilePageController profilePageController = Get.find<ProfilePageController>();

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
            GestureDetector(
              onTap: () => Get.toNamed('/myorder'),
              child: Container(
                margin: EdgeInsets.only(left: width * 0.12, right: width * 0.12, top: height * 0.07),
                child: Text(
                  "My Order",
                  style: tsParaghraph16(fontWeight: FontWeight.bold),
                ),
              ),
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
            GestureDetector(
              child: Container(
                width: width,
                margin: EdgeInsets.symmetric(horizontal: width * 0.12),
                child: Text(
                  "My Address",
                  style: tsParaghraph16(fontWeight: FontWeight.bold),
                ),
              ),
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
            GestureDetector(
              onTap: () => Get.toNamed('/account'),
              child: Container(
                width: width,
                margin: EdgeInsets.symmetric(horizontal: width * 0.12),
                child: Text(
                  "My Account",
                  style: tsParaghraph16(fontWeight: FontWeight.bold),
                ),
              ),
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
            GestureDetector(
              onTap: () => profilePageController.clearSharedPreferences(),
              child: Container(
                width: width,
                margin: EdgeInsets.only(left: width * 0.12, right: width * 0.12, bottom: height * 0.07),
                child: Text(
                  "Log Out",
                  style: tsParaghraph16Red(fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}