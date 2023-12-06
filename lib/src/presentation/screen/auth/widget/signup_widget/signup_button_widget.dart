import 'package:flutter/material.dart';

import '../../../../../../theme.dart';
import '../../../../../utils/wide_button.dart';

class Signup_Button extends StatelessWidget {
  const Signup_Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30),
        WideButton(
          text: "Sign Up",
          textStyle: primaryTextStyle,
          buttonColor: primaryColor, navigateTo: '/main',
        ),
      ],
    );
  }
}
