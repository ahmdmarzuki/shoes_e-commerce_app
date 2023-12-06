import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/src/utils/costum_text.dart';
import 'package:shoes_ecommerce_app/theme.dart';

import 'widget/chat_bubble.dart';
import 'widget/product_view.dart';

class DetailChat extends StatelessWidget {
  const DetailChat({super.key});

  @override
  Widget build(BuildContext context) {

    Widget header() {
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

    Widget chatInput() {
      return Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProductView(),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 16),
                      decoration: BoxDecoration(
                          color: backgroundColor2,
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: TextFormField(
                          decoration: InputDecoration.collapsed(
                            hintText: "Typle Message...",
                            hintStyle: secondaryTextStyle,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: SizedBox(
                        width: 20,
                        height: 20,
                        child: Image.asset(
                          'assets/icon_submit.png',
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return ListView(
        
        physics: const BouncingScrollPhysics(),
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

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90),
        child: header(),
      ),
      bottomNavigationBar: chatInput(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            content(),
          ],
        ),
      ),
    );
  }
}
