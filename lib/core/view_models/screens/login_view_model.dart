import 'package:flutter/cupertino.dart';
import 'package:good_meal/core/services/auth/auth_service.dart';
import 'package:good_meal/core/services/util/alert_service.dart';
import 'package:good_meal/core/view_models/base_view_model.dart';

class LoginViewModel extends BaseViewModel {
  AuthService _auth;
  bool isSwitched = false;

  LoginViewModel({
    @required AuthService auth,
  }) : _auth = auth;

  Future login(String email, String password, BuildContext context) async {
    setBusy(true);
    await _auth.signIn(email.trim(), password.trim()).then((res) {
      if (res != null) {
        Navigator.pushNamed(context, '/home', arguments: "arguments data");
      }
      return res;
    }).catchError((error) {
      AlertService.showErrorToast(error.message);
      print("Error >>>${error.message}");
      setBusy(false);
    }).whenComplete(() => setBusy(false));
  }
}
