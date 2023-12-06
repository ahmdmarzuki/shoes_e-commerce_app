// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

import '../../../../theme.dart';
import '../../../utils/costum_text.dart';
import 'widget/product_card.dart';
import 'widget/product_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          right: defaultMargin,
          left: defaultMargin,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CostumText(
                    text: "Hello, Achmed",
                    textStyle: primaryTextStyle,
                    fontSize: 24,
                    fontWeight: bold,
                  ),
                  CostumText(text: "@achmeddd", textStyle: subtitleTextStyle)
                ],
              ),
            ),
            CircleAvatar(
              radius: 24,
              child: Image.asset('assets/image_profile.png'),
            ),
          ],
        ),
      );
    }

    Widget categories() {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: defaultMargin),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: CostumText(
                text: "All Shoes",
                textStyle: primaryTextStyle,
                fontWeight: medium,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: .3, color: subtitleTextColor)),
              child: CostumText(
                text: "Running",
                textStyle: subtitleTextStyle,
                fontWeight: medium,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: .3, color: subtitleTextColor)),
              child: CostumText(
                text: "Training",
                textStyle: subtitleTextStyle,
                fontWeight: medium,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: .3, color: subtitleTextColor)),
              child: CostumText(
                text: "Basketball",
                textStyle: subtitleTextStyle,
                fontWeight: medium,
              ),
            ),
          ],
        ),
      );
    }

    Widget popularProduct() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: defaultMargin),
            child: CostumText(
              text: "Popular",
              textStyle: primaryTextStyle,
              fontSize: 22,
              fontWeight: semiBold,
            ),
          ),
          SizedBox(height: 14),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: defaultMargin),
                ProductCard(),
              ],
            ),
          )
        ],
      );
    }

    Widget newArrival() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: CostumText(
              text: "New Arrival",
              textStyle: primaryTextStyle,
              fontSize: 22,
              fontWeight: semiBold,
            ),
          ),
          SizedBox(height: 14),
          ProductTile(),
          ProductTile(),
          ProductTile(),
          ProductTile(),
        ],
      );
    }

    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            SizedBox(height: 30),
            categories(),
            SizedBox(height: 30),
            popularProduct(),
            SizedBox(height: 30),
            newArrival()
          ],
        ),
      ),
    );
  }
}
