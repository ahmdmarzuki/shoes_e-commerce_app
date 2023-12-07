import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/src/utils/costum_text.dart';
import 'package:shoes_ecommerce_app/theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product');
      },
      child: Container(
        padding: EdgeInsets.only(top: 30, bottom: 20),
        width: 215,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: cardColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Image.asset(
                'assets/image_shoes.png',
                width: 215,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CostumText(
                    text: "Hiking",
                    textStyle: subtitleTextStyle,
                    fontSize: 12,
                  ),
                  CostumText(
                    text: "COURT VISION 2.0",
                    textStyle: blackTextStyle,
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                  CostumText(
                    text: "\$58,67",
                    textStyle: priceTextStyle,
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
