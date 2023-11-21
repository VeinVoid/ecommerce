import 'package:ecommerce_mobile/pages/address_page/widgets/card_address.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class AddressPageComponentTwo extends StatelessWidget {
  const AddressPageComponentTwo({super.key});

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.sizeOf(context).width;
    double height = MediaQuery.sizeOf(context).height;

    return Column(
      children: [
        cardAddress(height: height * 0.3, width: width * 0.9)
      ],
    );
  }
}