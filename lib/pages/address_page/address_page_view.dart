import 'package:ecommerce_mobile/pages/address_page/components/address_page_componentone.dart';
import 'package:ecommerce_mobile/pages/address_page/components/address_page_componenttwo.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AddressPageComponentOne(),
        AddressPageComponentTwo()
      ],
    );
  }
}