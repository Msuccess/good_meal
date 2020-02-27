import 'package:flutter/material.dart';
import 'package:good_meal/util/styles.dart';

class SplashScreen extends StatefulWidget {
  static final String id = 'splash_screen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
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
                      child: Image(
                        image: AssetImage('assets/logo.png'),
                        width: 50.0,
                        height: 50.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0),
                    ),
                    Text(
                      'GOOD MEALS',
                      style: logoText,
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
