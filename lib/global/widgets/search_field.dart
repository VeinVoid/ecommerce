import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget searchField({
  required double width,
  required double height,
  String? hintText
  }) {
  return Container(
    width: width,
    height: height,
    child: TextFormField(
      style: tsParaghraph14(
        fontWeight: FontWeight.w500
      ),
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
        border: InputBorder.none,
        filled: true,
        fillColor: generalColorGreyLight,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    ),
  );
}