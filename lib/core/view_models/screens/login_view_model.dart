import 'package:flutter/cupertino.dart';
import 'package:good_meal/core/services/abstract_services/auth_base_service.dart';

class LoginViewModel extends ChangeNotifier {
  AuthSerivceBase _auth;
  bool _busy;

  LoginViewModel({
    @required AuthSerivceBase auth,
  }) : _auth = auth;

  bool get busy => _busy;

  void setBusy(bool value) {
    _busy = value;
    notifyListeners();
  }

  Future<String> login(
      String email, String password, BuildContext context) async {
    setBusy(true);
    try {
      var result = await _auth.signIn(email, password);
      setBusy(false);
      return result;
    } catch (e) {
      setBusy(false);
      // _alert.showSnackBar(context, e.toString());
      print(e.toString());

      return e.toString();
    }
  }
}
