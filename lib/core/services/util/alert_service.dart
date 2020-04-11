import 'package:flutter/material.dart';

class AlertService {

  showSnackBar(BuildContext context,String message) {
    final snackbar = SnackBar(
      content: Text(message),
    );

    Scaffold.of(context).showSnackBar(snackbar);
  }
  
}

