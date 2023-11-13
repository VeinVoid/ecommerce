import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';

Widget textFormLogin({
  required double width,
  required double height,
  required String hintText,
  required IconData icon
  }){
  return Container(
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: generalColorWhite,
      borderRadius: BorderRadius.circular(5),
      boxShadow: [
        primaryBackDrop()
      ]
    ),
    child: TextFormField(
      style: tsParaghraph14(
        fontWeight: FontWeight.w500
      ),
      decoration: InputDecoration(
        hintText: hintText,
        contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
        border: InputBorder.none,
        filled: true,
        fillColor: generalColorWhite,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(5),
        ),
        prefixIcon: Icon(
          icon,
          color: Colors.grey,
        ),
      ),
    ),
  );
}