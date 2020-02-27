import 'package:flutter/material.dart';
import 'package:good_meal/routes.dart';
import 'package:good_meal/util/styles.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Styles.themeData,
      initialRoute: Routes.splash,
      routes: Routes.routes,
    );
  }
}
