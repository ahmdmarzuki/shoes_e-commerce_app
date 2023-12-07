import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/src/presentation/screen/product/widget/checkout_card.dart';
import 'package:shoes_ecommerce_app/theme.dart';

import '../../../utils/costum_text.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        toolbarHeight: 87,
        centerTitle: true,
        elevation: 0,
        title:
            CostumText(text: "Checkout Details", textStyle: primaryTextStyle),
      );
    }

    Widget checkoutButton() {
      return Container(
        height: 50,
        width: double.infinity,
        child: TextButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/checkout-success', (route) => false);
          },
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: CostumText(
            text: "Checkout Now",
            textStyle: primaryTextStyle,
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          // LIST ITEM
          Container(
            margin: EdgeInsets.only(top: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CostumText(
                  text: "List item",
                  textStyle: primaryTextStyle,
                  fontSize: 16,
                  fontWeight: medium,
                ),
                const SizedBox(height: 12),
                const CheckoutCard(),
              ],
            ),
          ),

          SizedBox(height: defaultMargin),

          // ADDRESS DETAIL
          Container(
            decoration: BoxDecoration(
                color: backgroundColor4,
                borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CostumText(
                text: "Address Details",
                textStyle: primaryTextStyle,
                fontSize: 16,
                fontWeight: medium,
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/icon_store_location.png',
                        width: 40,
                      ),
                      Image.asset(
                        'assets/icon_line.png',
                        height: 30,
                      ),
                      Image.asset(
                        'assets/icon_your_address.png',
                        width: 40,
                      ),
                    ],
                  ),
                  SizedBox(width: 12),
                  Column(
                    children: [
                      CostumText(
                        text: "Store Location",
                        textStyle: secondaryTextStyle,
                        fontSize: 12,
                        fontWeight: light,
                      ),
                      CostumText(
                        text: "Adidas Core",
                        textStyle: primaryTextStyle,
                        fontWeight: medium,
                      ),
                      SizedBox(height: defaultMargin),
                      Column(
                        children: [
                          CostumText(
                            text: "Your Address",
                            textStyle: secondaryTextStyle,
                            fontSize: 12,
                            fontWeight: light,
                          ),
                          CostumText(
                            text: "Marsemoon",
                            textStyle: primaryTextStyle,
                            fontWeight: medium,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ]),
          ),

          SizedBox(height: defaultMargin),

          // ADDRESS SUMMARY
          Container(
            decoration: BoxDecoration(
                color: backgroundColor4,
                borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CostumText(
                  text: "Payment Summary",
                  textStyle: primaryTextStyle,
                  fontSize: 16,
                  fontWeight: medium,
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CostumText(
                      text: "Product Quantity",
                      textStyle: secondaryTextStyle,
                      fontSize: 12,
                    ),
                    CostumText(
                      text: "2 Items",
                      textStyle: primaryTextStyle,
                      fontWeight: medium,
                    )
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CostumText(
                      text: "Product Quantity",
                      textStyle: secondaryTextStyle,
                      fontSize: 12,
                    ),
                    CostumText(
                      text: "2 Items",
                      textStyle: primaryTextStyle,
                      fontWeight: medium,
                    )
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CostumText(
                      text: "Product Price",
                      textStyle: secondaryTextStyle,
                      fontSize: 12,
                    ),
                    CostumText(
                      text: "\$575.96",
                      textStyle: primaryTextStyle,
                      fontWeight: medium,
                    )
                  ],
                ),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CostumText(
                      text: "Shipping",
                      textStyle: secondaryTextStyle,
                      fontSize: 12,
                    ),
                    CostumText(
                      text: "Free",
                      textStyle: primaryTextStyle,
                      fontWeight: medium,
                    )
                  ],
                ),
                SizedBox(height: 10),
                Divider(
                  thickness: 1,
                  color: subtitleTextColor,
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CostumText(
                      text: "Total",
                      textStyle: priceTextStyle,
                      fontWeight: semiBold,
                    ),
                    CostumText(
                      text: "\$575.92",
                      textStyle: priceTextStyle,
                      fontWeight: semiBold,
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: defaultMargin),
          Divider(
            thickness: 1,
            color: subtitleTextColor,
          ),
          SizedBox(height: defaultMargin),
          checkoutButton(),
          SizedBox(height: defaultMargin),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(87), child: header()),
      body: content(),
    );
  }
}
