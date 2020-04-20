import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:good_meal/core/constants/router_path.dart';
import 'package:good_meal/core/constants/styles.dart';
import 'package:good_meal/core/view_models/screens/login_view_model.dart';
import 'package:good_meal/ui/screens/base_widget.dart';
import 'package:good_meal/ui/shared/widgets/backbuttom_widget.dart';
import 'package:good_meal/ui/shared/widgets/button_widget.dart';
import 'package:good_meal/ui/shared/widgets/customtextfield_widget.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  FirebaseUser user;

  @override
  Widget build(BuildContext context) {
    return BaseWidget<LoginViewModel>(
      model: LoginViewModel(
        auth: Provider.of(context),
      ),
      builder: (BuildContext context, LoginViewModel model, Widget child) {
        return Scaffold(
          body: SingleChildScrollView(
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    flex: 1,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/register_bg.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: BackButtonWidget(),
                    ),
                  ),
                  model.busy ? LinearProgressIndicator() : Container(),
                  SizedBox(
                    height: 20.0,
                  ),
                  Flexible(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Form(
                        key: _loginFormKey,
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
                            EmailTextField(
                                labelText: 'Your Email',
                                textInputType: TextInputType.emailAddress,
                                obscure: false,
                                inputController: _emailController),
                            PasswordTextField(
                              labelText: 'Password',
                              textInputType: TextInputType.visiblePassword,
                              obscure: true,
                              inputController: _passwordController,
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
                                    value: model.isSwitched,
                                    onChanged: (value) {
                                      setState(() {
                                        model.isSwitched = value;
                                        print({'isSwitched': model.isSwitched});
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
                                  busy: model.busy,
                                  buttonText: 'Login',
                                  onClick: () async {
                                    if (!_loginFormKey.currentState
                                        .validate()) {
                                      return;
                                    }
                                    await model.login(_emailController.text,
                                        _passwordController.text, context);

                                    if (model.user != null) {
                                      Navigator.pushReplacementNamed(
                                        context,
                                        RoutePaths.Home,
                                        arguments: model.user,
                                      );
                                    }
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
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          Navigator.pushNamed(
                                              context, '/passwordreset');
                                        },
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
