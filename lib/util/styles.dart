import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const logoText = TextStyle(
    fontSize: 20.0,
    fontFamily: 'Montserrat-Bold',
    fontStyle: FontStyle.normal,
//    fontWeight: FontWeight.w300,
    color: Colors.white
);

class Styles{
  Styles();
  static var themeData = ThemeData(
      primaryColor: primaryColor,
      accentColor: secondaryColor
  );

  static var primaryColor = Color(0xFFD49E15);
  static var secondaryColor = Color(0xFFDAB14A);
  static  var brandColor = Color(0xFFCDCDCD);
  static var defaultColor = Colors.white;
  static var darkColor = Color(0xFF0F1518);



  static TextStyle h1 = TextStyle(
      fontFamily: 'Montserrat-Bold',
      fontSize: 30.0,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold
  );

  static TextStyle h2 = TextStyle(
      fontFamily: 'Montserrat-Bold',
      fontSize: 20.0,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
  );

  static TextStyle h3 = TextStyle(
      fontFamily: 'Montserrat-Light',
      fontSize: 15.0,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal
  );

  static TextStyle h4 = TextStyle(
      fontFamily: 'Montserrat-Bold',
      fontSize: 15.0,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold
  );

  static TextStyle h5 = TextStyle(
      fontFamily: 'Montserrat-Bold',
      fontSize: 10.0,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
  );

  static TextStyle h6 = TextStyle(
    fontFamily: 'Montserrat-Bold',
    fontSize: 8.0,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
  );
}