import 'package:flutter/cupertino.dart';
import 'package:good_meal/core/services/auth/auth_service.dart';
import 'package:good_meal/core/view_models/base_view_model.dart';

class LoginViewModel extends BaseViewModel {
  AuthService _auth;
  bool isSwitched = false;

  LoginViewModel({
    @required AuthService auth,
  }) : _auth = auth;

  Future login(
      String email, String password, BuildContext context) async {
    setBusy(true);
    try {
      
      var result = await _auth.signIn(email, password);
      setBusy(false);
      if (result != null || result == '') {}

    } catch (e) {
      setBusy(false);
    }
  }
}
