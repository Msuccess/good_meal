import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:good_meal/core/constants/snackbar.dart';
import 'package:good_meal/core/constants/styles.dart';
import 'package:good_meal/core/constants/validator.dart';
import 'package:good_meal/core/services/auth/auth-service.dart';
import 'package:good_meal/core/services/util/os_type.dart';
import 'package:good_meal/ui/shared/widgets/backbuttom_widget.dart';
import 'package:good_meal/ui/shared/widgets/button_widget.dart';
import 'package:good_meal/ui/shared/widgets/customtextfield_widget.dart';
import 'package:good_meal/ui/shared/widgets/socialmediabutton_widget.dart';


class RegisterScreen extends StatefulWidget {
  static String id = 'register_page';
  final myController = TextEditingController();

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _registerFormKey = GlobalKey<FormState>();
  bool os;
  TextEditingController nameInputController;
  TextEditingController emailInputController;
  TextEditingController passwordInputController;

  void initState() {
    super.initState();
    os = CheckOs().checkOsType();
    nameInputController = new TextEditingController();
    emailInputController = new TextEditingController();
    passwordInputController = new TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        controller: ScrollController(keepScrollOffset: true),
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
                  child: BackButtonWidget(os: os),
                ),
              ),
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
                        CustomTextField(
                          labelText: 'Your Email',
                          textInputType: TextInputType.emailAddress,
                          inputController: emailInputController,
                          validator: (value) => Validator.validateEmail(value),
                          obscure: false,
                        ),
                        CustomTextField(
                          labelText: 'Password',
                          textInputType: TextInputType.visiblePassword,
                          inputController: passwordInputController,
                          validator: (value) =>
                              Validator.validatePassword(value),
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
                                  buttonText: 'Create Account',
                                  onClick: ()  {

                                    print(signUp(emailInputController.text, passwordInputController.text));
                                    if(signUp(emailInputController.text, passwordInputController.text) != null){
                                      print('Sign UP');
                                    }else{
                                      showAlert('Uable to register');
                                    }

                                  }

                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
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
                                    ),
                                    SocialMediaButton(
                                      icon: FontAwesomeIcons.google,
                                      buttonText: 'Google',
                                      buttonColor: Color(0xFFDD5144),
                                    ),
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
                              recognizer: TapGestureRecognizer()..onTap = () {},
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
  }
}

signUp(String email,String password ){
  var userId =  Auth.signUp(email, password).catchError((error){
    print(error);
    showAlert(error);
  });
  return userId;
}
