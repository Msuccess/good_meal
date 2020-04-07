import 'package:flutter/material.dart';

showAlert(String message) {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  _scaffoldKey.currentState.showSnackBar(
    SnackBar(
      content: Text(message),
    ),
  );
}
