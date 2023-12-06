import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/src/presentation/screen/auth/widget/signup_widget/signup_email_input_widget.dart';
import 'package:shoes_ecommerce_app/src/presentation/screen/auth/widget/signup_widget/signup_footer_widget.dart';
import 'package:shoes_ecommerce_app/src/presentation/screen/auth/widget/signup_widget/signup_fullname_input_widget.dart';
import 'package:shoes_ecommerce_app/src/presentation/screen/auth/widget/signup_widget/signup_header_widget.dart';
import 'package:shoes_ecommerce_app/src/presentation/screen/auth/widget/signup_widget/signup_username_input_widget.dart';
import 'package:shoes_ecommerce_app/theme.dart';

import 'widget/signup_widget/signup_button_widget.dart';
import 'widget/signup_widget/signup_password_input_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: backgroundColor1,
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: defaultMargin, vertical: defaultMargin),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Signup_Header(),
                Signup_FullnameInput(),
                Signup_UsernameInput(),
                Signup_EmailInput(),
                Signup_PasswordInput(),
                Signup_Button(),
                Spacer(),
                Signup_Footer(),
              ],
            ),
          ),
        ));
  }
}
