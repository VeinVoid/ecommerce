import 'package:ecommerce_mobile/helper/thames.dart';
import 'package:ecommerce_mobile/pages/account_page/widgets/card_account_widget.dart';
import 'package:flutter/material.dart';

class AccountPageComponentTwo extends StatelessWidget {
  const AccountPageComponentTwo({super.key});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;
    double height= MediaQuery.sizeOf(context).height;

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: width * 0.02, vertical: height * 0.03),
            child: Text(
              'My Account',
              style: tsParaghraph20(fontWeight: FontWeight.w600),
            ),
          ),
          accountCardMenu(
            width: width * 0.9,
            height: height * 0.4
          )
        ],
      ),
    );
  }
}