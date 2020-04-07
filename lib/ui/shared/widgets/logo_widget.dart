import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('assets/images/logo.png'),
      width: 50.0,
      height: 50.0,
    );
  }
}