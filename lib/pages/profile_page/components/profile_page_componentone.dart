import 'package:ecommerce_mobile/pages/profile_page/profile_page_controller.dart';
import 'package:ecommerce_mobile/pages/profile_page/widgets/profile_data.dart';
import 'package:ecommerce_mobile/pages/profile_page/widgets/profile_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ComponentOne extends StatelessWidget {
  const ComponentOne({super.key});

  @override
  Widget build(BuildContext context) {

    final ProfilePageController profilePageController = Get.find<ProfilePageController>();
    profilePageController.onInit();
    
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
              name: profilePageController.username.value
            ),
            profileData(
              wishlist: 2, 
              wallet: profilePageController.saldo.value, 
              point: 4, 
              height: height
            )
          ],
        ),
      ),
    );
  }
}