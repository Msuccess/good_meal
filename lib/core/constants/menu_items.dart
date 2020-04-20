import 'package:flutter/material.dart';

class MenuItems {
  static const menItems = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.layers),
      title: Text('Home'),
    ),

    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      title: Text('Search'),
    ),

    BottomNavigationBarItem(
      icon: Icon(Icons.bookmark),
      title: Text('Bookmark'),
    ),
    
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      title: Text('Profile'),
    ),
  ];
}
