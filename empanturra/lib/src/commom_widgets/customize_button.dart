import 'package:flutter/material.dart';

class CustomizeButton extends StatelessWidget {
  const CustomizeButton({
    Key? key,
    required this.text,
    this.primary = Colors.yellow,
    this.onPrimary = Colors.black,
    this.elevation = 0,
    required this.onPressed,
  }) : super(key: key);
  final String text;
  final Color primary;
  final Color onPrimary;
  final double elevation;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 20),
      height: 50,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: primary, elevation: elevation, onPrimary: onPrimary),
          onPressed: onPressed,
          child: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold),
          )),
    );
  }
}
