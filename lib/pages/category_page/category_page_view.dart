import 'package:ecommerce_mobile/global/components/main_page_fillter.dart';
import 'package:ecommerce_mobile/global/components/main_page_header.dart';
import 'package:ecommerce_mobile/model/category_model.dart';
import 'package:ecommerce_mobile/pages/category_page/components/category_page_product.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({
    super.key,
    required this.categoryModel
    });

    final Category categoryModel;

  @override
  Widget build(BuildContext context) {

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
                categoryName: categoryModel.categoryName
              )
            ],
          ),
        ),
      ),
    );
  }
}