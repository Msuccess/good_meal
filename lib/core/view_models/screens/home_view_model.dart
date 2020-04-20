import 'package:flutter/material.dart';
import 'package:good_meal/core/view_models/base_view_model.dart';
import 'package:good_meal/ui/screens/home/pages/bookmark_screen.dart';
import 'package:good_meal/ui/screens/home/pages/layers_screen.dart';
import 'package:good_meal/ui/screens/home/pages/profile_screen.dart';
import 'package:good_meal/ui/screens/home/pages/search_screen.dart';

class HomeViewModel extends BaseViewModel {
  int _selectedIndex = 0;
  
  int get selectedIndex => _selectedIndex;
  set selectedIndex(value) =>_selectedIndex = value;
  

  Widget buildPage(_selectedIndex) {
    List<Widget> _widgetOptions = <Widget>[
      LayersScreen(),
      SearchScreen(),
      BookMarkScreen(),
      ProfileScreen()
    ];

    return _widgetOptions.elementAt(selectedIndex);
  }

}
