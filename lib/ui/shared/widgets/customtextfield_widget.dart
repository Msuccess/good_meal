import 'package:flutter/material.dart';
import 'package:good_meal/core/constants/styles.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    @required this.labelText,
    this.textInputType,
    this.saveText,
    this.errorMessage,
    this.validator,
    this.inputController,
    this.obscure
  });

  final String labelText;
  final TextInputType textInputType;
  final Function saveText;
  final Function validator;
  final String errorMessage;
  final TextEditingController inputController;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      style: TextStyle(color: Color(0xFFD49E15)),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: inputLabel,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFD49E15),
            width: 1.5,
          ),
        ),
      ),
      validator: (value) => validator(),
      onSaved: (value) => saveText(value),
      obscureText: obscure,
      controller: inputController,
    );
  }
}
