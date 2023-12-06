import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/src/utils/costum_text.dart';
import 'package:shoes_ecommerce_app/src/utils/fixed_button.dart';
import 'package:shoes_ecommerce_app/theme.dart';

import 'widget/chat_tile.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
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

    Widget emptyChat() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: backgroundColor3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/image_no_message.png',
                width: 80,
              ),
              const SizedBox(height: 20),
              CostumText(
                text: "Opss no message yet?",
                textStyle: primaryTextStyle,
                fontSize: 16,
                fontWeight: medium,
              ),
              const SizedBox(height: 12),
              CostumText(
                text: "You have never done a transaction",
                textStyle: secondaryTextStyle,
                fontSize: 14,
              ),
              const SizedBox(height: 20),
              FixedButton(
                  text: "Explore Store",
                  buttonColor: primaryColor,
                  textStyle: primaryTextStyle,
                  navigateTo: '')
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: backgroundColor3,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            children: const [
              SizedBox(height: 30),
              ChatTile(),
              ChatTile(),
              ChatTile(),
              ChatTile(),
              ChatTile(),
              ChatTile(),
              ChatTile(),
              ChatTile(),
              ChatTile(),
              ChatTile(),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
