import 'package:ecommerce_mobile/utils/thames.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HeaderMainPage extends StatelessWidget {
  const HeaderMainPage({
    required this.pageName,
  });

  final String pageName;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                pageName,
                style: tsHeader(fontWeight: FontWeight.w700),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(
                    '/cart',
                    arguments: {
                      
                    }
                  );
                },
                child: SvgPicture.asset(
                  'assets/icons/icon_cart.svg'
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}