import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/src/utils/costum_text.dart';
import 'package:shoes_ecommerce_app/src/utils/fixed_button.dart';
import 'package:shoes_ecommerce_app/theme.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        toolbarHeight: 87,
        centerTitle: true,
        elevation: 0,
        title: CostumText(text: "Your Cart", textStyle: primaryTextStyle),
      );
    }

    Widget emptyCart() {
      return Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/image_cart_empty.png',
                width: 70,
              ),
              SizedBox(height: 20),
              CostumText(
                text: "Opss! Your Cart is Empty",
                textStyle: primaryTextStyle,
                fontSize: 16,
                fontWeight: medium,
              ),
              SizedBox(height: 12),
              CostumText(
                text: "Let's find your favorite shoes",
                textStyle: secondaryTextStyle,
              ),
              SizedBox(height: 20),
              Container(
                width: 154,
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
                        text: "Explore store", textStyle: primaryTextStyle)),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar:
          PreferredSize(preferredSize: Size.fromHeight(87), child: header()),
      body: emptyCart(),
    );
  }
}
