import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/theme.dart';
import 'package:shoes_ecommerce_app/src/utils/costum_text.dart';

class CostumFormField extends StatelessWidget {
  final String icon;
  final String hintText;
  const CostumFormField(
      {super.key, required this.icon, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor2,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Image.asset(icon, width: 20),
          const SizedBox(width: 16),
          Expanded(
            child: TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration.collapsed(
                  hintText: hintText, hintStyle: subtitleTextStyle),
            ),
          ),
        ],
      ),
    );
  }
}
