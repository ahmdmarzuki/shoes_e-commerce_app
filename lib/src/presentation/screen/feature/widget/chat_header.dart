import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/src/utils/costum_text.dart';
import 'package:shoes_ecommerce_app/theme.dart';

class ChatHeader extends StatelessWidget {
  const ChatHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor1,
      centerTitle: true,
      elevation: 0,
      title: CostumText(
        text: "Message Support",
        textStyle: primaryTextStyle,
      ),
      toolbarHeight: 87,
    );
  }
}
