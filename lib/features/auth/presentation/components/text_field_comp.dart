
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final bool isObscure;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.isObscure = false,
  }): super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      // widget.controller tepadagi CustomTextField class dan kelayotgan malumotlardan kelayatogan malumotlarni olib beradi
      controller: widget.controller,
      style: TextStyle(color: Colors.black, fontSize: 18),
      decoration: InputDecoration(
        filled: true,
        border: UnderlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30)),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        hintText: widget.hintText,
      ),
      obscureText: widget.isObscure,
    );
  }
}
