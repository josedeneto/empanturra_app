import 'package:flutter/material.dart';

class BackButton extends StatelessWidget {
  const BackButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).pop();
      },
      child: const Icon(Icons.arrow_back, color: Colors.black,),
    );
  }
}