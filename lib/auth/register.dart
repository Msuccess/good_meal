import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:good_meal/util/styles.dart';
import 'package:good_meal/widgets/customtextfield_widget.dart';

class RegisterScreen extends StatefulWidget {
  static String id = 'register_page';
  final myController = TextEditingController();

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                  image: AssetImage('assets/images/login_bg.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios, color: Styles.primaryColor),
                onPressed: () {
                  Navigator.pop(context);
                },
                alignment: Alignment.topLeft,
                padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
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
                    children: <Widget>[
                      Text('Rememcer Password'),
                    ],
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: RaisedButton(
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
                      textColor: Colors.white,
                      color: Styles.primaryColor,
                      child: Text(
                        "Login",
                        style: buttonText,
                      ),
                    ),
                  ),
                  Text('F')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
