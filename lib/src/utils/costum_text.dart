import 'package:flutter/material.dart';

class CostumText extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final TextStyle textStyle;
  final double? fontSize;
  final TextOverflow? textOverflow;
  const CostumText(
      {super.key,
      required this.text,
      required this.textStyle,
      this.fontWeight,
      this.fontSize,
      this.textOverflow = TextOverflow.ellipsis});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle.copyWith(
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
      overflow: textOverflow,
    );
  }
}
