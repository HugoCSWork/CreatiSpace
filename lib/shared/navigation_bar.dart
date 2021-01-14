import 'package:flutter/material.dart';

BottomNavigationBar NavigationBar(int pos) {
  return BottomNavigationBar(currentIndex: pos, items: [
    BottomNavigationBarItem(
      icon: new Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: new Icon(Icons.search),
      label: 'Search',
    ),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
  ]);
}
