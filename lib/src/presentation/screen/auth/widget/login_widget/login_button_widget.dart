import 'package:flutter/material.dart';

import '../../../../../../theme.dart';
import '../../../../../utils/wide_button.dart';

class Login_Button extends StatelessWidget {
  const Login_Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30),
        WideButton(
          text: "Log In",
          textStyle: primaryTextStyle,
          buttonColor: primaryColor,
          navigateTo: '/main',
        ),
      ],
    );
  }
}
