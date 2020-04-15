import 'package:flutter/material.dart';
import 'package:good_meal/core/services/auth/auth_service.dart';
import 'package:good_meal/core/view_models/base_view_model.dart';

class RegisterViewModel extends BaseViewModel{
 AuthService _auth;
  bool isSwitched= false;

  RegisterViewModel({
    @required AuthService auth,
  }) : _auth = auth;

Future sigUp(String email, String password,BuildContext context) async {
    setBusy(true);
    try {
      
      var result = await _auth.signUp(email.trim(), password.trim());
      setBusy(false);

      if(result != null){
        // mloginPassField.getText().toString().trim();
//  Navigator.pushNamed(context,'/login',arguments: "arguments data");
      }else{
        // await _dialogService.showDialog(
        //   title: 'Sign Up Failure',
        //   description: 'General sign up failure. Please try again later',
        // );
      }

    } catch (e) {
      setBusy(false);
      // _alert.showSnackBar(context, e.toString());

      return e.toString();
    }
  }

}