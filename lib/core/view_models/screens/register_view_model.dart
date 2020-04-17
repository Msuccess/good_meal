import 'package:flutter/material.dart';
import 'package:good_meal/core/services/auth/auth_service.dart';
import 'package:good_meal/core/services/util/alert_service.dart';
import 'package:good_meal/core/view_models/base_view_model.dart';

class RegisterViewModel extends BaseViewModel {
  AuthService _auth;
  bool isSwitched = false;

  String _userId;
  String get userId => _userId;
  

  RegisterViewModel({
    @required AuthService auth,
  }) : _auth = auth;

  Future sigUp(String email, String password, BuildContext context) async {
    setBusy(true);
    await _auth.signUp(email.trim(), password.trim()).then((user) {
      _userId = user;
    }).catchError((error) {
      AlertService.showErrorToast(error.message);
      print("Error >>>${error.message}");
      setBusy(false);
    }).whenComplete(() => setBusy(false));
  }
}
