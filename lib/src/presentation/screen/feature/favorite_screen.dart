import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/src/utils/costum_text.dart';
import 'package:shoes_ecommerce_app/src/utils/fixed_button.dart';
import 'package:shoes_ecommerce_app/theme.dart';

import 'widget/favorite_card.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: CostumText(text: "Favorite Shoes", textStyle: primaryTextStyle),
      );
    }

    Widget emptyScreen() {
      return Expanded(
        child: Container(
          width: double.infinity,
          color: backgroundColor3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/image_favorite_empty.png',
                width: 72,
              ),
              const SizedBox(height: 24),
              CostumText(
                text: " You don't have dream shoes?",
                textStyle: primaryTextStyle,
                fontSize: 16,
                fontWeight: medium,
              ),
              const SizedBox(height: 2),
              CostumText(
                text: "Let's find your favorite shoes",
                textStyle: secondaryTextStyle,
              ),
              const SizedBox(height: 20),
              FixedButton(
                text: "Explore Store",
                buttonColor: primaryColor,
                textStyle: primaryTextStyle,
                navigateTo: '',
              )
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          color: backgroundColor3,
          child: ListView(
            children: [
              FavCard(),
              FavCard(),
              FavCard(),
              FavCard(),
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
