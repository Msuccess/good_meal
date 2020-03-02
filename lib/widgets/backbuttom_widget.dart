import 'package:flutter/material.dart';
import 'package:good_meal/util/styles.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({@required this.os});
  final String os;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back_ios, color: Styles.primaryColor),
      onPressed: () {
        Navigator.pop(context);
      },
      alignment: Alignment.topLeft,
      padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
    );
  }
}