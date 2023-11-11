import 'dart:convert';
import 'package:ecommerce_mobile/global/components/main_page_fillter.dart';
import 'package:ecommerce_mobile/global/components/main_page_header.dart';
import 'package:ecommerce_mobile/pages/home_page/components/home_page_category.dart';
import 'package:ecommerce_mobile/pages/home_page/components/home_page_mostPopuler.dart';
import 'package:ecommerce_mobile/pages/home_page/components/home_page_recomended.dart';
import 'package:ecommerce_mobile/pages/home_page/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    final HomePageController homePageController = Get.find<HomePageController>();
    homePageController.onInit();

    double width = MediaQuery.sizeOf(context).width;
    double height= MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: width * 0.05, right:  width * 0.05, top: height * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderMainPage(pageName: "Discover"),
              SizedBox(height: height * 0.02),
              FilterMainPage(),
              Obx(() => HomePageCategory(
                categoryLenght: homePageController.categories.length,
                categoryName: homePageController.categories.map((category) => category.categoryName).toList(),
                categoryIcon: homePageController.categories.map((category) => base64.decode(category.categoryIcon)).toList(),
                categoryModel: homePageController.categories,
              )),
              SizedBox(height: height * 0.02),
              Obx(() => HomePageMostPopuler(
                productLenght: homePageController.products.length, 
                productName: homePageController.products.map((product) => product.productName).toList(), 
                productDesc: homePageController.products.map((product) => product.productDescription).toList(), 
                productPrice: homePageController.products.map((product) => product.productPrice).toList(), 
                productImage: homePageController.products.map((product) => base64.decode(product.productImage)).toList(),
                productModel: homePageController.products,
              )),
              SizedBox(height: height * 0.02),
              Obx(() => HomePageRecomended(
                productLenght: homePageController.products.length, 
                productName: homePageController.products.map((product) => product.productName).toList(), 
                productPrice: homePageController.products.map((product) => product.productPrice).toList(), 
                productImage: homePageController.products.map((product) => base64.decode(product.productImage)).toList(),
                productModel: homePageController.products,
              ))
            ],
          ),
        ),
      ),
    );
  }
}