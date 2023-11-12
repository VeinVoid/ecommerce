import 'dart:convert';
import 'package:ecommerce_mobile/global/components/main_page_fillter.dart';
import 'package:ecommerce_mobile/global/components/main_page_header.dart';
import 'package:ecommerce_mobile/model/category_model.dart';
import 'package:ecommerce_mobile/pages/category_page/category_page_controller.dart';
import 'package:ecommerce_mobile/pages/category_page/components/category_page_product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({
    super.key,
    });

  @override
  Widget build(BuildContext context) {

    final Category? receivedCategoryModel = Get.arguments['categoryModel'] as Category?;
    final CategoryPageController categoryPageController = Get.find<CategoryPageController>();
    categoryPageController.onInit();

    double width = MediaQuery.sizeOf(context).width;
    double height= MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: width * 0.05, right:  width * 0.05, top: height * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderMainPage(
                pageName: 'Category'
              ),
              SizedBox(height: height * 0.01),
              FilterMainPage(),
              CategoryPageProduct(
                categoryName: receivedCategoryModel?.categoryName ?? 'Default Category Name',
                productLenght: categoryPageController.products.length,
                productName: categoryPageController.products.map((product) => product.productName).toList(),
                productPrice: categoryPageController.products.map((product) => product.productPrice).toList(), 
                productImage: categoryPageController.products.map((product) => base64.decode(product.productImage)).toList(),
                productModel: categoryPageController.products,
              )
            ],
          ),
        ),
      ),
    );
  }
}