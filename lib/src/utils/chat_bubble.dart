import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/src/utils/costum_text.dart';
import 'package:shoes_ecommerce_app/theme.dart';

// ignore: must_be_immutable
class ChatBubble extends StatelessWidget {
  final String text;
  bool isSender;
  final bool hasProduct;
  ChatBubble(
      {super.key,
      this.isSender = false,
      required this.text,
      this.hasProduct = false});

  @override
  Widget build(BuildContext context) {
    Widget ProductPreview() {
      return Row(
        mainAxisAlignment:
            isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * .6),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(isSender ? 12 : 0),
                    topRight: Radius.circular(isSender ? 0 : 12),
                    bottomLeft: const Radius.circular(12),
                    bottomRight: const Radius.circular(12),
                  ),
                  color: isSender ? backgroundColor5 : backgroundColor4,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Image.asset('assets/image_shoes.png'),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CostumText(
                                text: "COURT VISION \n2.0 SHOES",
                                textStyle: primaryTextStyle,
                                textOverflow: TextOverflow.visible,
                              ),
                              CostumText(
                                text: "\$57,15",
                                textStyle: priceTextStyle,
                                textOverflow: TextOverflow.visible,
                                fontWeight: medium,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: primaryColor),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: CostumText(
                              text: "Add to cart", textStyle: purpleTextStyle),
                        ),
                        TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                                padding: const EdgeInsetsDirectional.symmetric(
                                    horizontal: 16),
                                backgroundColor: primaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                )),
                            child: CostumText(
                              text: "Buy Now",
                              textStyle: primaryTextStyle,
                              fontWeight: medium,
                            ))
                      ],
                    )
                  ],
                )),
          )
        ],
      );
    }

    return Column(
      children: [
        hasProduct ? ProductPreview() : const SizedBox(),
        Row(
          mainAxisAlignment:
              isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.6),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                margin: const EdgeInsets.only(bottom: 20, top: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(isSender ? 12 : 0),
                    topRight: Radius.circular(isSender ? 0 : 12),
                    bottomLeft: const Radius.circular(12),
                    bottomRight: const Radius.circular(12),
                  ),
                  color: isSender ? backgroundColor5 : backgroundColor4,
                ),
                child: CostumText(
                  text: text,
                  textStyle: primaryTextStyle,
                  textOverflow: TextOverflow.visible,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
