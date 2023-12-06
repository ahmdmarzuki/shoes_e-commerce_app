import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/src/utils/costum_text.dart';
import 'package:shoes_ecommerce_app/src/utils/fixed_button.dart';
import 'package:shoes_ecommerce_app/theme.dart';

class EmptyChat extends StatelessWidget {
  const EmptyChat({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        color: backgroundColor3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image_no_message.png',
              width: 80,
            ),
            const SizedBox(height: 20),
            CostumText(
              text: "Opss no message yet?",
              textStyle: primaryTextStyle,
              fontSize: 16,
              fontWeight: medium,
            ),
            const SizedBox(height: 12),
            CostumText(
              text: "You have never done a transaction",
              textStyle: secondaryTextStyle,
              fontSize: 14,
            ),
            const SizedBox(height: 20),
            FixedButton(
                text: "Explore Store",
                buttonColor: primaryColor,
                textStyle: primaryTextStyle,
                navigateTo: '')
          ],
        ),
      ),
    );
  }
}
