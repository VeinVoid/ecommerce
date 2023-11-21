import 'package:ecommerce_mobile/pages/account_page/components/account_componentone.dart';
import 'package:ecommerce_mobile/pages/account_page/components/account_componenttwo.dart';
import 'package:flutter/material.dart';

class AccounPage extends StatelessWidget {
  const AccounPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AccountComponentOne(),
          AccountPageComponentTwo()
        ],
      ),
    );
  }
}