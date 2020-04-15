import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:good_meal/core/constants/styles.dart';

class BackButtonWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Platform.isIOS  ? Icons.arrow_back_ios : FontAwesomeIcons.arrowLeft,
        color: Styles.defaultColor,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
      alignment: Alignment.topLeft,
      padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
      iconSize: 20,
    );
  }
}
