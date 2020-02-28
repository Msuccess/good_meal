import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:good_meal/auth/register.dart';
import 'package:good_meal/util/styles.dart';
import 'package:good_meal/widgets/logo_widget.dart';

class WelcomeScreen extends StatelessWidget {
  static String id = 'welcom_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/welcome.jpg'),
                repeat: ImageRepeat.noRepeat,
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.all(50.0),
                  decoration: BoxDecoration(
                    color: Color(0xDDF6F6F7),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      LogoWidget(),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'GOOD MEALS',
                        style: TextStyle(
                            fontFamily: 'PhosphateInline',
                            fontSize: 20.0,
                            color: Styles.primaryColor),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'Nutritionally balanced, '
                        'easy to cook recipes. '
                        'Quality fresh local ingredients',
                        textAlign: TextAlign.center,
                        style: Styles.h3,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      RaisedButton(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RegisterScreen(),
                            ),
                          );
                        },
                        textColor: Colors.black,
                        color: Styles.primaryColor,
                        child: Text(
                          "Create Account",
                          style: buttonText,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      RichText(
                        text: TextSpan(
                            text: 'Already have an account?  ',
                            style: alreadyHaveTxt,
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Login',
                                  style: textLoginLink,
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {})
                            ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
