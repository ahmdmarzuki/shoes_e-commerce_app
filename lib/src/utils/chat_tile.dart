import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/src/utils/costum_text.dart';
import 'package:shoes_ecommerce_app/theme.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail-chat');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            CircleAvatar(
              radius: 27,
              child: Image.asset('assets/image_union_profile.png'),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CostumText(
                    text: "Shoe Store",
                    textStyle: primaryTextStyle,
                    fontSize: 15,
                  ),
                  CostumText(
                    text: "Good night, This item is better than others",
                    textStyle: secondaryTextStyle,
                    fontSize: 15,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 38),
            CostumText(text: "Now", textStyle: secondaryTextStyle)
          ],
        ),
      ),
    );
  }
}
