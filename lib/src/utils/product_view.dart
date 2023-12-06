import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/src/utils/costum_text.dart';
import 'package:shoes_ecommerce_app/theme.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74,
      width: 225,
      decoration: BoxDecoration(
        color: backgroundColor5,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: primaryColor),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 54,
              width: 54,
              clipBehavior: Clip.antiAlias,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12)),
              child: Image.asset(
                'assets/image_shoes.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CostumText(
                    text: "Ultra 4D 5 Shoes",
                    textStyle: primaryTextStyle,
                  ),
                  CostumText(
                    text: "\$57,15",
                    textStyle: priceTextStyle,
                    fontWeight: medium,
                  )
                ],
              ),
            ),
            SizedBox(width: 20),
            Image.asset(
              'assets/icon_close.png',
              width: 22,
            )
          ],
        ),
      ),
    );
  }
}
