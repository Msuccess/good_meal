import 'package:flutter/material.dart';
import 'package:good_meal/auth/login.dart';
import 'package:good_meal/auth/password_reset.dart';
import 'package:good_meal/auth/register.dart';
import 'package:good_meal/home/home_screen.dart';
import 'package:good_meal/home/splash_screen.dart';
import 'package:good_meal/home/welcome_screen.dart';

class Routes{
  Routes();

  static final routes = <String, WidgetBuilder>{
    SplashScreen.id: (BuildContext context) => SplashScreen(),
    WelcomeScreen.id: (BuildContext context) => WelcomeScreen(),
    HomeScreen.id:(BuildContext context) => HomeScreen(),
    LoginScreen.id: (BuildContext context) => LoginScreen(),
    PasswordRest.id: (BuildContext context) => PasswordRest(),
    RegisterScreen.id: (BuildContext context) => RegisterScreen()
  };
}