import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/src/presentation/screen/auth/signup_screen.dart';
import 'package:shoes_ecommerce_app/src/presentation/screen/feature/detail_chat.dart';
import 'package:shoes_ecommerce_app/src/presentation/screen/feature/main_screen.dart';

import 'src/presentation/screen/auth/login_screen.dart';
import 'src/presentation/screen/auth/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/main': (context) => const MainScreen(),
        '/detail-chat': (context) => const DetailChat()
      },
    );
  }
}
