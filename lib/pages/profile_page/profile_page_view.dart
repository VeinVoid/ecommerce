import 'package:ecommerce_mobile/pages/profile_page/components/profile_page_componentone.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Column(
        children: [
          ComponentOne()
        ],
      ),
    );
  }
}