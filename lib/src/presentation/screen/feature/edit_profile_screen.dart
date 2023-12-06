import 'package:flutter/material.dart';

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
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          child: IconButton(
            icon: Icon(Icons.close_rounded),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        elevation: 0,
        title: CostumText(
          text: "Edit Profile",
          textStyle: primaryTextStyle,
        ),
        toolbarHeight: 87,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            child: IconButton(
              icon: Icon(Icons.check),
              color: primaryColor,
              onPressed: () {},
            ),
          )
        ],
      );
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(87),
        child: header(),
      ),
      backgroundColor: backgroundColor3,
    );
  }
}
