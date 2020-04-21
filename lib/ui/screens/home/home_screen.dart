// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:good_meal/core/constants/menu_items.dart';
import 'package:good_meal/core/constants/styles.dart';
import 'package:good_meal/core/view_models/screens/home_view_model.dart';
import 'package:good_meal/ui/screens/base_widget.dart';

class HomeScreen extends StatefulWidget {
  // const HomeScreen({Key key, this.user}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseWidget<HomeViewModel>(
      model: HomeViewModel(),
      builder: (BuildContext context, HomeViewModel model, Widget child) {
        return Scaffold(
          body: model.buildPage(model.selectedIndex),
          bottomNavigationBar: ButtomTabBar(
            index: model.selectedIndex,
            onItemTap: (value) {
              model.onItemTap(value);
            },
          ),
        );
      },
    );
  }
}

class ButtomTabBar extends StatelessWidget {
  final int index;
  final Function onItemTap;
  ButtomTabBar({this.index, this.onItemTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: true,
      showUnselectedLabels: false,
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.shifting,
      unselectedIconTheme: IconThemeData(color: Styles.inactiveColor),
      items: MenuItems.menItems,
      currentIndex: index,
      selectedItemColor: Styles.primaryColor,
      elevation: 30.0,
      onTap: onItemTap,
    );
  }
}
