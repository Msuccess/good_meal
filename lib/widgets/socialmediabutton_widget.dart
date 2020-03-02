import 'package:flutter/material.dart';
import 'package:good_meal/util/styles.dart';

class SocialMediaButton extends StatelessWidget {
  SocialMediaButton(
      {@required this.icon, this.onClick, this.buttonText, this.buttonColor});

  final IconData icon;
  final String buttonText;
  final Color buttonColor;
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            size: 18,
            color: buttonColor,
          ),
          SizedBox(
            width: 3.0,
          ),
          Text(
            buttonText,
            style: buttonSocialStyle,
          ),
        ],
      ),
      onPressed: () {
        onClick();
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0)
      ),
      borderSide: BorderSide(color: buttonColor),
      splashColor:buttonColor ,
    );
  }
}
