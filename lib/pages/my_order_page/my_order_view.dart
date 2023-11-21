import 'package:ecommerce_mobile/pages/my_order_page/components/my_order_componentone.dart';
import 'package:ecommerce_mobile/pages/my_order_page/components/my_order_componenttwo.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyOrderPage extends StatelessWidget {
  const MyOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MyOrderComponentOne(),
          MyOrderPageComponentTwo()
        ],
      ),
    );
  }
}