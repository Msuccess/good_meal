import 'package:flutter/material.dart';
import 'package:good_meal/core/constants/router.dart';
import 'package:good_meal/core/constants/styles.dart';
import 'package:good_meal/locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Styles.themeData,
      initialRoute: '/splash',
      onGenerateRoute: Router.generateRoute,
    );
  }
}
