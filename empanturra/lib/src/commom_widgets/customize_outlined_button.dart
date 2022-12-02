import 'package:flutter/material.dart';

class CustomOutlinedButton extends StatelessWidget {
  const CustomOutlinedButton({
    Key? key,
    required this.text,
    this.primary = Colors.black,
    this.elevation = 0,
    required this.onPressed,
    required this.icon,
    this.borderSideColor = Colors.black,
  }) : super(key: key);
  final String text;
  final Color primary;
  final double elevation;
  final IconData icon;
  final Color borderSideColor;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
              primary: primary,
              side: BorderSide(color: borderSideColor, width: 1)),
          onPressed: onPressed,
          icon: Icon(icon),
          label: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold),
          )),
    );
  }
}