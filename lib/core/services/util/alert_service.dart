import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';

class AlertService {
  static showErrorToast(String message) {
    showToast(
      message,
      position: ToastPosition.top,
      backgroundColor: Colors.redAccent,
      radius: 10.0,
      textStyle: TextStyle(fontSize: 18.0),
      animationBuilder: Miui10AnimBuilder(), 
      duration: Duration(seconds: 4),
    );
  }
}
