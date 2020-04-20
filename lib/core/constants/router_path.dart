import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:good_meal/ui/screens/auth/login.dart';
import 'package:good_meal/ui/screens/auth/password_reset.dart';
import 'package:good_meal/ui/screens/auth/register.dart';
import 'package:good_meal/ui/screens/home/home_screen.dart';
import 'package:good_meal/ui/screens/home/splash_screen.dart';
import 'package:good_meal/ui/screens/home/welcome_screen.dart';
import 'package:good_meal/ui/screens/onboarding/favorite_cuisines.dart';
import 'package:page_transition/page_transition.dart';

class RoutePaths {
  static const String Splash = 'splash';
  static const String Home = '/';
  static const String Login = 'login';
  static const PasswordReset = 'passwordreset';
  static const Register = 'register';
  static const Welcome = 'welcome';
  static const Cuisines = 'cuisines';
}

class RouterPath {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.Splash:
        return PageTransition(
          child: SplashScreen(),
          type: PageTransitionType.leftToRightWithFade,
        );
        break;

      case RoutePaths.Welcome:
        return PageTransition(
          child: WelcomeScreen(),
          type: PageTransitionType.leftToRightWithFade,
        );
        break;

      case RoutePaths.Login:
        return PageTransition(
          child: LoginScreen(),
          type: PageTransitionType.leftToRightWithFade,
        );
        break;

      case RoutePaths.PasswordReset:
        return PageTransition(
          child: PasswordReset(),
          type: PageTransitionType.leftToRightWithFade,
        );
        break;

      case RoutePaths.Register:
        return PageTransition(
          child: RegisterScreen(),
          type: PageTransitionType.leftToRightWithFade,
        );
        break;

      case RoutePaths.Home:
        var user = settings.arguments;
        return PageTransition(
          child: HomeScreen(),
          type: PageTransitionType.leftToRightWithFade,
        );

      case RoutePaths.Cuisines:
        return PageTransition(
          child: FavoriteCuisinesScreen(),
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
