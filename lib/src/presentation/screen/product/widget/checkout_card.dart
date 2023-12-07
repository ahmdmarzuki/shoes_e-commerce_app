import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/src/utils/costum_text.dart';
import 'package:shoes_ecommerce_app/theme.dart';

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
      decoration: BoxDecoration(
          color: backgroundColor4, borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: Image.asset(
              'assets/image_shoes.png',
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CostumText(
                  text: "Terrex Urban Low",
                  textStyle: primaryTextStyle,
                  fontWeight: semiBold,
                  textOverflow: TextOverflow.ellipsis,
                ),
                CostumText(
                  text: "\$143,98",
                  textStyle: priceTextStyle,
                )
              ],
            ),
          ),
          SizedBox(width: 10),
          CostumText(text: "2 Items", textStyle: secondaryTextStyle)
        ],
      ),
    );
  }
}
