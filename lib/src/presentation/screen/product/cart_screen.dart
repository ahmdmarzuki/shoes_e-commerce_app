import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/src/presentation/screen/product/widget/cart_card.dart';
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
              const SizedBox(height: 20),
              CostumText(
                text: "Opss! Your Cart is Empty",
                textStyle: primaryTextStyle,
                fontSize: 16,
                fontWeight: medium,
              ),
              const SizedBox(height: 12),
              CostumText(
                text: "Let's find your favorite shoes",
                textStyle: secondaryTextStyle,
              ),
              const SizedBox(height: 20),
              SizedBox(
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

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: const [
          CartCard(),
          CartCard(),
          CartCard(),
          CartCard(),
          CartCard(),
          CartCard(),
        ],
      );
    }

    Widget checkoutButton() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        height: 50,
        width: double.infinity,
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/checkout');
          },
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CostumText(
                  text: "Continue to Checkout",
                  textStyle: primaryTextStyle,
                  fontSize: 16,
                  fontWeight: medium,
                ),
                Icon(
                  Icons.arrow_forward_rounded,
                  color: primaryTextColor,
                )
              ],
            ),
          ),
        ),
      );
    }

    Widget cartBottomNav() {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 20),
          Container(
            margin: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CostumText(
                  text: "Subtotal",
                  textStyle: primaryTextStyle,
                ),
                CostumText(
                  text: "\$287,96",
                  textStyle: priceTextStyle,
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Divider(
            thickness: 1,
            color: subtitleTextColor,
          ),
          const SizedBox(height: 30),
          checkoutButton(),
          const SizedBox(height: 30),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(87), child: header()),
      body: content(),
      bottomNavigationBar: cartBottomNav(),
    );
  }
}
