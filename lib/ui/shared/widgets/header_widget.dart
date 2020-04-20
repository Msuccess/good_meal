import 'package:flutter/material.dart';
import 'package:good_meal/core/constants/styles.dart';

class HeaderWidget extends StatelessWidget {
  final String headerText;
  HeaderWidget({this.headerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(),
            Text(
              headerText,
              style: headerStyle,
            ),
            Icon(
              Icons.more_horiz,
              color: Styles.primaryColor,
              size: 30,
            )
          ],
        ),
      ),
    );
  }
}
