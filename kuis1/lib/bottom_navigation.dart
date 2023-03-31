import 'package:flutter/material.dart';
import 'package:kuis1/pages/datadiri.dart';
import 'package:kuis1/pages/menu_segitiga.dart';
import 'package:kuis1/pages/menu_layanglayang.dart';

import 'const/color.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 0;
  static const List<Widget> _widgetOptions = [
    MenuSegitiga(),
    MenuLayangLayang(),
    DataDiri(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calculate,
              ),
              label: 'Segitiga'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calculate,
            ),
            label: 'Layang-Layang',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Data Diri',
          )
        ],
        onTap: (index) {
          setState(
            () {
              selectedIndex = index;
            },
          );
        },
        selectedItemColor: primary,
        unselectedItemColor: secondary,
        currentIndex: selectedIndex,
      ),
    );
  }
}