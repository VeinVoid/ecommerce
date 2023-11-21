import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget cardAddress({
  required double height,
  required double width
  }){
  return Container(
    width: width,
    height: height,
    decoration: ShapeDecoration(
    color: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      shadows: [
        generalBackDrop()
      ],
    ),
    child: Column(
      children: [
        Text("Rumah"),
        SizedBox(height: height * 0.1),
        Text("Volico Acreus"),
        
      ],
    ),
  );
}