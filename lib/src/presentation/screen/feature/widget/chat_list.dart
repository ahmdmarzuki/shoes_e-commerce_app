import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/src/utils/chat_tile.dart';
import 'package:shoes_ecommerce_app/theme.dart';

class ChatList extends StatelessWidget {
  const ChatList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(top: defaultMargin),
        width: double.infinity,
        color: backgroundColor3,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [
            ChatTile(),
            ChatTile(),
            ChatTile(),
            ChatTile(),
          ],
        ),
      ),
    );
  }
}
