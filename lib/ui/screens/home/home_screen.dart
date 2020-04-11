import 'package:flutter/material.dart';
import 'package:good_meal/core/models/user.dart';
import 'package:good_meal/core/services/abstract_services/auth_base_service.dart';
import 'package:good_meal/ui/screens/auth/login.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<AuthBase>(context);
    return StreamBuilder<dynamic>(
      stream: auth.onAuthStateChanged,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          User user = snapshot.data;

          if (user == null) {
            return LoginScreen();
          } else {
            return Scaffold(
              body: Center(
                child: Container(child: Text('Hello'),),
              ),
            );
          }
        }else{
          return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
        }
      },
    );
  }
}
