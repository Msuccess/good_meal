import 'package:flutter/material.dart';
import 'package:good_meal/core/constants/styles.dart';
import 'package:good_meal/core/constants/validator.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {@required this.labelText,
      this.textInputType,
      this.saveText,
      this.errorMessage,
      this.onValidator,
      this.inputController,
      this.obscure});

  final String labelText;
  final TextInputType textInputType;
  final Function saveText;
  final Function onValidator;
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
        errorText: errorMessage,
        labelStyle: inputLabel,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFD49E15),
            width: 1.5,
          ),
        ),
      ),
      validator: (value) => onValidator(value),
      onSaved: (value) => saveText(value),
      obscureText: obscure,
      controller: inputController,
    );
  }
}

class EmailTextField extends StatelessWidget {
  EmailTextField(
      {@required this.labelText,
      this.textInputType,
      this.saveText,
      this.errorMessage,
      this.inputController,
      this.obscure});

  final String labelText;
  final TextInputType textInputType;
  final Function saveText;
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
        errorText: errorMessage,
        errorStyle: TextStyle(color: Colors.redAccent),
        labelStyle: inputLabel,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFD49E15),
            width: 1.5,
          ),
        ),
      ),
      validator: (String value) {
        if (value.isEmpty || !Validator.validateEmail(value)) {
          return "Please enter a valid email";
        }
        return null;
      },
      obscureText: obscure,
      controller: inputController,
    );
  }
}

class PasswordTextField extends StatelessWidget {
  PasswordTextField(
      {@required this.labelText,
      this.textInputType,
      this.saveText,
      this.errorMessage,
      this.inputController,
      this.obscure});

  final String labelText;
  final TextInputType textInputType;
  final Function saveText;
  final String errorMessage;
  final TextEditingController inputController;
  final bool obscure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      style: TextStyle(color: Color(0xFFD49E15)),
      decoration: InputDecoration(
        errorStyle: TextStyle(color: Colors.redAccent),
        labelText: labelText,
        errorText: errorMessage,
        labelStyle: inputLabel,
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFD49E15),
            width: 1.5,
          ),
        ),
      ),
      validator: (String value) {
        if (value.isEmpty || !Validator.validatePassword(value)) {
          return "Password must be more than 6 charaters";
        }
        return null;
      },
      obscureText: obscure,
      controller: inputController,
    );
  }
}
