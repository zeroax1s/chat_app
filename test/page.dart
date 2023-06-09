import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

int currentIndex = 0;
Widget navBarSection(Color color, Color btnColor, BuildContext context) {
  return CurvedNavigationBar(
      index: 0,
      items: [
        Icon(Icons.home, color: Colors.white),
        Icon(Icons.notifications, color: Colors.white),
        Icon(Icons.menu, color: Colors.white),
        Icon(Icons.history, color: Colors.white),
        Icon(Icons.person, color: Colors.white),
      ],
      color: color,
      buttonBackgroundColor: btnColor,
      animationCurve: Curves.easeInCubic,
      animationDuration: Duration(milliseconds: 600),
      onTap: (index) {
        if (currentIndex == 0) {}
      });
}
