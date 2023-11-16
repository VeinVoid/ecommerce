import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartPageComponentTwo extends StatelessWidget {
  const CartPageComponentTwo({super.key});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;
    double height= MediaQuery.sizeOf(context).height;

    return Container(
      width: width,
      color: const Color.fromARGB(6, 0, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: height * 0.12,
            margin: EdgeInsets.only(left: width * 0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Total Price For 1 Item(s)",
                  style: tsParaghraph12(fontWeight: FontWeight.w600),
                ),
                SizedBox(height: height * 0.015),
                Text(
                  "Rp 4.000.000",
                  style: tsParaghraph20(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right:  width * 0.05),
            child: SvgPicture.asset(
              buy
            ),
          )
        ],
      ),
    );
  }
}