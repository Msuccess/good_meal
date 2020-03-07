import 'package:flutter/material.dart';
import 'package:good_meal/auth/register.dart';
import 'package:good_meal/service/os_type.dart';
import 'package:good_meal/util/styles.dart';
import 'package:good_meal/widgets/backbuttom_widget.dart';
import 'package:good_meal/widgets/button_widget.dart';
import 'package:good_meal/widgets/customtextfield_widget.dart';

class PasswordRest extends StatefulWidget {
  static String id = "password_reset";

  @override
  _PasswordRestState createState() => _PasswordRestState();
}

class _PasswordRestState extends State<PasswordRest> {
  bool isSwitched = false;
  bool os;

  void initState() {
    super.initState();
    os = CheckOs().checkOsType();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/stackbg.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: BackButtonWidget(
                os: os,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Forgot Password?', style: welcomeTxt),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'If you need help resetting you '
                    'password we can help you by sending you a link to reset it.',
                    style: forgetPasswordText,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  CustomTextField(
                    labelText: 'Your Email',
                    textInputType: TextInputType.emailAddress,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 200.0,
                      child: ButtonWidget(
                        buttonText: 'Send',
                        onClick: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
