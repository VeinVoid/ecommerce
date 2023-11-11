import 'dart:convert';

import 'package:ecommerce_mobile/model/product_model.dart';
import 'package:ecommerce_mobile/pages/detail_page/components/detail_page_app_bar.dart';
import 'package:ecommerce_mobile/pages/detail_page/components/detail_page_componentone.dart';
import 'package:ecommerce_mobile/pages/detail_page/components/detail_page_componentthree.dart';
import 'package:ecommerce_mobile/pages/detail_page/components/detail_page_componenttwo.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    super.key,
    required this.productModel
    });

    final Product productModel;

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;
    double height= MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: width * 0.05, right:  width * 0.05, top: height * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DetailPageAppBar(),
                SizedBox(height: height * 0.02),
                DetailPageComponentOne(
                  productName: productModel.productName, 
                  productPrice: productModel.productPrice,
                  productSalled: productModel.productSaled,
                  productImage: base64Decode(productModel.productImage)
                ),
                DetailPageComponentTwo(
                  description: productModel.productDescription,
                ),
                DetailPAgeComponentThree()
              ]
            ),
          ),
        ),
      ),
    );
  }
}