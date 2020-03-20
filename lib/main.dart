import 'package:flutter/material.dart';
import 'package:good_meal/util/styles.dart';
import 'package:page_transition/page_transition.dart';
import 'auth/login.dart';
import 'auth/password_reset.dart';
import 'auth/register.dart';
import 'home/home_screen.dart';
import 'home/splash_screen.dart';
import 'home/welcome_screen.dart';

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
