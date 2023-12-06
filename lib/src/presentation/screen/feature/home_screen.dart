// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:shoes_ecommerce_app/src/presentation/screen/feature/widget/home_categories_widget.dart';
import 'package:shoes_ecommerce_app/src/presentation/screen/feature/widget/home_header.dart';

import 'widget/home_popular_products_widget.dart';
import 'widget/home_new_arrival_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            HomeHeader(),
            SizedBox(height: 30),
            Categories(),
            SizedBox(height: 30),
            PopularProducts(),
            SizedBox(height: 30),
            NewArrival()
          ],
        ),
      ),
    );
  }
}
