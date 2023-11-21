import 'package:ecommerce_mobile/helper/thames.dart';
import 'package:ecommerce_mobile/pages/my_order_page/widgets/card_my_order.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class MyOrderPageComponentTwo extends StatelessWidget {
  const MyOrderPageComponentTwo({super.key});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;
    double height= MediaQuery.sizeOf(context).height;

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: width * 0.02, vertical: height * 0.03),
            child: Text(
              'My Order',
              style: tsParaghraph20(fontWeight: FontWeight.w600),
            ),
          ),
          cardOrder(
            width: width * 0.9,
            height: height * 0.12
          )
        ],
      ),
    );
  }
}