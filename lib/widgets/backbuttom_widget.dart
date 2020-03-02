import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:good_meal/util/styles.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({@required this.os});

  final bool os;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        os  ? FontAwesomeIcons.arrowLeft : Icons.arrow_back_ios,
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
