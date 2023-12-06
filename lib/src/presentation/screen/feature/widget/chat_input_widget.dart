import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/src/utils/product_view.dart';
import 'package:shoes_ecommerce_app/src/utils/fixed_button.dart';
import 'package:shoes_ecommerce_app/theme.dart';

class ChatInput extends StatelessWidget {
  const ChatInput({super.key});

  @override
  Widget build(BuildContext context) {
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
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
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
}
