import 'package:digital_gold/screens/profile_screen/profile_page.dart';
import 'package:digital_gold/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'explore_screen/explore_page.dart';
import 'home_screen/home_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final List<Widget> _screens = const [
    HomePage(),
    ExplorePage(),
    ProfilePage()
  ];

  int currentScreenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[currentScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        currentIndex: currentScreenIndex,
        backgroundColor: AppColors.bottomAppBarColor,
        selectedFontSize: 12.0,
        selectedItemColor: AppColors.primaryTextColor,
        unselectedItemColor: AppColors.secondaryTextColor,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.crop_original), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
        ],
        onTap: (value) {
          currentScreenIndex = value;
          setState(() {});
        },
      ),
    );
  }
}
