import 'package:flutter/material.dart';
import 'package:good_meal/utils/colors.dart';
import 'package:good_meal/utils/font_family.dart';

final ThemeData themeData = new ThemeData(
    fontFamily: FontFamily.roboto,
    brightness: Brightness.light,
//    primarySwatch: MaterialColor(primaryColor, primaryColor),
    primaryColor: primaryColor,
    primaryColorBrightness: Brightness.light,
    accentColor:secondaryColor,
    accentColorBrightness: Brightness.light
);
