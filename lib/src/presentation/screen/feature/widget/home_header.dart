import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/src/utils/costum_text.dart';
import 'package:shoes_ecommerce_app/theme.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: defaultMargin,
        right: defaultMargin,
        left: defaultMargin,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CostumText(
                  text: "Hello, Achmed",
                  textStyle: primaryTextStyle,
                  fontSize: 24,
                  fontWeight: bold,
                ),
                CostumText(text: "@achmeddd", textStyle: subtitleTextStyle)
              ],
            ),
          ),
          CircleAvatar(
            radius: 24,
            child: Image.asset('assets/image_profile.png'),
          ),
        ],
      ),
    );
  }
}
