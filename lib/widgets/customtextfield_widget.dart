
import 'package:flutter/material.dart';
import 'package:good_meal/util/styles.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({@required this.labelText, this.textInputType});
  final String labelText;
  final  TextInputType textInputType;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      style: TextStyle(color: Color(0xFFD49E15)),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: inputLabel,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFD49E15), width: 1.5),
        ),
      ),
    );
  }
}