import 'package:flutter/material.dart';

Widget profileLine({
  required double height
}){
  return Container(
    margin: EdgeInsets.only(bottom: 20),
    height: height,
    decoration: ShapeDecoration(
      shape: RoundedRectangleBorder(
        side: BorderSide(
          width: 1,
          strokeAlign: BorderSide.strokeAlignCenter,
          color: Color(0xFFF5F5F5),
        ),
      ),
    ),
  );
}