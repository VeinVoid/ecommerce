import 'package:ecommerce_mobile/global/widgets/category_card.dart';
import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/material.dart';

class HomePageCategory extends StatelessWidget {
  const HomePageCategory({super.key});

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
        SizedBox(height: height * 0.02),
        Container(
          width: width,
          height: width * 0.4,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              return categoryCard(width: width * 0.3, height: width * 0.3, categoryName: "asas", imageUrl: back);
            },
          )
        ),
      ],
    );
  }
}