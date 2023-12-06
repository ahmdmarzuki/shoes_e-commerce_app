import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/theme.dart';

import 'widget/login_widget/login_button_widget.dart';
import 'widget/login_widget/login_email_input_widget.dart';
import 'widget/login_widget/login_footer_widget.dart';
import 'widget/login_widget/login_header_widget.dart';
import 'widget/login_widget/login_password_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                Login_Header(),
                Login_EmailInput(),
                Login_PasswordInput(),
                Login_Button(),
                Spacer(),
                Login_Footer()
              ],
            ),
          ),
        ));
  }
}
