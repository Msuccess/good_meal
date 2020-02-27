import 'package:flutter/material.dart';
import 'package:good_meal/auth/login.dart';
import 'package:good_meal/auth/password_reset.dart';
import 'package:good_meal/auth/register.dart';
import 'package:good_meal/home/home_screen.dart';
import 'package:good_meal/home/splash_screen.dart';
import 'package:good_meal/home/welcome_screen.dart';

class Routes {
  Routes();
  static  String splash = SplashScreen.id;
  static  String welcome = WelcomeScreen.id;
  static  String home = HomeScreen.id;
  static  String login   = LoginScreen.id;
  static  String passwordreset   = PasswordRest.id;
  static  String register   = RegisterScreen.id;

  static final routes = <String, WidgetBuilder>{
    splash: (BuildContext context) => SplashScreen(),
    welcome: (BuildContext context) => WelcomeScreen(),
    home: (BuildContext context) => HomeScreen(),
    login: (BuildContext context) => LoginScreen(),
    passwordreset: (BuildContext context) => PasswordRest(),
    register: (BuildContext context) => RegisterScreen()
  };
}