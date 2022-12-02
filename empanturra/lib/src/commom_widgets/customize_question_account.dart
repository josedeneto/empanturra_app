import 'package:flutter/material.dart';

import 'customize_text_button.dart';

class QuestionAccount extends StatelessWidget {
  const QuestionAccount({
    Key? key, required this.textQuestion,required this.onPressed, required this.textButton
  }) : super(key: key);
 final String textQuestion;
 final String textButton;
 final Function() onPressed;
 
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text(textQuestion),
        CustomizeTextButton(onPressed: onPressed, textButton: textButton)
      ],
    );
  }
}

