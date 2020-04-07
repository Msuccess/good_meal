import 'package:flutter/material.dart';
import 'package:good_meal/core/constants/styles.dart';
import 'package:good_meal/ui/screens/auth/login.dart';
import 'package:good_meal/ui/screens/auth/password_reset.dart';
import 'package:good_meal/ui/screens/auth/register.dart';
import 'package:good_meal/ui/screens/home/home_screen.dart';
import 'package:good_meal/ui/screens/home/splash_screen.dart';
import 'package:good_meal/ui/screens/home/welcome_screen.dart';
import 'package:page_transition/page_transition.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Styles.themeData,
      initialRoute: '/splash',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/splash':
            return PageTransition(
              child: SplashScreen(),
              type: PageTransitionType.downToUp,
              settings: settings,
            );
            break;
          case '/welcome':
            return PageTransition(
              child: WelcomeScreen(),
              type: PageTransitionType.downToUp,
              settings: settings,
            );
            break;
          case '/home':
            return PageTransition(
              child: HomeScreen(),
              type: PageTransitionType.downToUp,
              settings: settings,
            );
            break;
          case '/login':
            return PageTransition(
              child: LoginScreen(),
              type: PageTransitionType.downToUp,
              settings: settings,
            );
            break;
          case '/passwordreset':
            return PageTransition(
              child: PasswordReset(),
              type: PageTransitionType.downToUp,
              settings: settings,
            );
            break;
          case '/register':
            return PageTransition(
              child: RegisterScreen(),
              type: PageTransitionType.downToUp,
              settings: settings,
            );
            break;
          case '/home':
            return PageTransition(
              child: HomeScreen(),
              type: PageTransitionType.downToUp,
              settings: settings,
            );
            break;
          default:
            return null;
        }
      },
    );
  }
}
