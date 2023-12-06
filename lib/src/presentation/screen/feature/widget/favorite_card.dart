import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/src/utils/costum_text.dart';
import 'package:shoes_ecommerce_app/theme.dart';

class FavCard extends StatelessWidget {
  const FavCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: defaultMargin),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: backgroundColor4,
      ),
      child: Row(
        children: [
          Container(
            clipBehavior: Clip.antiAlias,
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset(
              'assets/image_shoes.png',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CostumText(
                text: "Terrex Urban Low",
                textStyle: primaryTextStyle,
                fontWeight: semiBold,
              ),
              const SizedBox(height: 2),
              CostumText(
                text: "\$143,98",
                textStyle: priceTextStyle,
              )
            ],
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 6),
            child: Image.asset(
              'assets/button_favorite_enable.png',
              width: 34,
            ),
          )
        ],
      ),
    );
  }
}
