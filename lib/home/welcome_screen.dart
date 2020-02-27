import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:good_meal/widgets/logo_widget.dart';

class WelcomeScreen extends StatelessWidget {
  static String id = 'welcom_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/welcome_bg.jpg'),
                  repeat: ImageRepeat.noRepeat,
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFF6F6F7),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        LogoWidget(),
                        Text('GOOD MEALS'),
                        Text('Nutritionally balanced, easy'),
                        Text('to cook recipes. Quality fresh'),
                        Text('local ingredients'),
//                    ButtonElement()
                      ],
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
