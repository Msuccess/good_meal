import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:good_meal/core/services/auth/auth_service.dart';
import 'package:good_meal/core/services/util/alert_service.dart';
import 'package:good_meal/core/view_models/base_view_model.dart';

class LoginViewModel extends BaseViewModel {
  AuthService _auth;
  bool isSwitched = false;

  FirebaseUser _user;
  FirebaseUser get user => _user;

  LoginViewModel({
    @required AuthService auth,
  }) : _auth = auth;

  Future login(String email, String password, BuildContext context) async {
    setBusy(true);
    await _auth.signIn(email.trim(), password.trim()).then((user) {
      _user = user;
    }).catchError((error) {
      AlertService.showErrorToast(error.message);
      print("Error >>>${error.message}");
      setBusy(false);
    }).whenComplete(() => setBusy(false));
  }
}
