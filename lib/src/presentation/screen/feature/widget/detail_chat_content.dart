import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/src/utils/chat_bubble.dart';
import 'package:shoes_ecommerce_app/src/utils/product_preview.dart';
import 'package:shoes_ecommerce_app/theme.dart';

class ChatContent extends StatelessWidget {
  const ChatContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      // physics: const NeverScrollableScrollPhysics(),
      physics: BouncingScrollPhysics(),
      reverse: true,
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      children: [
        ChatBubble(
          isSender: true,
          text: "Hi, This item is still available?",
          hasProduct: true,
        ),
        ChatBubble(
          isSender: false,
          text: "Good night, This item is only available in size 42 and 43",
        ),
        ChatBubble(
          isSender: true,
          text: "Owww, it suits me very well",
        ),
      ],
    );
  }
}
