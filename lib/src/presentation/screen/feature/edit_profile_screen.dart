import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../theme.dart';
import '../../../utils/costum_text.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.close_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        title: CostumText(
          text: "Edit Profile",
          textStyle: primaryTextStyle,
        ),
        toolbarHeight: 87,
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            color: primaryColor,
            onPressed: () {},
          )
        ],
      );
    }

    Widget nameInput() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CostumText(
              text: "Name",
              textStyle: secondaryTextStyle,
              fontSize: 13,
            ),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                  hintText: "Alexandria",
                  hintStyle: subtitleTextStyle,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: subtitleTextColor),
                  )),
            )
          ],
        ),
      );
    }

    Widget usernameInput() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CostumText(
              text: "Username",
              textStyle: secondaryTextStyle,
              fontSize: 13,
            ),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                  hintText: "@alexkeinn",
                  hintStyle: subtitleTextStyle,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: subtitleTextColor),
                  )),
            )
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CostumText(
              text: "Email",
              textStyle: secondaryTextStyle,
              fontSize: 13,
            ),
            TextFormField(
              style: primaryTextStyle,
              decoration: InputDecoration(
                  hintText: "alex.kein@gmail.com",
                  hintStyle: subtitleTextStyle,
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: subtitleTextColor),
                  )),
            )
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: defaultMargin),
            CircleAvatar(
              radius: 50,
              child: Image.asset('assets/image_profile.png'),
            ),
            nameInput(),
            usernameInput(),
            emailInput()
          ],
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(87),
        child: header(),
      ),
      backgroundColor: backgroundColor3,
      body: content(),
    );
  }
}
