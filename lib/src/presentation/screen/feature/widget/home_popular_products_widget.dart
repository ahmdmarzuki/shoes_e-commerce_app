// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/src/utils/costum_text.dart';
import 'package:shoes_ecommerce_app/src/utils/product_card.dart';
import 'package:shoes_ecommerce_app/theme.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: defaultMargin),
          child: CostumText(
            text: "Popular",
            textStyle: primaryTextStyle,
            fontSize: 22,
            fontWeight: semiBold,
          ),
        ),
        SizedBox(height: 14),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: defaultMargin),
              ProductCard(),
            ],
          ),
        )
      ],
    );
  }
}
