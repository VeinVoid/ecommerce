import 'package:ecommerce_mobile/pages/profile_page/widgets/profile_card_menu.dart';
import 'package:flutter/material.dart';

class ComponentTwo extends StatelessWidget {
  const ComponentTwo({super.key});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;

    return Container(
      child: profileCardMenu(
        width: width * 0.8,
        height: height * 0.4
      ),
    );
  }
}