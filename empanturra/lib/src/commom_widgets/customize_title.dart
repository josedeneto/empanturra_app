
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    Key? key, required this.title
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment:Alignment.topLeft,
      margin: const EdgeInsets.only(bottom: 10),
      child:  Text(title,
            textAlign: TextAlign.left,
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: Colors.black,)),
    );
  }
}
