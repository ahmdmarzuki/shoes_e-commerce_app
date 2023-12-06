import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/src/utils/costum_text.dart';
import 'package:shoes_ecommerce_app/theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: backgroundColor1,
        flexibleSpace: SafeArea(
            child: Container(
          padding: EdgeInsets.all(defaultMargin),
          child: Row(
            children: [
              CircleAvatar(
                radius: 32,
                child: Image.asset('assets/image_profile.png'),
              ),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CostumText(
                      text: "Hello, Achmed",
                      textStyle: primaryTextStyle,
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                    CostumText(
                      text: "Hello, Achmed",
                      textStyle: subtitleTextStyle,
                      fontSize: 16,
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/login', (route) => false);
                },
                child: Image.asset(
                  'assets/icon_logout.png',
                  width: 20,
                ),
              )
            ],
          ),
        )),
      );
    }

    Widget menuItem(String text, String navigateTo) {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, navigateTo);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CostumText(
                text: text,
                textStyle: secondaryTextStyle,
                fontSize: 14,
              ),
              Icon(
                Icons.chevron_right,
                color: secondaryTextColor,
              )
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: backgroundColor3,
          ),
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              CostumText(
                text: "Account",
                textStyle: primaryTextStyle,
                fontSize: 16,
                fontWeight: semiBold,
              ),
              menuItem("Edit profile", '/edit-profile'),
              menuItem("Your orders", ''),
              menuItem("help", ''),
              SizedBox(height: 25),
              CostumText(
                text: "General",
                textStyle: primaryTextStyle,
                fontSize: 16,
                fontWeight: semiBold,
              ),
              menuItem("Privacy & Policy", ''),
              menuItem("Term of Service", ''),
              menuItem("Rate App", ''),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [header(), content()],
    );
  }
}
