import 'package:flutter/material.dart';

import '../../../../../../theme.dart';
import '../../../../../utils/costum_text.dart';

class Login_Header extends StatelessWidget {
  const Login_Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CostumText(
            fontSize: 24,
            text: "Login",
            fontWeight: semiBold,
            textStyle: primaryTextStyle,
          ),
          const SizedBox(height: 2),
          CostumText(text: "Sign in to continue", textStyle: subtitleTextStyle)
        ],
      ),
    );
  }
}
