import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/src/utils/chat_tile.dart';
import 'package:shoes_ecommerce_app/src/utils/costum_text.dart';
import 'package:shoes_ecommerce_app/src/utils/fixed_button.dart';
import 'package:shoes_ecommerce_app/theme.dart';

import 'widget/chat_list.dart';
import 'widget/chat_empty.dart';
import 'widget/chat_header.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ChatHeader(),
        ChatList(),
      ],
    );
  }
}
