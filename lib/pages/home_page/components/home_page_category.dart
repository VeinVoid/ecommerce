import 'dart:typed_data';
import 'package:ecommerce_mobile/global/widgets/category_card.dart';
import 'package:ecommerce_mobile/pages/category_page/category_page_view.dart';
import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageCategory extends StatelessWidget {
  const HomePageCategory({
    super.key,
    required this.categoryLenght,
    required this.categoryName,
    required this.categoryIcon,
    required this.categoryModel
    });

    final int categoryLenght;
    final List<String> categoryName;
    final List<Uint8List> categoryIcon;
    final List categoryModel;

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;
    double height= MediaQuery.sizeOf(context).height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Category",
          style: tsParaghraph20(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: height * 0.01),
        Container(
          width: width,
          height: height * 0.18,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: categoryLenght,
            itemBuilder: (context, index) {
              return categoryCard(
                width: width * 0.31, 
                height: height * 0.2, 
                categoryName: categoryName[index], 
                imageBytes: categoryIcon[index],
                onTap: () {
                  Get.to(() => CategoryPage(categoryModel: categoryModel[index]));
                },
              );
            },
          )
        ),
      ],
    );
  }
}