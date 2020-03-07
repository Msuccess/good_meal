import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:good_meal/auth/confirm_screen.dart';
import 'package:good_meal/auth/password_reset.dart';
import 'package:good_meal/service/os_type.dart';
import 'package:good_meal/util/styles.dart';
import 'package:good_meal/widgets/backbuttom_widget.dart';
import 'package:good_meal/widgets/button_widget.dart';
import 'package:good_meal/widgets/customtextfield_widget.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isSwitched = false;
  bool os;

  @override
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
              child: BackButtonWidget(os: os),
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
                  Text('Welcome Back to', style: welcomeTxt),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'GOOD MEALS',
                    style: TextStyle(
                        fontFamily: 'PhosphateInline',
                        fontSize: 25.0,
                        color: Styles.primaryColor),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  CustomTextField(
                    labelText: 'Your Email',
                    textInputType: TextInputType.emailAddress,
                  ),
                  CustomTextField(
                    labelText: 'Password',
                    textInputType: TextInputType.visiblePassword,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Remember Password',
                        style: textLoginLink,
                      ),
                      Switch(
                          value: isSwitched,
                          onChanged: (value) {
                            setState(() {
                              isSwitched = value;
                              print({'isSwitched': isSwitched});
                            });
                          })
                    ],
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 200.0,
                      child: ButtonWidget(
                        buttonText: 'Login',
                        onClick: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ConfirmScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                        text: 'Forgot Password?  ',
                        style: alreadyHaveTxt,
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Click Here',
                            style: textLoginLink,
                            recognizer: TapGestureRecognizer()..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => PasswordRest(),
                                ),
                              );
                            },
                          )
                        ],
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
