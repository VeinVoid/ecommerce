import 'package:ecommerce_mobile/global/widgets/price_filter.dart';
import 'package:ecommerce_mobile/global/widgets/search_field.dart';
import 'package:flutter/material.dart';

class FilterMainPage extends StatelessWidget {
  const FilterMainPage({super.key});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          searchField(
            width: width * 0.9,
            height: height * 0.1,
            hintText: 'Search Product'
          )
        ],
      ),
    );
  }
}