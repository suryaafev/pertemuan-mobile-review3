import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  TextEditingController Controller = TextEditingController();
  String? label, hint;

  CustomTextField({super.key, required this.Controller, this.label, this.hint});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    if (widget.label == "Password") {
      obscureText = true;
    }
    return SizedBox(
      width: 400,
      child: TextFormField(
        controller: widget.Controller,
        decoration: InputDecoration(
          hintText: widget.hint,
          labelText: widget.label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        obscureText: obscureText,
      ),
    );
  }
}
