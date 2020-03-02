import 'package:flutter/material.dart';
import 'package:good_meal/auth/register.dart';
import 'package:good_meal/util/styles.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({@required this.buttonText, this.onClick});
  final String buttonText;
  final  Function onClick;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(18.0),
      ),
      onPressed: () {
        onClick();
      },
      textColor: Colors.white,
      color: Styles.primaryColor,
      child: Text(
        buttonText,
        style: buttonTextStyle,
      ),
    );
  }
}