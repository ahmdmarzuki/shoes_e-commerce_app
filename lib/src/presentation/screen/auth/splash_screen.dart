import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3),
        () => Navigator.pushNamed(context, '/login'));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor1,
        body: Center(
          child: SizedBox(
            height: 130,
            width: 150,
            child: Image.asset('assets/image_splashscreen.png'),
          ),
        ));
  }
}
