import 'package:flutter/material.dart';
import 'package:good_meal/pages/auth/login.dart';
import 'package:good_meal/pages/home/home.dart';
import 'package:good_meal/pages/home/splash.dart';

class Routes{
  Routes._();
  //static variables
  static const String splash = '/splash';
  static const String login = '/login';
  static const String home = '/home';

  static final routes = <String, WidgetBuilder>{
    splash: (BuildContext context) => SplashScreen(),
    login: (BuildContext context) => LoginScreen(),
    home: (BuildContext context) => HomeScreen(),
  };
}