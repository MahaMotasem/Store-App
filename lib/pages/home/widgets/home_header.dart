import 'package:flutter/material.dart';
import 'package:store_app/constants/constants.dart';
import 'package:store_app/pages/home/home_page.dart';
import 'package:store_app/pages/home/widgets/search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(child: SearchField()),
          const SizedBox(width: 16),
          IconBtnWithCounter(
            // numOfitem: 3,
            svgSrc: cartIcon,
            press: () {},
          ),
          const SizedBox(width: 8),
          IconBtnWithCounter(
            svgSrc: bellIcon,
            numOfitem: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}