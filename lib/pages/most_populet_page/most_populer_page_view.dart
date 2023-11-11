import 'package:ecommerce_mobile/global/components/main_page_fillter.dart';
import 'package:ecommerce_mobile/global/components/main_page_header.dart';
import 'package:flutter/material.dart';

class MostPopulerPage extends StatelessWidget {
  const MostPopulerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderMainPage(pageName: "Most Populer"),
            SizedBox(height: 10),
          ],
        ),
      ),
    );;
  }
}