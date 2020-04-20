import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const logoText = TextStyle(
    fontSize: 20.0,
    fontFamily: 'Montserrat-Bold',
    fontStyle: FontStyle.normal,
    //    fontWeight: FontWeight.w300,
    color: Colors.white);
const h7 = TextStyle(
    fontFamily: 'OpenSans-Bold',
    fontStyle: FontStyle.normal,
    height: 1.4,
    fontSize: 12.0);
const textLoginLink = TextStyle(
    fontFamily: 'OpenSans-Bold',
    fontSize: 10.0,
    fontStyle: FontStyle.normal,
    color: Color(0xFF0F1518));

const buttonTextStyle = TextStyle(
    fontFamily: 'OpenSans-Regular',
    fontSize: 10.0,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    color: Colors.white);

const buttonSocialStyle = TextStyle(
    fontFamily: 'OpenSans-Regular',
    fontSize: 10.0,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    color: Colors.black);

TextStyle alreadyHaveTxt = TextStyle(
    fontFamily: 'OpenSans-Bold',
    fontSize: 8.0,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    color: Styles.darkColor);

const welcomeTxt = TextStyle(
  fontFamily: 'OpenSans-Regular',
  fontSize: 20.0,
  fontStyle: FontStyle.normal,
  color: Color(0xFFD49E15),
  fontWeight: FontWeight.bold,
);

TextStyle forgetPasswordText = TextStyle(
  fontSize: 10.0,
  fontFamily: 'OpenSans-Regular',
  fontWeight: FontWeight.w400,
  color: Styles.brandColor,
);

const inputLabel = TextStyle(
  fontFamily: 'OpenSans-Bold',
  fontSize: 12.0,
  fontStyle: FontStyle.normal,
  color: Color(0xFF0F1518),
);

const headerStyle = TextStyle(
  fontFamily: 'OpenSans-Bold',
  fontSize: 12.0,
  fontStyle: FontStyle.normal,
  color: Color(0xFFD49E15),
);

const titleStyle = TextStyle(
  fontFamily: 'OpenSans-Bold',
  fontSize: 12.0,
  fontStyle: FontStyle.normal,
  color: Color(0xFF0F1518),
);

class Styles {
  Styles();

  static var themeData = ThemeData(
      primaryColor: primaryColor,
      accentColor: secondaryColor,
      hintColor: primaryColor);
  static var primaryColor = Color(0xFFD49E15);
  static var secondaryColor = Color(0xFFDAB14A);
  static var brandColor = Color(0xFFCDCDCD);
  static var defaultColor = Colors.white;
  static var darkColor = Color(0xFF0F1518);
  static const inactiveColor = Color(0xFFCDCDCD);

  static TextStyle h1 = TextStyle(
      fontFamily: 'OpenSans-Regular',
      fontSize: 30.0,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold);

  static TextStyle h2 = TextStyle(
      fontFamily: 'OpenSans-Regular',
      fontSize: 20.0,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      color: Styles.primaryColor);

  static TextStyle h3 = TextStyle(
      fontFamily: 'OpenSans-Regular',
      fontSize: 15.0,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.normal);

  static TextStyle h4 = TextStyle(
    fontFamily: 'OpenSans-Light',
    fontSize: 15.0,
    fontStyle: FontStyle.normal,
  );

  static TextStyle h6 = TextStyle(
      fontFamily: 'OpenSans-Bold',
      fontSize: 8.0,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      color: Styles.darkColor);
}
