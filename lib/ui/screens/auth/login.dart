import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:good_meal/core/constants/styles.dart';
import 'package:good_meal/core/view_models/screens/login_view_model.dart';
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
  
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<LoginViewModel>.value(
    value: LoginViewModel(
      auth: Provider.of(context)
    ),
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
                              inputController: _emailController),
                          CustomTextField(
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

                          model.busy 
                          ? CircularProgressIndicator() 
                          :Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              width: 200.0,
                              child: ButtonWidget(
                                buttonText: 'Login',
                                onClick: () async {
                                  var userId = await model.login(
                                      _emailController.text,
                                      _passwordController.text,
                                      context);
                                  if (userId != null) {
                                    Navigator.pushNamed(
                                            context, '/home');
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
                ],
              ),
            ),
          )
        ),
      ),
    );
  }
}
