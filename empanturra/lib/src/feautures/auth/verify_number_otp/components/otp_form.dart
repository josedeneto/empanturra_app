import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class OtpForm extends StatelessWidget {
  const OtpForm({Key? key}) : super(key: key);
  final  String tokenOTD ='';
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 60,
          height: 60,
          child: TextFormField(
            autofocus: true,
            onSaved: (pin1) {},
             decoration:  InputDecoration(
              border: const UnderlineInputBorder(
                borderSide: BorderSide.none
              ),
              focusedBorder:  UnderlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.yellow.shade700)
              ),

            ),
            style: TextStyle( fontSize: 21, fontWeight: FontWeight.w700, color: Colors.yellow[700]),
            onChanged: ((value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            }),
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
        SizedBox(
          width: 60,
          height: 60,
          child: TextFormField(
             decoration:  InputDecoration(
              border:  const UnderlineInputBorder(
                borderSide: BorderSide.none
              ),
              focusedBorder:  UnderlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.yellow.shade700)
              ),

            ),
            style: TextStyle( fontSize: 21, fontWeight: FontWeight.w700, color: Colors.yellow[700]),
            onChanged: ((value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            }),
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
        SizedBox(
          width: 60,
          height: 60,
          child: TextFormField(
            decoration:  InputDecoration(
              border: const UnderlineInputBorder(
                borderSide: BorderSide.none
              ),
              focusedBorder:  UnderlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.yellow.shade700)
              ),
            ),
            style: TextStyle( fontSize: 21, fontWeight: FontWeight.w700, color: Colors.yellow[700]),
            onChanged: ((value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            }),
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
        SizedBox(
          width: 60,
          height: 60,
          child: TextFormField(
            decoration:  InputDecoration(
              border:  UnderlineInputBorder(
                borderSide: BorderSide.none
              ),
              focusedBorder:  UnderlineInputBorder(
                borderSide: BorderSide(width: 2, color: Colors.yellow.shade700)
              ),
            ),
            style: TextStyle( fontSize: 21, fontWeight: FontWeight.w700, color: Colors.yellow[700]),
            onChanged: ((value) {
              if (value.length == 1) {
                FocusScope.of(context).nextFocus();
              }
            }),
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
              FilteringTextInputFormatter.digitsOnly
            ],
          ),
        ),
      ],
    ));
  }
}
