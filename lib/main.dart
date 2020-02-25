import 'package:flutter/material.dart';
import 'package:good_meal/pages/home/home.dart';
import 'package:good_meal/utils/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeData,
      home: HomeScreen()
    );
  }
}

