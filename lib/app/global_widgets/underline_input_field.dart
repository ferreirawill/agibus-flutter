import 'package:flutter/material.dart';

class UnderlineInputField extends StatelessWidget {
  final String hint;
  final String errorText;
  final bool obscure;
  final controller;
  final keyboard;
  final onChanged;
  final Color colors;
  final Widget suffix;


  UnderlineInputField(
      {Key key,
        @required this.hint,
        @required this.obscure,
        this.controller,
        this.keyboard,
        this.suffix,
        @required this.onChanged,
        @required this.errorText,
        @required this.colors});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: colors,
      obscureText: obscure,
      keyboardType: keyboard,
      onChanged: onChanged,
      style: TextStyle(color: colors),
      decoration: InputDecoration(
        errorText: controller ?  null : errorText,
        errorBorder: controller
            ? UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 2.0))
            :
            UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red, width: 2.0)),

        filled: false,
        hintText: hint,
        suffixIcon: suffix,
        hintStyle: TextStyle(color: colors),
        contentPadding:
        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        border: UnderlineInputBorder(
            borderSide: BorderSide(color: colors)
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: colors, width: 1.0),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: colors, width: 2.0),
        ),
      ),
    );
  }
}
