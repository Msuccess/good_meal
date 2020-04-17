import 'package:flutter/material.dart';
import 'package:good_meal/core/constants/styles.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({@required this.buttonText, this.onClick,this.busy});
  final String buttonText;
  final Function onClick;
  final busy;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(18.0),
      ),
      onPressed: busy ? null : () => onClick(),
      textColor: Colors.white,
      color: Styles.primaryColor,
      child: Text(
        buttonText,
        style: buttonTextStyle,
      ),
    );
  }
}
