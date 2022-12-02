import 'package:flutter/material.dart';

class CustomizeTextFiled extends StatefulWidget {
  const CustomizeTextFiled({
    Key? key,
    required this.hintText,
    this.isDense = true,
    this.hintColor = Colors.black87,
    this.obscureText = false,
    required this.textInputType,
    this.isSecret = false,
    this.isPasswordField = false,
    required this.suffixIcon,
    required this.controller,
    required this.validator,
  }) : super(key: key);

  final String hintText;
  final bool isDense;
  final Color hintColor;
  final bool obscureText;
  final TextInputType textInputType;
  final bool isSecret;
  final IconData suffixIcon;
  final bool isPasswordField;
  final String? Function(String? value) validator;
  final TextEditingController controller;
  @override
  State<CustomizeTextFiled> createState() => _CustomizeTextFiledState();
}

class _CustomizeTextFiledState extends State<CustomizeTextFiled> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: TextFormField(
        validator: widget.validator,
        controller: widget.controller,
        keyboardType: widget.textInputType,
        cursorColor: Colors.yellow[700],
        cursorRadius: const Radius.circular(10),
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        obscureText: widget.obscureText,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: const TextStyle(fontWeight: FontWeight.w600, color: Colors.black87),
          suffixIcon: Icon(
            widget.suffixIcon,
            color: Colors.black,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade300, style: BorderStyle.solid),
          ),
          border: const UnderlineInputBorder(
              borderSide: BorderSide(
            color: Colors.yellow,
          )),
          focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: Colors.blue, style: BorderStyle.solid)),
        ),
      ),
    );
  }
}
