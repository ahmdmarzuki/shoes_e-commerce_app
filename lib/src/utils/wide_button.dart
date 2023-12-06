import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/theme.dart';
import 'package:shoes_ecommerce_app/src/utils/costum_text.dart';

class WideButton extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final TextStyle textStyle;
  final String navigateTo;
  const WideButton({
    super.key,
    required this.text,
    required this.buttonColor,
    required this.textStyle,
    required this.navigateTo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, navigateTo);
        },
        style: TextButton.styleFrom(
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
