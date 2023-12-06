// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import '../../../../../../theme.dart';
import '../../../../../utils/costum_text.dart';
import '../../../../../utils/formfield.dart';

class Login_EmailInput extends StatelessWidget {
  
  const Login_EmailInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 70),
        CostumText(
          text: "Email Address",
          textStyle: primaryTextStyle,
          fontSize: 16,
        ),
        const SizedBox(height: 12),
        const CostumFormField(
          icon: 'assets/icon_email.png',
          hintText: 'example@gmail.com',
        ),
      ],
    );
  }
}
