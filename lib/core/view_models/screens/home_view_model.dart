import 'package:flutter/material.dart';
import 'package:good_meal/core/view_models/base_view_model.dart';
import 'package:good_meal/ui/screens/home/pages/bookmark_screen.dart';
import 'package:good_meal/ui/screens/home/pages/layers_screen.dart';
import 'package:good_meal/ui/screens/home/pages/profile_screen.dart';
import 'package:good_meal/ui/screens/home/pages/search_screen.dart';
import 'package:good_meal/ui/shared/widgets/animatedindex_widget_state.dart';

class HomeViewModel extends BaseViewModel {
  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  void onItemTap(index) {
    _selectedIndex = index;
    notifyListeners();
  }

  Widget buildPage(_selectedIndex) {
    return AnimatedIndexedStack(index: _selectedIndex, children: <Widget>[
      LayersScreen(),
      SearchScreen(),
      BookMarkScreen(),
      ProfileScreen()
    ]);
  }
}
