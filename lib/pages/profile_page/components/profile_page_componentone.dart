import 'package:ecommerce_mobile/pages/profile_page/widgets/profile_data.dart';
import 'package:ecommerce_mobile/pages/profile_page/widgets/profile_name.dart';
import 'package:flutter/material.dart';

class ComponentOne extends StatelessWidget {
  const ComponentOne({super.key});

  @override
  Widget build(BuildContext context) {
    
    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;

    return Container(
      width: width,
      height: height * 0.3,
      decoration: BoxDecoration(color: Color(0xFF1F68BE)),
      child: Container(
        margin: EdgeInsets.only(top: height * 0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            profileName(
              name: "Acreus"
            ),
            profileData(
              wishlist: 2, 
              wallet: 200000, 
              point: 4, 
              height: height
            )
          ],
        ),
      ),
    );
  }
}