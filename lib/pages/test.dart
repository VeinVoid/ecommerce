import 'package:ecommerce_mobile/helper/thames.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Text(
          'Discover',
          style: tsHeader(fontWeight: FontWeight.bold)
        )
      ),
    );
  }
}