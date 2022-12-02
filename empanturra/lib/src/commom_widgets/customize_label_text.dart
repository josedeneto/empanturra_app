import 'package:flutter/material.dart';

class CustomLabelText extends StatelessWidget {
  const CustomLabelText({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, top: 12),
      child: Text(
        text.toUpperCase(),
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.grey.shade500,
        ),
      ),
    );
  }
}
