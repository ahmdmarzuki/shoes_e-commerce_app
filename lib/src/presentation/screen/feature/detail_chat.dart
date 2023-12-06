import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/src/presentation/screen/feature/widget/chat_input_widget.dart';
import 'package:shoes_ecommerce_app/src/presentation/screen/feature/widget/detail_chat_content.dart';
import 'package:shoes_ecommerce_app/src/presentation/screen/feature/widget/detail_chat_header.dart';
import 'package:shoes_ecommerce_app/src/utils/costum_text.dart';
import 'package:shoes_ecommerce_app/theme.dart';

class DetailChat extends StatelessWidget {
  const DetailChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: DetailChatHeader(),
      ),
      bottomNavigationBar: const ChatInput(),
      body: SingleChildScrollView(
        // reverse: true,
        // dragStartBehavior: DragStartBehavior.down,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ChatContent(),
          ],
        ),
      ),
    );
  }
}
