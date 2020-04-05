import 'dart:async';
import 'package:flutter/material.dart';
import 'package:good_meal/util/styles.dart';
import 'package:good_meal/widgets/logo_widget.dart';


class SplashScreen extends StatefulWidget {
  static final String id = '/';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 3),
      () {
        Navigator.pushNamed(
          context,
          '/welcome',
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Styles.secondaryColor,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white30,
                            blurRadius: 0.0,
                            spreadRadius: 5.0,
                          )
                        ],
                        color: Styles.defaultColor,
                      ),
                      child: LogoWidget(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Text(
                      'GOOD MEALS',
                      style: logoText,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    CircularProgressIndicator(
                      valueColor:
                          new AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
