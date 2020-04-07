import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:good_meal/core/constants/styles.dart';
import 'package:good_meal/core/enums/view_state.dart';
import 'package:good_meal/locator.dart';
import 'package:good_meal/ui/shared/widgets/backbuttom_widget.dart';
import 'package:good_meal/ui/shared/widgets/button_widget.dart';
import 'package:good_meal/ui/shared/widgets/customtextfield_widget.dart';
import 'package:provider/provider.dart';

import 'package:good_meal/core/services/util/os_type.dart';
import 'package:good_meal/core/view_models/screens/login_view_model.dart';

class LoginScreen extends StatefulWidget {
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


  final _controllerPassword = new TextEditingController();
  final _controllerEmail = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LoginViewModel>(
      create: (context) => locator<LoginViewModel>(),
      child: Consumer<LoginViewModel>(
        builder: (context,model,child) =>
        Scaffold(
          body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints:  BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
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
                  Flexible(
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
                              inputController: _controllerEmail),
                          CustomTextField(
                            labelText: 'Password',
                            textInputType: TextInputType.visiblePassword,
                            obscure: true,
                            inputController: _controllerPassword,
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

                          model.state == ViewState.Busy 
                          ? CircularProgressIndicator() 
                          :Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              width: 200.0,
                              child: ButtonWidget(
                                buttonText: 'Login',
                                onClick: () async {
                                  var userId = await model.login(
                                      _controllerEmail.text,
                                      _controllerPassword.text,context);
                                  if (userId != null) {
                                    Navigator.pushNamed(context, '/home');
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
                                            context, 'passwordreset');
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
                ],
              ),
          ),
          ),
        ),
      ),
    );
  }
}
