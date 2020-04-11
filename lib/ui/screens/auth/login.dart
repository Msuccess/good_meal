import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:good_meal/core/constants/styles.dart';
import 'package:good_meal/core/services/abstract_services/auth_base_service.dart';
import 'package:good_meal/core/services/os_type.dart';
import 'package:good_meal/core/utils/validator.dart';
import 'package:good_meal/ui/dialogs/alert_dialog.dart';
import 'package:good_meal/ui/shared/widgets/backbuttom_widget.dart';
import 'package:good_meal/ui/shared/widgets/button_widget.dart';
import 'package:good_meal/ui/shared/widgets/customtextfield_widget.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String get _email => _emailController.text;
  String get _password => _passwordController.text;
  bool _submitted = false;
  bool _isLoading = false;
  bool isSwitched = false;

  void _submit() async {
    setState(() {
      _submitted = true;
      _isLoading = true;
    });
    try {
      final auth = Provider.of<AuthBase>(context);
      await auth.signIn(_email, _password);
      Navigator.of(context).pop();
    } catch (e) {
      PlatformAlertDialog(
        title: 'Sign in failed',
        content: e.toString(),
        defaultActionText: 'OK',
      ).show(context);
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
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
              child: BackButtonWidget(os: CheckOs().checkOsType()),
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
                      obscure: false,
                      inputController: _emailController,
                      validator: (value) => Validator.validateEmail(value),
                      ),
                  CustomTextField(
                      labelText: 'Password',
                      textInputType: TextInputType.visiblePassword,
                      obscure: true,
                      inputController: _passwordController,
                       validator: (value) => Validator.validatePassword(value),
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
                        onClick: () =>_submit(),
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
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(context, 'passwordreset');
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
