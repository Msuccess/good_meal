import 'package:flutter/cupertino.dart';
import 'package:good_meal/core/enums/view_state.dart';
import 'package:good_meal/core/services/auth/auth-service.dart';
import 'package:good_meal/core/services/util/alert_service.dart';
import 'package:good_meal/locator.dart';

class LoginViewModel extends ChangeNotifier {
  final AuthSerivce _auth = locator<AuthSerivce>();
  final AlertService _alert = locator<AlertService>();

  ViewState _state = ViewState.Idle;

  ViewState get state => _state;

  void setState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }

  Future<String> login(
      String email, String password, BuildContext context) async {
        
    setState(ViewState.Busy);
    try {
      var success = await _auth.signIn(email, password);

      setState(ViewState.Idle);
      return success;
    } catch (e) {
      setState(ViewState.Idle);

      _alert.showSnackBar(context, e.toString());
      print(e.toString());

      return e.toString();
    }
  }
}
