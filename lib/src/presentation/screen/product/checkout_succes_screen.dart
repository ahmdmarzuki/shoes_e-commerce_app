import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/theme.dart';

import '../../../utils/costum_text.dart';

class CheckoutSuccess extends StatelessWidget {
  const CheckoutSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        toolbarHeight: 87,
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: CostumText(
          text: "Checkout Success",
          textStyle: primaryTextStyle,
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image_cart_empty.png',
              width: 70,
            ),
            const SizedBox(height: 20),
            CostumText(
              text: "You made a transaction",
              textStyle: primaryTextStyle,
              fontSize: 16,
              fontWeight: medium,
            ),
            const SizedBox(height: 12),
            CostumText(
              text: "Stay at home while we\nprepare your dream shoes",
              textStyle: secondaryTextStyle,
              align: TextAlign.center,
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 196,
              height: 44,
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/main', (route) => false);
                  },
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: primaryColor),
                  child: CostumText(
                    text: "Order Other Shoes",
                    textStyle: primaryTextStyle,
                    fontSize: 16,
                    fontWeight: medium,
                  )),
            ),
            SizedBox(height: 12),
            SizedBox(
              width: 196,
              height: 44,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/main', (route) => false);
                },
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    backgroundColor: secondaryButtonColor),
                child: CostumText(
                  text: "View My Order",
                  textStyle: secondaryTextStyle,
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      appBar:
          PreferredSize(preferredSize: Size.fromHeight(87), child: header()),
      backgroundColor: backgroundColor1,
      body: content(),
    );
  }
}
