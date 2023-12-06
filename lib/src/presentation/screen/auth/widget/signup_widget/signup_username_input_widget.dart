import 'package:flutter/material.dart';

import '../../../../../../theme.dart';
import '../../../../../utils/costum_text.dart';
import '../../../../../utils/formfield.dart';

class Signup_UsernameInput extends StatelessWidget {
  const Signup_UsernameInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        CostumText(
          text: "Username",
          textStyle: primaryTextStyle,
          fontSize: 16,
        ),
        const SizedBox(height: 12),
        const CostumFormField(
          icon: 'assets/icon_username.png',
          hintText: 'Leo',
        ),
      ],
    );
  }
}
