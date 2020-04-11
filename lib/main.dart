import 'package:flutter/material.dart';
import 'package:good_meal/core/constants/router_path.dart';
import 'package:good_meal/core/constants/styles.dart';
import 'package:good_meal/provider_setup.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
      theme: Styles.themeData,
      initialRoute: '/splash',
      onGenerateRoute: RouterPath.generateRoute
      ),
    );
  }
}
