import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/src/presentation/screen/feature/chat_screen.dart';
import 'package:shoes_ecommerce_app/src/presentation/screen/feature/favorite_screen.dart';
import 'package:shoes_ecommerce_app/src/presentation/screen/feature/home_screen.dart';
import 'package:shoes_ecommerce_app/src/presentation/screen/feature/profile_screen.dart';
import 'package:shoes_ecommerce_app/src/utils/costum_text.dart';
import 'package:shoes_ecommerce_app/theme.dart';

import 'widget/cart_button_widget.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget body() {
      switch (currentIndex) {
        case 0:
          return const HomeScreen();

        case 1:
          return const ChatScreen();

        case 2:
          return const FavoriteScreen();

        case 3:
          return const ProfileScreen();

        default:
      }

      return const HomeScreen();
    }

    return Scaffold(
        backgroundColor: backgroundColor1,
        floatingActionButton: const CartButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: currentIndex == 0
                ? backgroundColor1
                : currentIndex == 1
                    ? backgroundColor3
                    : backgroundColor1,
          ),
          width: double.infinity,
          child: BottomAppBar(
            shape: const CircularNotchedRectangle(),
            notchMargin: 18,
            clipBehavior: Clip.antiAlias,
            child: BottomNavigationBar(
              backgroundColor: backgroundColor4,
              type: BottomNavigationBarType.fixed,
              currentIndex: currentIndex,
              onTap: (value) {
                setState(
                  () {
                    currentIndex = value;
                  },
                );
              },
              items: [
                BottomNavigationBarItem(
                    icon: Container(
                      margin: const EdgeInsets.only(top: 20, bottom: 10),
                      child: Image.asset(
                        'assets/icon_home.png',
                        width: 24,
                        color: currentIndex == 0
                            ? primaryColor
                            : const Color(0xFF808191),
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      margin:
                          const EdgeInsets.only(top: 20, bottom: 10, right: 60),
                      child: Image.asset(
                        'assets/icon_chat.png',
                        width: 24,
                        color: currentIndex == 1
                            ? primaryColor
                            : const Color(0xFF808191),
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      margin:
                          const EdgeInsets.only(top: 20, bottom: 10, left: 60),
                      child: Image.asset(
                        'assets/icon_favorite.png',
                        width: 24,
                        color: currentIndex == 2
                            ? primaryColor
                            : const Color(0xFF808191),
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: const EdgeInsets.only(top: 20, bottom: 10),
                      child: Image.asset(
                        'assets/icon_profile.png',
                        width: 24,
                        color: currentIndex == 3
                            ? primaryColor
                            : const Color(0xFF808191),
                      ),
                    ),
                    label: ''),
              ],
            ),
          ),
        ),
        body: body());
  }
}
