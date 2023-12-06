import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/src/utils/costum_text.dart';
import 'package:shoes_ecommerce_app/theme.dart';

class DetailChatHeader extends StatelessWidget {
  const DetailChatHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor1,
      elevation: 0,
      toolbarHeight: 90,
      centerTitle: false,
      title: Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 25,
                child: Image.asset('assets/image_union_profile.png'),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 7,
                  backgroundColor: backgroundColor1,
                  child: CircleAvatar(
                    backgroundColor: onlineIndicator,
                    radius: 5,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CostumText(
                text: "Shoe Store",
                textStyle: primaryTextStyle,
                fontSize: 14,
                fontWeight: medium,
              ),
              CostumText(
                text: "Online",
                textStyle: subtitleTextStyle,
                fontSize: 14,
                fontWeight: light,
              )
            ],
          )
        ],
      ),
    );
  }
}
