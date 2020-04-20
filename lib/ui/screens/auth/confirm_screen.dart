import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:good_meal/core/constants/styles.dart';
import 'package:good_meal/ui/screens/auth/login.dart';
import 'package:good_meal/ui/shared/widgets/button_widget.dart';

class ConfirmScreen extends StatelessWidget {
  static final String id = 'confirm_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Icon(
                Icons.check_circle,
                color: Styles.primaryColor,
                size: 70.0,
              ),
            ),
            Text(
              'Well Done !',
              style: welcomeTxt,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'You have successfully changed'
              'your password Please use your new password when logging in.',
              style: TextStyle(
                fontFamily: 'OpenSans-Regular',
                color: Styles.brandColor,
                fontSize: 10.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20.0,
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 200.0,
                child: ButtonWidget(
                  buttonText: 'Log in now',
                  onClick: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
