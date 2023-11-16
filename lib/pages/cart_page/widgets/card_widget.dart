import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget card({
  required double width,
  required double height
  }){
  return Container(
    margin: EdgeInsets.symmetric(vertical: height * 0.08, horizontal: width * 0.02),
    width: width,
    height: height,
    decoration: BoxDecoration(
      color: generalColorWhite,
      borderRadius: BorderRadius.circular(5),
      boxShadow: [
        primaryBackDrop()
      ]
    ),
    child: Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: width * 0.02),
          child: Image.asset(
            width: width * 0.2,
            test
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: width * 0.02, top: height * 0.11, bottom: height * 0.11),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Playstation 4',
                style: tsParaghraph14(fontWeight: FontWeight.w700),
              ),
              Text(
                'Quantity : 1',
                style: tsParaghraph14(fontWeight: FontWeight.w600),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    width: width * 0.05,
                    trash
                  ),
                  Text(
                    'REMOVE',
                    style: tsParaghraph14(fontWeight: FontWeight.w600, isBlue: true),
                  )
                ],
              )
            ],
          ),
        )
      ],
    ),
  );
}