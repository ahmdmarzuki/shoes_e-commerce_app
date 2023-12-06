import 'package:flutter/material.dart';

import '../../../../../../theme.dart';
import '../../../../../utils/costum_text.dart';
import '../../../../../utils/formfield.dart';

class Signup_FullnameInput extends StatelessWidget {
  const Signup_FullnameInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 40),
        CostumText(
          text: "Fullname",
          textStyle: primaryTextStyle,
          fontSize: 16,
        ),
        const SizedBox(height: 12),
        const CostumFormField(
          icon: 'assets/icon_fullname.png',
          hintText: 'Leonardo Edwin',
        ),
      ],
    );
  }
}
