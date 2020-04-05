import 'package:flutter/material.dart';
import 'package:good_meal/service/auth-service.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
@override
  void initState() {
    // TODO: implement initState
    super.initState();
   var user = Auth.getCurrentFirebaseUser();
   print(user);  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Home Works'),
    );
  }
}
