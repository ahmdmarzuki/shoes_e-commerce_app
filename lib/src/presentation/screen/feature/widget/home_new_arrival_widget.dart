// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/src/utils/costum_text.dart';
import 'package:shoes_ecommerce_app/src/utils/product_tile.dart';
import 'package:shoes_ecommerce_app/theme.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: CostumText(
            text: "New Arrival",
            textStyle: primaryTextStyle,
            fontSize: 22,
            fontWeight: semiBold,
          ),
        ),
        SizedBox(height: 14),
        ProductTile(),
        ProductTile(),
        ProductTile(),
        ProductTile(),
      ],
    );
  }
}
