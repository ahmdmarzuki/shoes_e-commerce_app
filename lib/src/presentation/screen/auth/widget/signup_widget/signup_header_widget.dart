import 'package:flutter/material.dart';

import '../../../../../../theme.dart';
import '../../../../../utils/costum_text.dart';

class Signup_Header extends StatelessWidget {
  const Signup_Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CostumText(
            fontSize: 24,
            text: "Sign Up",
            fontWeight: semiBold,
            textStyle: primaryTextStyle,
          ),
          const SizedBox(height: 2),
          CostumText(
              text: "Register and Happy Shoping", textStyle: subtitleTextStyle)
        ],
      ),
    );
  }
}
