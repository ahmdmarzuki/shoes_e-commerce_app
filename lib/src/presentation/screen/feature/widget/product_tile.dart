import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/src/utils/costum_text.dart';
import 'package:shoes_ecommerce_app/theme.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: defaultMargin,
        right: defaultMargin,
        left: defaultMargin,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/image_shoes.png',
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CostumText(
                  text: "Running",
                  textStyle: subtitleTextStyle,
                  fontSize: 12,
                ),
                const SizedBox(height: 6),
                CostumText(
                  text: "Ultra 4D 5 Shoes",
                  textStyle: primaryTextStyle,
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
                const SizedBox(height: 6),
                CostumText(
                  text: "\$285,73",
                  textStyle: priceTextStyle,
                  fontSize: 14,
                  fontWeight: medium,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
