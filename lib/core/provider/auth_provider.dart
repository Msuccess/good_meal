import 'package:flutter/material.dart';

class AuthProvider extends InheritedWidget {

  // final AuthBase auth;
  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return false;
  }
}
