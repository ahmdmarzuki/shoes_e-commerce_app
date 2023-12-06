import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/theme.dart';
import 'package:shoes_ecommerce_app/src/utils/costum_text.dart';

class Signup_Footer extends StatelessWidget {
  const Signup_Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CostumText(
          text: "Already have an accaount?",
          textStyle: subtitleTextStyle,
          fontSize: 12,
        ),
        const SizedBox(width: 2),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: CostumText(
            text: "Login",
            textStyle: purpleTextStyle,
            fontSize: 12,
          ),
        )
      ],
    );
  }
}
