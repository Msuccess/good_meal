import 'package:flutter/material.dart';
import 'package:good_meal/core/constants/styles.dart';
import 'package:good_meal/core/services/abstract_services/auth_base_service.dart';
import 'package:good_meal/core/services/auth_service.dart';
import 'package:good_meal/ui/screens/auth/login.dart';
import 'package:good_meal/ui/screens/auth/password_reset.dart';
import 'package:good_meal/ui/screens/auth/register.dart';
import 'package:good_meal/ui/screens/home/home_screen.dart';
import 'package:good_meal/ui/screens/splash_screen.dart';
import 'package:good_meal/ui/screens/welcome_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<AuthBase>(
      builder: (context) => Auth(),
      child: MaterialApp(
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
      ),
    );
  }
}
