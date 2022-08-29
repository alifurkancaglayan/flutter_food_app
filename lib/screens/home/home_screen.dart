import 'package:flutter/material.dart';
import 'package:flutter_food_app/components/bottom_nav_bar.dart';
import 'package:flutter_food_app/screens/home/components/body.dart';
import 'package:flutter_food_app/screens/home/components/app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: const BottomNavBar(),
      body: const Body(),
    );
  }
}
