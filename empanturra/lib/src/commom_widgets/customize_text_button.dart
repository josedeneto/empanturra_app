import 'package:flutter/material.dart';

class CustomizeTextButton extends StatelessWidget {
  const CustomizeTextButton({
    Key? key,
    required this.onPressed,
    required this.textButton,
  }) : super(key: key);

  final Function() onPressed;
  final String textButton;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed:onPressed,
        child:  Text(
          textButton,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
        ),
        );
  }
  }