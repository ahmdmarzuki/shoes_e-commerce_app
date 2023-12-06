import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/theme.dart';
import 'package:shoes_ecommerce_app/src/utils/costum_text.dart';

class Login_Footer extends StatelessWidget {
  const Login_Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CostumText(
          text: "Don't have an account?",
          textStyle: subtitleTextStyle,
          fontSize: 12,
        ),
        SizedBox(width: 2),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/signup');
          },
          child: CostumText(
            text: "Sign Up",
            textStyle: purpleTextStyle,
            fontSize: 12,
          ),
        )
      ],
    );
  }
}
