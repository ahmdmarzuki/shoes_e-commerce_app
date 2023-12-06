import 'package:flutter/material.dart';

import '../../../../../../theme.dart';
import '../../../../../utils/costum_text.dart';
import '../../../../../utils/password_formfield.dart';

class Signup_PasswordInput extends StatelessWidget {
  const Signup_PasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        CostumText(
          text: "Password",
          textStyle: primaryTextStyle,
          fontSize: 16,
        ),
        const SizedBox(height: 12),
        const CostumPasswordFormField(
          icon: 'assets/icon_password.png',
          hintText: 'Your Password',
        ),
      ],
    );
  }
}
