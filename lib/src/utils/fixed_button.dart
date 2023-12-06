import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/theme.dart';
import 'package:shoes_ecommerce_app/src/utils/costum_text.dart';

class FixedButton extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final TextStyle textStyle;
  final String navigateTo;

  const FixedButton({
    super.key,
    required this.text,
    required this.buttonColor,
    required this.textStyle,
    required this.navigateTo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, navigateTo);
        },
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: CostumText(
          text: text,
          textStyle: textStyle,
          fontSize: 16,
          fontWeight: medium,
        ),
      ),
    );
  }
}
