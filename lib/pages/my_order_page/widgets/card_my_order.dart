import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget cardOrder({
  required double width,
  required double height
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
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: width * 0.05),
          child: Image.asset(
            test,
            width: width * 0.2,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: height * 0.12, horizontal: width * 0.02),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Playstation 4",
                style: tsParaghraph12(fontWeight: FontWeight.bold),
              ),
              Text(
                "sedang dikirim",
                style: tsParaghraph12(fontWeight: FontWeight.w600),
              ),
              Text(
                "Paket sampai di Semarang DC",
                style: tsParaghraph12(fontWeight: FontWeight.w600),
              )
            ],
          ),
        )
      ],
    ),
  );
}