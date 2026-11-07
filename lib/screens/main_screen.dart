import 'package:flutter/material.dart';
import 'package:final_project/screens/profile_screen.dart';
import 'package:final_project/screens/courses_screen.dart';
import 'package:final_project/screens/home_screen.dart';
import 'package:final_project/widget/bottom_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
    ProfileScreen(
      onCoursesTap: () {
      setState(() {
      selectedIndex = 1;
      });
      },
    ),
    CoursesScreen(),
    HomeScreen(),
    ];

    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}