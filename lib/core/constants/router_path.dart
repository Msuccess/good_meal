import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:good_meal/ui/screens/auth/login.dart';
import 'package:good_meal/ui/screens/auth/password_reset.dart';
import 'package:good_meal/ui/screens/auth/register.dart';
import 'package:good_meal/ui/screens/home/home_screen.dart';
import 'package:good_meal/ui/screens/home/splash_screen.dart';
import 'package:good_meal/ui/screens/home/welcome_screen.dart';
import 'package:page_transition/page_transition.dart';

class RouterPath {
   static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/splash':
        return PageTransition(
          child: SplashScreen(),
          type: PageTransitionType.leftToRightWithFade,
        );
        break;
      case '/welcome':
        return PageTransition(
          child: WelcomeScreen(),
          type: PageTransitionType.leftToRightWithFade,
        );
        break;
      case '/home':
        return PageTransition(
          child: HomeScreen(),
          type: PageTransitionType.leftToRightWithFade,
        );
        break;
      case '/login':
        return PageTransition(
          child: LoginScreen(),
          type: PageTransitionType.leftToRightWithFade,
        );
        break;
      case '/passwordreset':
        return PageTransition(
          child: PasswordReset(),
          type: PageTransitionType.leftToRightWithFade,
        );
        break;
      case '/register':
        return PageTransition(
          child: RegisterScreen(),
          type: PageTransitionType.leftToRightWithFade,
        );
        break;
      case '/home':
        return PageTransition(
          child: HomeScreen(),
          type: PageTransitionType.leftToRightWithFade,
        );
        break;
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No Route define for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
