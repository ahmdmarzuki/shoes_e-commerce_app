import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/src/utils/costum_text.dart';
import 'package:shoes_ecommerce_app/theme.dart';

class CartCard extends StatelessWidget {
  const CartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: backgroundColor4,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                clipBehavior: Clip.antiAlias,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(12)),
                child: Image.asset(
                  'assets/image_shoes.png',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CostumText(
                      text: "Terrex Urban Low",
                      textStyle: primaryTextStyle,
                      fontWeight: semiBold,
                    ),
                    const SizedBox(width: 2),
                    CostumText(text: "\$143,98", textStyle: priceTextStyle)
                  ],
                ),
              ),
              const Spacer(),
              Column(
                children: [
                  Image.asset(
                    'assets/icon_add.png',
                    width: 16,
                  ),
                  const SizedBox(width: 2),
                  CostumText(
                    text: "2",
                    textStyle: primaryTextStyle,
                    fontWeight: medium,
                  ),
                  const SizedBox(width: 2),
                  Image.asset(
                    'assets/icon_reduce.png',
                    width: 16,
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Image.asset('assets/icon_subtract.png', width: 12),
              const SizedBox(width: 4),
              CostumText(
                text: "Remove",
                textStyle: alertTextStyle,
                fontSize: 12,
                fontWeight: light,
              )
            ],
          )
        ],
      ),
    );
  }
}
