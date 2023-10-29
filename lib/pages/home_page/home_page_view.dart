import 'package:ecommerce_mobile/global/components/main_page_fillter.dart';
import 'package:ecommerce_mobile/global/components/main_page_header.dart';
import 'package:ecommerce_mobile/global/widgets/hotizontal_product_card.dart';
import 'package:ecommerce_mobile/pages/home_page/components/home_page_category.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderMainPage(pageName: "Discover"),
            FilterMainPage(),
            HomePageCategory(),
            SizedBox(height: 20),
            
          ],
        ),
      ),
    );
  }
}