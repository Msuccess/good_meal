import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:good_meal/core/constants/router_path.dart';
import 'package:good_meal/core/constants/styles.dart';
import 'package:good_meal/core/view_models/screens/register_view_model.dart';
import 'package:good_meal/ui/screens/base_widget.dart';
import 'package:good_meal/ui/shared/widgets/backbuttom_widget.dart';
import 'package:good_meal/ui/shared/widgets/button_widget.dart';
import 'package:good_meal/ui/shared/widgets/customtextfield_widget.dart';
import 'package:good_meal/ui/shared/widgets/socialmediabutton_widget.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _registerFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String userId = '';

  @override
  Widget build(BuildContext context) {
    return BaseWidget<RegisterViewModel>(
      model: RegisterViewModel(
        auth: Provider.of(context),
      ),
      builder: (context, model, child) {
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
                        key: _registerFormKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Let\'s Start Making', style: welcomeTxt),
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
                              inputController: _emailController,
                              obscure: false,
                            ),
                            PasswordTextField(
                              labelText: 'Password',
                              textInputType: TextInputType.visiblePassword,
                              inputController: _passwordController,
                              obscure: true,
                            ),
                            SizedBox(
                              height: 25.0,
                            ),
                            Column(
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    width: 200.0,
                                    child: ButtonWidget(
                                        busy: model.busy,
                                        buttonText: 'Create Account',
                                        onClick: () async {
                                          if (!_registerFormKey.currentState
                                              .validate()) {
                                            return;
                                          }
                                          await model.sigUp(
                                              _emailController.text.trim(),
                                              _passwordController.text.trim(),
                                              context);

                                          if (model.userId != null) {
                                            Navigator.pushNamed(context, RoutePaths.Login);
                                          }
                                        }),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    width: 200.0,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        SocialMediaButton(
                                          icon: FontAwesomeIcons.facebookF,
                                          buttonText: 'Facebook',
                                          buttonColor: Color(0xFF3b5998),
                                          onClick: () {},
                                        ),
                                        SocialMediaButton(
                                            icon: FontAwesomeIcons.google,
                                            buttonText: 'Google',
                                            buttonColor: Color(0xFFDD5144),
                                            onClick: () {}),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: RichText(
                                text: TextSpan(
                                  text: 'Terms of Use and ',
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {},
                                  style: textLoginLink,
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: 'Privacy Policy',
                                      style: textLoginLink,
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {},
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
